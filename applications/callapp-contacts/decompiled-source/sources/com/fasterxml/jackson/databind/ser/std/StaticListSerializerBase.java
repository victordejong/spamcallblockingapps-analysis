package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/StaticListSerializerBase.class */
public abstract class StaticListSerializerBase<T extends Collection<?>> extends StdSerializer<T> implements ContextualSerializer {
    protected final Boolean _unwrapSingle;

    public StaticListSerializerBase(StaticListSerializerBase<?> staticListSerializerBase, Boolean bool) {
        super(staticListSerializerBase);
        this._unwrapSingle = bool;
    }

    public StaticListSerializerBase(Class<?> cls) {
        super(cls, false);
        this._unwrapSingle = null;
    }

    public abstract JsonSerializer<?> _withResolved(BeanProperty beanProperty, Boolean bool);

    protected abstract void acceptContentVisitor(JsonArrayFormatVisitor jsonArrayFormatVisitor) throws JsonMappingException;

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        JsonArrayFormatVisitor expectArrayFormat = jsonFormatVisitorWrapper.expectArrayFormat(javaType);
        if (expectArrayFormat != null) {
            acceptContentVisitor(expectArrayFormat);
        }
    }

    protected abstract JsonNode contentSchema();

    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085  */
    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.fasterxml.jackson.databind.JsonSerializer<?> createContextual(com.fasterxml.jackson.databind.SerializerProvider r8, com.fasterxml.jackson.databind.BeanProperty r9) throws com.fasterxml.jackson.databind.JsonMappingException {
        /*
            r7 = this;
            r0 = r9
            if (r0 == 0) goto L_0x002d
            r0 = r8
            com.fasterxml.jackson.databind.AnnotationIntrospector r0 = r0.getAnnotationIntrospector()
            r10 = r0
            r0 = r9
            com.fasterxml.jackson.databind.introspect.AnnotatedMember r0 = r0.getMember()
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L_0x002d
            r0 = r10
            r1 = r11
            java.lang.Object r0 = r0.findContentSerializer(r1)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x002d
            r0 = r8
            r1 = r11
            r2 = r10
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.serializerInstance(r1, r2)
            r11 = r0
            goto L_0x0030
        L_0x002d:
            r0 = 0
            r11 = r0
        L_0x0030:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r7
            java.lang.Class r3 = r3.handledType()
            com.fasterxml.jackson.annotation.JsonFormat$Value r0 = r0.findFormatOverrides(r1, r2, r3)
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L_0x004a
            r0 = r10
            com.fasterxml.jackson.annotation.JsonFormat$Feature r1 = com.fasterxml.jackson.annotation.JsonFormat.Feature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED
            java.lang.Boolean r0 = r0.getFeature(r1)
            r10 = r0
            goto L_0x004c
        L_0x004a:
            r0 = 0
            r10 = r0
        L_0x004c:
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = r11
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.findContextualConvertingSerializer(r1, r2, r3)
            r12 = r0
            r0 = r12
            r11 = r0
            r0 = r12
            if (r0 != 0) goto L_0x0068
            r0 = r8
            java.lang.Class<java.lang.String> r1 = java.lang.String.class
            r2 = r9
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0.findContentValueSerializer(r1, r2)
            r11 = r0
        L_0x0068:
            r0 = r7
            r1 = r11
            boolean r0 = r0.isDefaultSerializer(r1)
            if (r0 == 0) goto L_0x0085
            r0 = r10
            r1 = r7
            java.lang.Boolean r1 = r1._unwrapSingle
            boolean r0 = java.util.Objects.equals(r0, r1)
            if (r0 == 0) goto L_0x007e
            r0 = r7
            return r0
        L_0x007e:
            r0 = r7
            r1 = r9
            r2 = r10
            com.fasterxml.jackson.databind.JsonSerializer r0 = r0._withResolved(r1, r2)
            return r0
        L_0x0085:
            com.fasterxml.jackson.databind.ser.std.CollectionSerializer r0 = new com.fasterxml.jackson.databind.ser.std.CollectionSerializer
            r1 = r0
            r2 = r8
            java.lang.Class<java.lang.String> r3 = java.lang.String.class
            com.fasterxml.jackson.databind.JavaType r2 = r2.constructType(r3)
            r3 = 1
            r4 = 0
            r5 = r11
            r1.<init>(r2, r3, r4, r5)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.ser.std.StaticListSerializerBase.createContextual(com.fasterxml.jackson.databind.SerializerProvider, com.fasterxml.jackson.databind.BeanProperty):com.fasterxml.jackson.databind.JsonSerializer");
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode("array", true).set("items", contentSchema());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public /* bridge */ /* synthetic */ boolean isEmpty(SerializerProvider serializerProvider, Object obj) {
        return isEmpty(serializerProvider, (SerializerProvider) ((Collection) obj));
    }

    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        return t == null || t.size() == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public /* bridge */ /* synthetic */ void serializeWithType(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException {
        serializeWithType((StaticListSerializerBase<T>) ((Collection) obj), jsonGenerator, serializerProvider, typeSerializer);
    }

    public abstract void serializeWithType(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider, TypeSerializer typeSerializer) throws IOException;
}
