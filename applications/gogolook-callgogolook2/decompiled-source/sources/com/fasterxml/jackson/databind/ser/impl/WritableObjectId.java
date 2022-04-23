package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/WritableObjectId.class */
public final class WritableObjectId {
    public final ObjectIdGenerator<?> generator;

    /* renamed from: id */
    public Object f3807id;
    public boolean idWritten = false;

    public WritableObjectId(ObjectIdGenerator<?> objectIdGenerator) {
        this.generator = objectIdGenerator;
    }

    public Object generateId(Object obj) {
        Object generateId = this.generator.generateId(obj);
        this.f3807id = generateId;
        return generateId;
    }

    public void writeAsField(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, ObjectIdWriter objectIdWriter) throws IOException {
        this.idWritten = true;
        if (jsonGenerator.canWriteObjectId()) {
            jsonGenerator.writeObjectId(String.valueOf(this.f3807id));
            return;
        }
        SerializableString serializableString = objectIdWriter.propertyName;
        if (serializableString != null) {
            jsonGenerator.writeFieldName(serializableString);
            objectIdWriter.serializer.serialize(this.f3807id, jsonGenerator, serializerProvider);
        }
    }

    public boolean writeAsId(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, ObjectIdWriter objectIdWriter) throws IOException {
        if (this.f3807id == null) {
            return false;
        }
        if (!this.idWritten && !objectIdWriter.alwaysAsId) {
            return false;
        }
        if (jsonGenerator.canWriteObjectId()) {
            jsonGenerator.writeObjectRef(String.valueOf(this.f3807id));
            return true;
        }
        objectIdWriter.serializer.serialize(this.f3807id, jsonGenerator, serializerProvider);
        return true;
    }
}
