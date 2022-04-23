package com.google.api.client.json;

import com.google.api.client.a.ag;
import com.google.api.client.a.h;
import com.google.api.client.a.j;
import com.google.api.client.a.l;
import com.google.api.client.a.n;
import com.google.common.base.m;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/JsonGenerator.class */
public abstract class JsonGenerator implements Closeable, Flushable {
    private void serialize(boolean z, Object obj) throws IOException {
        boolean z2;
        if (obj != null) {
            Class<?> cls = obj.getClass();
            if (j.a(obj)) {
                writeNull();
            } else if (obj instanceof String) {
                writeString((String) obj);
            } else {
                boolean z3 = true;
                boolean z4 = true;
                if (obj instanceof Number) {
                    if (z) {
                        writeString(obj.toString());
                    } else if (obj instanceof BigDecimal) {
                        writeNumber((BigDecimal) obj);
                    } else if (obj instanceof BigInteger) {
                        writeNumber((BigInteger) obj);
                    } else if (obj instanceof Long) {
                        writeNumber(((Long) obj).longValue());
                    } else if (obj instanceof Float) {
                        float floatValue = ((Number) obj).floatValue();
                        if (Float.isInfinite(floatValue) || Float.isNaN(floatValue)) {
                            z4 = false;
                        }
                        m.a(z4);
                        writeNumber(floatValue);
                    } else if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                        writeNumber(((Number) obj).intValue());
                    } else {
                        double doubleValue = ((Number) obj).doubleValue();
                        if (Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) {
                            z3 = false;
                        }
                        m.a(z3);
                        writeNumber(doubleValue);
                    }
                } else if (obj instanceof Boolean) {
                    writeBoolean(((Boolean) obj).booleanValue());
                } else if (obj instanceof l) {
                    writeString(((l) obj).a());
                } else if (((obj instanceof Iterable) || cls.isArray()) && !(obj instanceof Map) && !(obj instanceof n)) {
                    writeStartArray();
                    for (Object obj2 : ag.a(obj)) {
                        serialize(z, obj2);
                    }
                    writeEndArray();
                } else if (cls.isEnum()) {
                    String str = com.google.api.client.a.m.a((Enum<?>) obj).f31651c;
                    if (str == null) {
                        writeNull();
                    } else {
                        writeString(str);
                    }
                } else {
                    writeStartObject();
                    boolean z5 = (obj instanceof Map) && !(obj instanceof n);
                    h a2 = z5 ? null : h.a(cls);
                    for (Map.Entry<String, Object> entry : j.b(obj).entrySet()) {
                        Object value = entry.getValue();
                        if (value != null) {
                            String key = entry.getKey();
                            if (z5) {
                                z2 = z;
                            } else {
                                com.google.api.client.a.m a3 = a2.a(key);
                                Field field = a3 == null ? null : a3.f31650b;
                                z2 = (field == null || field.getAnnotation(JsonString.class) == null) ? false : true;
                            }
                            writeFieldName(key);
                            serialize(z2, value);
                        }
                    }
                    writeEndObject();
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public abstract void close() throws IOException;

    public void enablePrettyPrint() throws IOException {
    }

    public abstract void flush() throws IOException;

    public abstract JsonFactory getFactory();

    public final void serialize(Object obj) throws IOException {
        serialize(false, obj);
    }

    public abstract void writeBoolean(boolean z) throws IOException;

    public abstract void writeEndArray() throws IOException;

    public abstract void writeEndObject() throws IOException;

    public abstract void writeFieldName(String str) throws IOException;

    public abstract void writeNull() throws IOException;

    public abstract void writeNumber(double d2) throws IOException;

    public abstract void writeNumber(float f) throws IOException;

    public abstract void writeNumber(int i) throws IOException;

    public abstract void writeNumber(long j) throws IOException;

    public abstract void writeNumber(String str) throws IOException;

    public abstract void writeNumber(BigDecimal bigDecimal) throws IOException;

    public abstract void writeNumber(BigInteger bigInteger) throws IOException;

    public abstract void writeStartArray() throws IOException;

    public abstract void writeStartObject() throws IOException;

    public abstract void writeString(String str) throws IOException;
}
