package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.IOException;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/EnumSetDeserializer.class */
public class EnumSetDeserializer extends StdDeserializer<EnumSet<?>> implements ContextualDeserializer {
    public final Class<Enum> _enumClass;
    public JsonDeserializer<Enum<?>> _enumDeserializer;
    public final JavaType _enumType;
    public final Boolean _unwrapSingle;

    /* JADX WARN: Multi-variable type inference failed */
    public EnumSetDeserializer(JavaType javaType, JsonDeserializer<?> jsonDeserializer) {
        super(EnumSet.class);
        this._enumType = javaType;
        this._enumClass = javaType.getRawClass();
        if (this._enumClass.isEnum()) {
            this._enumDeserializer = jsonDeserializer;
            this._unwrapSingle = null;
            return;
        }
        throw new IllegalArgumentException("Type " + javaType + " not Java Enum type");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public EnumSetDeserializer(EnumSetDeserializer enumSetDeserializer, JsonDeserializer<?> jsonDeserializer, Boolean bool) {
        super(EnumSet.class);
        this._enumType = enumSetDeserializer._enumType;
        this._enumClass = enumSetDeserializer._enumClass;
        this._enumDeserializer = jsonDeserializer;
        this._unwrapSingle = bool;
    }

    public final EnumSet constructSet() {
        return EnumSet.noneOf(this._enumClass);
    }

    @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
    public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
        Boolean findFormatFeature = findFormatFeature(deserializationContext, beanProperty, EnumSet.class, JsonFormat.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY);
        JsonDeserializer<Enum<?>> jsonDeserializer = this._enumDeserializer;
        return withResolved(jsonDeserializer == null ? deserializationContext.findContextualValueDeserializer(this._enumType, beanProperty) : deserializationContext.handleSecondaryContextualization(jsonDeserializer, beanProperty, this._enumType), findFormatFeature);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
        throw r6.mappingException(r4._enumClass);
     */
    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.EnumSet<?> deserialize(com.fasterxml.jackson.core.JsonParser r5, com.fasterxml.jackson.databind.DeserializationContext r6) throws java.io.IOException {
        /*
            r4 = this;
            r0 = r5
            boolean r0 = r0.isExpectedStartArrayToken()
            if (r0 != 0) goto L_0x000e
            r0 = r4
            r1 = r5
            r2 = r6
            java.util.EnumSet r0 = r0.handleNonArray(r1, r2)
            return r0
        L_0x000e:
            r0 = r4
            java.util.EnumSet r0 = r0.constructSet()
            r7 = r0
        L_0x0013:
            r0 = r5
            com.fasterxml.jackson.core.JsonToken r0 = r0.nextToken()     // Catch: Exception -> 0x0051
            r8 = r0
            r0 = r8
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.END_ARRAY     // Catch: Exception -> 0x0051
            if (r0 == r1) goto L_0x004f
            r0 = r8
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.VALUE_NULL     // Catch: Exception -> 0x0051
            if (r0 == r1) goto L_0x0046
            r0 = r4
            com.fasterxml.jackson.databind.JsonDeserializer<java.lang.Enum<?>> r0 = r0._enumDeserializer     // Catch: Exception -> 0x0051
            r1 = r5
            r2 = r6
            java.lang.Object r0 = r0.deserialize(r1, r2)     // Catch: Exception -> 0x0051
            java.lang.Enum r0 = (java.lang.Enum) r0     // Catch: Exception -> 0x0051
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0013
            r0 = r7
            r1 = r8
            boolean r0 = r0.add(r1)     // Catch: Exception -> 0x0051
            goto L_0x0013
        L_0x0046:
            r0 = r6
            r1 = r4
            java.lang.Class<java.lang.Enum> r1 = r1._enumClass     // Catch: Exception -> 0x0051
            com.fasterxml.jackson.databind.JsonMappingException r0 = r0.mappingException(r1)     // Catch: Exception -> 0x0051
            throw r0     // Catch: Exception -> 0x0051
        L_0x004f:
            r0 = r7
            return r0
        L_0x0051:
            r5 = move-exception
            r0 = r5
            r1 = r7
            r2 = r7
            int r2 = r2.size()
            com.fasterxml.jackson.databind.JsonMappingException r0 = com.fasterxml.jackson.databind.JsonMappingException.wrapWithPath(r0, r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.deser.std.EnumSetDeserializer.deserialize(com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext):java.util.EnumSet");
    }

    @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
    public Object deserializeWithType(JsonParser jsonParser, DeserializationContext deserializationContext, TypeDeserializer typeDeserializer) throws IOException, JsonProcessingException {
        return typeDeserializer.deserializeTypedFromArray(jsonParser, deserializationContext);
    }

    public EnumSet<?> handleNonArray(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Boolean bool = this._unwrapSingle;
        if (bool == Boolean.TRUE || (bool == null && deserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))) {
            EnumSet<?> constructSet = constructSet();
            if (!jsonParser.hasToken(JsonToken.VALUE_NULL)) {
                try {
                    Enum<?> deserialize = this._enumDeserializer.deserialize(jsonParser, deserializationContext);
                    if (deserialize != null) {
                        constructSet.add(deserialize);
                    }
                    return constructSet;
                } catch (Exception e) {
                    throw JsonMappingException.wrapWithPath(e, constructSet, constructSet.size());
                }
            } else {
                throw deserializationContext.mappingException(this._enumClass);
            }
        } else {
            throw deserializationContext.mappingException(EnumSet.class);
        }
    }

    @Override // com.fasterxml.jackson.databind.JsonDeserializer
    public boolean isCachable() {
        return this._enumType.getValueHandler() == null;
    }

    public EnumSetDeserializer withResolved(JsonDeserializer<?> jsonDeserializer, Boolean bool) {
        return (this._unwrapSingle == bool && this._enumDeserializer == jsonDeserializer) ? this : new EnumSetDeserializer(this, jsonDeserializer, bool);
    }
}
