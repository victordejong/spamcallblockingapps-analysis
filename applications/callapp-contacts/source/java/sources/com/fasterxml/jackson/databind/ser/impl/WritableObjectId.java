package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/impl/WritableObjectId.class */
public final class WritableObjectId {
    public final ObjectIdGenerator<?> generator;

    /* renamed from: id */
    public Object f34293id;
    protected boolean idWritten = false;

    public WritableObjectId(ObjectIdGenerator<?> objectIdGenerator) {
        this.generator = objectIdGenerator;
    }

    public final Object generateId(Object obj) {
        if (this.f34293id == null) {
            this.f34293id = this.generator.generateId(obj);
        }
        return this.f34293id;
    }

    public final void writeAsField(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, ObjectIdWriter objectIdWriter) throws IOException {
        this.idWritten = true;
        if (jsonGenerator.canWriteObjectId()) {
            Object obj = this.f34293id;
            jsonGenerator.writeObjectId(obj == null ? null : String.valueOf(obj));
            return;
        }
        SerializableString serializableString = objectIdWriter.propertyName;
        if (serializableString == null) {
            return;
        }
        jsonGenerator.writeFieldName(serializableString);
        objectIdWriter.serializer.serialize(this.f34293id, jsonGenerator, serializerProvider);
    }

    public final boolean writeAsId(JsonGenerator jsonGenerator, SerializerProvider serializerProvider, ObjectIdWriter objectIdWriter) throws IOException {
        if (this.f34293id != null) {
            if (!this.idWritten && !objectIdWriter.alwaysAsId) {
                return false;
            }
            if (jsonGenerator.canWriteObjectId()) {
                jsonGenerator.writeObjectRef(String.valueOf(this.f34293id));
                return true;
            }
            objectIdWriter.serializer.serialize(this.f34293id, jsonGenerator, serializerProvider);
            return true;
        }
        return false;
    }
}
