package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler.class */
public class ExternalTypeHandler {
    public final HashMap<String, Integer> _nameToPropertyIndex;
    public final ExtTypedProperty[] _properties;
    public final TokenBuffer[] _tokens;
    public final String[] _typeIds;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder.class */
    public static class Builder {
        public final ArrayList<ExtTypedProperty> _properties = new ArrayList<>();
        public final HashMap<String, Integer> _nameToPropertyIndex = new HashMap<>();

        public void addExternal(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            Integer valueOf = Integer.valueOf(this._properties.size());
            this._properties.add(new ExtTypedProperty(settableBeanProperty, typeDeserializer));
            this._nameToPropertyIndex.put(settableBeanProperty.getName(), valueOf);
            this._nameToPropertyIndex.put(typeDeserializer.getPropertyName(), valueOf);
        }

        public ExternalTypeHandler build() {
            ArrayList<ExtTypedProperty> arrayList = this._properties;
            return new ExternalTypeHandler((ExtTypedProperty[]) arrayList.toArray(new ExtTypedProperty[arrayList.size()]), this._nameToPropertyIndex, null, null);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$ExtTypedProperty.class */
    public static final class ExtTypedProperty {
        public final SettableBeanProperty _property;
        public final TypeDeserializer _typeDeserializer;
        public final String _typePropertyName;

        public ExtTypedProperty(SettableBeanProperty settableBeanProperty, TypeDeserializer typeDeserializer) {
            this._property = settableBeanProperty;
            this._typeDeserializer = typeDeserializer;
            this._typePropertyName = typeDeserializer.getPropertyName();
        }

        public String getDefaultTypeId() {
            Class<?> defaultImpl = this._typeDeserializer.getDefaultImpl();
            if (defaultImpl == null) {
                return null;
            }
            return this._typeDeserializer.getTypeIdResolver().idFromValueAndType(null, defaultImpl);
        }

        public SettableBeanProperty getProperty() {
            return this._property;
        }

        public String getTypePropertyName() {
            return this._typePropertyName;
        }

        public boolean hasDefaultType() {
            return this._typeDeserializer.getDefaultImpl() != null;
        }

        public boolean hasTypePropertyName(String str) {
            return str.equals(this._typePropertyName);
        }
    }

    public ExternalTypeHandler(ExternalTypeHandler externalTypeHandler) {
        this._properties = externalTypeHandler._properties;
        this._nameToPropertyIndex = externalTypeHandler._nameToPropertyIndex;
        int length = this._properties.length;
        this._typeIds = new String[length];
        this._tokens = new TokenBuffer[length];
    }

    public ExternalTypeHandler(ExtTypedProperty[] extTypedPropertyArr, HashMap<String, Integer> hashMap, String[] strArr, TokenBuffer[] tokenBufferArr) {
        this._properties = extTypedPropertyArr;
        this._nameToPropertyIndex = hashMap;
        this._typeIds = strArr;
        this._tokens = tokenBufferArr;
    }

    public final Object _deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, int i, String str) throws IOException {
        JsonParser asParser = this._tokens[i].asParser(jsonParser);
        if (asParser.nextToken() == JsonToken.VALUE_NULL) {
            return null;
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(str);
        tokenBuffer.copyCurrentStructure(asParser);
        tokenBuffer.writeEndArray();
        JsonParser asParser2 = tokenBuffer.asParser(jsonParser);
        asParser2.nextToken();
        return this._properties[i].getProperty().deserialize(asParser2, deserializationContext);
    }

    public final void _deserializeAndSet(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj, int i, String str) throws IOException {
        JsonParser asParser = this._tokens[i].asParser(jsonParser);
        if (asParser.nextToken() == JsonToken.VALUE_NULL) {
            this._properties[i].getProperty().set(obj, null);
            return;
        }
        TokenBuffer tokenBuffer = new TokenBuffer(jsonParser, deserializationContext);
        tokenBuffer.writeStartArray();
        tokenBuffer.writeString(str);
        tokenBuffer.copyCurrentStructure(asParser);
        tokenBuffer.writeEndArray();
        JsonParser asParser2 = tokenBuffer.asParser(jsonParser);
        asParser2.nextToken();
        this._properties[i].getProperty().deserializeAndSet(asParser2, deserializationContext, obj);
    }

    public Object complete(JsonParser jsonParser, DeserializationContext deserializationContext, PropertyValueBuffer propertyValueBuffer, PropertyBasedCreator propertyBasedCreator) throws IOException {
        int length = this._properties.length;
        Object[] objArr = new Object[length];
        for (int i = 0; i < length; i++) {
            String str = this._typeIds[i];
            if (str == null) {
                if (this._tokens[i] == null) {
                    continue;
                } else if (this._properties[i].hasDefaultType()) {
                    str = this._properties[i].getDefaultTypeId();
                } else {
                    throw deserializationContext.mappingException("Missing external type id property '%s'", this._properties[i].getTypePropertyName());
                }
            } else if (this._tokens[i] == null) {
                throw deserializationContext.mappingException("Missing property '%s' for external type id '%s'", this._properties[i].getProperty().getName(), this._properties[i].getTypePropertyName());
            }
            objArr[i] = _deserialize(jsonParser, deserializationContext, i, str);
        }
        for (int i2 = 0; i2 < length; i2++) {
            SettableBeanProperty property = this._properties[i2].getProperty();
            if (propertyBasedCreator.findCreatorProperty(property.getName()) != null) {
                propertyValueBuffer.assignParameter(property, objArr[i2]);
            }
        }
        Object build = propertyBasedCreator.build(deserializationContext, propertyValueBuffer);
        for (int i3 = 0; i3 < length; i3++) {
            SettableBeanProperty property2 = this._properties[i3].getProperty();
            if (propertyBasedCreator.findCreatorProperty(property2.getName()) == null) {
                property2.set(build, objArr[i3]);
            }
        }
        return build;
    }

    public Object complete(JsonParser jsonParser, DeserializationContext deserializationContext, Object obj) throws IOException {
        String str;
        int length = this._properties.length;
        for (int i = 0; i < length; i++) {
            String str2 = this._typeIds[i];
            if (str2 == null) {
                TokenBuffer tokenBuffer = this._tokens[i];
                if (tokenBuffer == null) {
                    continue;
                } else {
                    JsonToken firstToken = tokenBuffer.firstToken();
                    str = str2;
                    if (firstToken != null) {
                        str = str2;
                        if (firstToken.isScalarValue()) {
                            JsonParser asParser = tokenBuffer.asParser(jsonParser);
                            asParser.nextToken();
                            SettableBeanProperty property = this._properties[i].getProperty();
                            Object deserializeIfNatural = TypeDeserializer.deserializeIfNatural(asParser, deserializationContext, property.getType());
                            if (deserializeIfNatural != null) {
                                property.set(obj, deserializeIfNatural);
                            } else if (this._properties[i].hasDefaultType()) {
                                str = this._properties[i].getDefaultTypeId();
                            } else {
                                throw deserializationContext.mappingException("Missing external type id property '%s'", this._properties[i].getTypePropertyName());
                            }
                        }
                    }
                }
            } else if (this._tokens[i] != null) {
                str = str2;
            } else {
                throw deserializationContext.mappingException("Missing property '%s' for external type id '%s'", this._properties[i].getProperty().getName(), this._properties[i].getTypePropertyName());
            }
            _deserializeAndSet(jsonParser, deserializationContext, obj, i, str);
        }
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0050, code lost:
        if (r7._tokens[r0] != null) goto L_0x0053;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0053, code lost:
        r15 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0084, code lost:
        if (r7._typeIds[r0] != null) goto L_0x0053;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean handlePropertyValue(com.fasterxml.jackson.core.JsonParser r8, com.fasterxml.jackson.databind.DeserializationContext r9, java.lang.String r10, java.lang.Object r11) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r7
            java.util.HashMap<java.lang.String, java.lang.Integer> r0 = r0._nameToPropertyIndex
            r1 = r10
            java.lang.Object r0 = r0.get(r1)
            java.lang.Integer r0 = (java.lang.Integer) r0
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0017
            r0 = 0
            return r0
        L_0x0017:
            r0 = r12
            int r0 = r0.intValue()
            r14 = r0
            r0 = r7
            com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler$ExtTypedProperty[] r0 = r0._properties
            r1 = r14
            r0 = r0[r1]
            r1 = r10
            boolean r0 = r0.hasTypePropertyName(r1)
            if (r0 == 0) goto L_0x0059
            r0 = r7
            java.lang.String[] r0 = r0._typeIds
            r1 = r14
            r2 = r8
            java.lang.String r2 = r2.getText()
            r0[r1] = r2
            r0 = r8
            com.fasterxml.jackson.core.JsonParser r0 = r0.skipChildren()
            r0 = r13
            r15 = r0
            r0 = r11
            if (r0 == 0) goto L_0x008a
            r0 = r13
            r15 = r0
            r0 = r7
            com.fasterxml.jackson.databind.util.TokenBuffer[] r0 = r0._tokens
            r1 = r14
            r0 = r0[r1]
            if (r0 == 0) goto L_0x008a
        L_0x0053:
            r0 = 1
            r15 = r0
            goto L_0x008a
        L_0x0059:
            com.fasterxml.jackson.databind.util.TokenBuffer r0 = new com.fasterxml.jackson.databind.util.TokenBuffer
            r1 = r0
            r2 = r8
            r3 = r9
            r1.<init>(r2, r3)
            r10 = r0
            r0 = r10
            r1 = r8
            r0.copyCurrentStructure(r1)
            r0 = r7
            com.fasterxml.jackson.databind.util.TokenBuffer[] r0 = r0._tokens
            r1 = r14
            r2 = r10
            r0[r1] = r2
            r0 = r13
            r15 = r0
            r0 = r11
            if (r0 == 0) goto L_0x008a
            r0 = r13
            r15 = r0
            r0 = r7
            java.lang.String[] r0 = r0._typeIds
            r1 = r14
            r0 = r0[r1]
            if (r0 == 0) goto L_0x008a
            goto L_0x0053
        L_0x008a:
            r0 = r15
            if (r0 == 0) goto L_0x00b4
            r0 = r7
            java.lang.String[] r0 = r0._typeIds
            r12 = r0
            r0 = r12
            r1 = r14
            r0 = r0[r1]
            r10 = r0
            r0 = r12
            r1 = r14
            r2 = 0
            r0[r1] = r2
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r11
            r4 = r14
            r5 = r10
            r0._deserializeAndSet(r1, r2, r3, r4, r5)
            r0 = r7
            com.fasterxml.jackson.databind.util.TokenBuffer[] r0 = r0._tokens
            r1 = r14
            r2 = 0
            r0[r1] = r2
        L_0x00b4:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.handlePropertyValue(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, java.lang.String, java.lang.Object):boolean");
    }

    public boolean handleTypePropertyValue(JsonParser jsonParser, DeserializationContext deserializationContext, String str, Object obj) throws IOException {
        Integer num = this._nameToPropertyIndex.get(str);
        if (num == null) {
            return false;
        }
        int intValue = num.intValue();
        if (!this._properties[intValue].hasTypePropertyName(str)) {
            return false;
        }
        String text = jsonParser.getText();
        boolean z = false;
        if (obj != null) {
            z = false;
            if (this._tokens[intValue] != null) {
                z = true;
            }
        }
        if (z) {
            _deserializeAndSet(jsonParser, deserializationContext, obj, intValue, text);
            this._tokens[intValue] = null;
            return true;
        }
        this._typeIds[intValue] = text;
        return true;
    }

    public ExternalTypeHandler start() {
        return new ExternalTypeHandler(this);
    }
}
