package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.NullValueProvider;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import java.io.IOException;
import java.util.Collection;
import java.util.Objects;
@JacksonStdImpl
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer.class */
public final class StringCollectionDeserializer extends ContainerDeserializerBase<Collection<String>> implements ContextualDeserializer {
    private static final long serialVersionUID = 1;
    protected final JsonDeserializer<Object> _delegateDeserializer;
    protected final JsonDeserializer<String> _valueDeserializer;
    protected final ValueInstantiator _valueInstantiator;

    public StringCollectionDeserializer(JavaType javaType, JsonDeserializer<?> jsonDeserializer, ValueInstantiator valueInstantiator) {
        this(javaType, valueInstantiator, null, jsonDeserializer, jsonDeserializer, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected StringCollectionDeserializer(JavaType javaType, ValueInstantiator valueInstantiator, JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, NullValueProvider nullValueProvider, Boolean bool) {
        super(javaType, nullValueProvider, bool);
        this._valueDeserializer = jsonDeserializer2;
        this._valueInstantiator = valueInstantiator;
        this._delegateDeserializer = jsonDeserializer;
    }

    private Collection<String> deserializeUsingCustom(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection, JsonDeserializer<String> jsonDeserializer) throws IOException {
        String deserialize;
        while (true) {
            try {
                if (jsonParser.nextTextValue() == null) {
                    JsonToken currentToken = jsonParser.currentToken();
                    if (currentToken == JsonToken.END_ARRAY) {
                        return collection;
                    }
                    if (currentToken != JsonToken.VALUE_NULL) {
                        deserialize = jsonDeserializer.deserialize(jsonParser, deserializationContext);
                    } else if (!this._skipNullValues) {
                        deserialize = (String) this._nullProvider.getNullValue(deserializationContext);
                    }
                } else {
                    deserialize = jsonDeserializer.deserialize(jsonParser, deserializationContext);
                }
                collection.add(deserialize);
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, collection, collection.size());
            }
        }
    }

    private final Collection<String> handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection) throws IOException {
        String str;
        if (!(this._unwrapSingle == Boolean.TRUE || (this._unwrapSingle == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)))) {
            return jsonParser.hasToken(JsonToken.VALUE_STRING) ? _deserializeFromString(jsonParser, deserializationContext) : (Collection) deserializationContext.handleUnexpectedToken(this._containerType, jsonParser);
        }
        JsonDeserializer<String> jsonDeserializer = this._valueDeserializer;
        if (jsonParser.currentToken() != JsonToken.VALUE_NULL) {
            try {
                str = jsonDeserializer == null ? _parseString(jsonParser, deserializationContext) : jsonDeserializer.deserialize(jsonParser, deserializationContext);
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, collection, collection.size());
            }
        } else if (this._skipNullValues) {
            return collection;
        } else {
            str = (String) this._nullProvider.getNullValue(deserializationContext);
        }
        collection.add(str);
        return collection;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.fasterxml.jackson.databind.JsonDeserializer<?> createContextual(com.fasterxml.jackson.databind.DeserializationContext r7, com.fasterxml.jackson.databind.BeanProperty r8) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r6 = this;
            r0 = r6
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r0._valueInstantiator
            r9 = r0
            r0 = 0
            r10 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0049
            r0 = r9
            com.fasterxml.jackson.databind.introspect.AnnotatedWithParams r0 = r0.getArrayDelegateCreator()
            if (r0 == 0) goto L_0x0029
            r0 = r6
            r1 = r7
            r2 = r6
            com.fasterxml.jackson.databind.deser.ValueInstantiator r2 = r2._valueInstantiator
            r3 = r7
            com.fasterxml.jackson.databind.DeserializationConfig r3 = r3.getConfig()
            com.fasterxml.jackson.databind.JavaType r2 = r2.getArrayDelegateType(r3)
            r3 = r8
            com.fasterxml.jackson.databind.JsonDeserializer r0 = r0.findDeserializer(r1, r2, r3)
            r11 = r0
            goto L_0x004c
        L_0x0029:
            r0 = r6
            com.fasterxml.jackson.databind.deser.ValueInstantiator r0 = r0._valueInstantiator
            com.fasterxml.jackson.databind.introspect.AnnotatedWithParams r0 = r0.getDelegateCreator()
            if (r0 == 0) goto L_0x0049
            r0 = r6
            r1 = r7
            r2 = r6
            com.fasterxml.jackson.databind.deser.ValueInstantiator r2 = r2._valueInstantiator
            r3 = r7
            com.fasterxml.jackson.databind.DeserializationConfig r3 = r3.getConfig()
            com.fasterxml.jackson.databind.JavaType r2 = r2.getDelegateType(r3)
            r3 = r8
            com.fasterxml.jackson.databind.JsonDeserializer r0 = r0.findDeserializer(r1, r2, r3)
            r11 = r0
            goto L_0x004c
        L_0x0049:
            r0 = 0
            r11 = r0
        L_0x004c:
            r0 = r6
            com.fasterxml.jackson.databind.JsonDeserializer<java.lang.String> r0 = r0._valueDeserializer
            r9 = r0
            r0 = r6
            com.fasterxml.jackson.databind.JavaType r0 = r0._containerType
            com.fasterxml.jackson.databind.JavaType r0 = r0.getContentType()
            r12 = r0
            r0 = r9
            if (r0 != 0) goto L_0x007a
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            com.fasterxml.jackson.databind.JsonDeserializer r0 = r0.findConvertingContentDeserializer(r1, r2, r3)
            r13 = r0
            r0 = r13
            r9 = r0
            r0 = r13
            if (r0 != 0) goto L_0x0083
            r0 = r7
            r1 = r12
            r2 = r8
            com.fasterxml.jackson.databind.JsonDeserializer r0 = r0.findContextualValueDeserializer(r1, r2)
            r9 = r0
            goto L_0x0083
        L_0x007a:
            r0 = r7
            r1 = r9
            r2 = r8
            r3 = r12
            com.fasterxml.jackson.databind.JsonDeserializer r0 = r0.handleSecondaryContextualization(r1, r2, r3)
            r9 = r0
        L_0x0083:
            r0 = r6
            r1 = r7
            r2 = r8
            java.lang.Class<java.util.Collection> r3 = java.util.Collection.class
            com.fasterxml.jackson.annotation.JsonFormat$Feature r4 = com.fasterxml.jackson.annotation.JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY
            java.lang.Boolean r0 = r0.findFormatFeature(r1, r2, r3, r4)
            r13 = r0
            r0 = r6
            r1 = r7
            r2 = r8
            r3 = r9
            com.fasterxml.jackson.databind.deser.NullValueProvider r0 = r0.findContentNullProvider(r1, r2, r3)
            r7 = r0
            r0 = r6
            r1 = r9
            boolean r0 = r0.isDefaultDeserializer(r1)
            if (r0 == 0) goto L_0x00a6
            r0 = r10
            r9 = r0
            goto L_0x00a6
        L_0x00a6:
            r0 = r6
            r1 = r11
            r2 = r9
            r3 = r7
            r4 = r13
            com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer r0 = r0.withResolved(r1, r2, r3, r4)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer.createContextual(com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonDeserializer");
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final Collection<String> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        JsonDeserializer<Object> jsonDeserializer = this._delegateDeserializer;
        return jsonDeserializer != null ? (Collection) this._valueInstantiator.createUsingDelegate(deserializationContext, jsonDeserializer.deserialize(jsonParser, deserializationContext)) : deserialize(jsonParser, deserializationContext, (Collection) this._valueInstantiator.createUsingDefault(deserializationContext));
    }

    public final Collection<String> deserialize(JsonParser jsonParser, DeserializationContext deserializationContext, Collection<String> collection) throws IOException {
        String _parseString;
        if (!jsonParser.isExpectedStartArrayToken()) {
            return handleNonArray(jsonParser, deserializationContext, collection);
        }
        JsonDeserializer<String> jsonDeserializer = this._valueDeserializer;
        if (jsonDeserializer != null) {
            return deserializeUsingCustom(jsonParser, deserializationContext, collection, jsonDeserializer);
        }
        while (true) {
            try {
                String nextTextValue = jsonParser.nextTextValue();
                if (nextTextValue != null) {
                    collection.add(nextTextValue);
                } else {
                    JsonToken currentToken = jsonParser.currentToken();
                    if (currentToken == JsonToken.END_ARRAY) {
                        return collection;
                    }
                    if (currentToken != JsonToken.VALUE_NULL) {
                        _parseString = _parseString(jsonParser, deserializationContext);
                    } else if (!this._skipNullValues) {
                        _parseString = (String) this._nullProvider.getNullValue(deserializationContext);
                    }
                    collection.add(_parseString);
                }
            } catch (Exception e) {
                throw JsonMappingException.wrapWithPath(e, collection, collection.size());
            }
        }
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public final Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    @Override // com.fasterxml.jackson.databind.deser.std.ContainerDeserializerBase
    public final JsonDeserializer<Object> getContentDeserializer() {
        return this._valueDeserializer;
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
    public final ValueInstantiator getValueInstantiator() {
        return this._valueInstantiator;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final boolean isCachable() {
        return this._valueDeserializer == null && this._delegateDeserializer == null;
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public final LogicalType logicalType() {
        return LogicalType.Collection;
    }

    protected final StringCollectionDeserializer withResolved(JsonDeserializer<?> jsonDeserializer, JsonDeserializer<?> jsonDeserializer2, NullValueProvider nullValueProvider, Boolean bool) {
        return (Objects.equals(this._unwrapSingle, bool) && this._nullProvider == nullValueProvider && this._valueDeserializer == jsonDeserializer2 && this._delegateDeserializer == jsonDeserializer) ? this : new StringCollectionDeserializer(this._containerType, this._valueInstantiator, jsonDeserializer, jsonDeserializer2, nullValueProvider, bool);
    }
}
