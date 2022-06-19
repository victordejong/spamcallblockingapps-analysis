package com.google.api.client.json;

import com.google.api.client.p379a.C15214ag;
import com.google.api.client.p379a.C15228h;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15237l;
import com.google.api.client.p379a.C15240m;
import com.google.api.client.p379a.C15241n;
import com.google.common.base.C15391m;
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
        if (obj == null) {
            return;
        }
        Class<?> cls = obj.getClass();
        if (C15232j.m9241a(obj)) {
            writeNull();
        } else if (obj instanceof String) {
            writeString((String) obj);
        } else if (obj instanceof Number) {
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
                C15391m.m8943a(!Float.isInfinite(floatValue) && !Float.isNaN(floatValue));
                writeNumber(floatValue);
            } else if ((obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) {
                writeNumber(((Number) obj).intValue());
            } else {
                double doubleValue = ((Number) obj).doubleValue();
                C15391m.m8943a(!Double.isInfinite(doubleValue) && !Double.isNaN(doubleValue));
                writeNumber(doubleValue);
            }
        } else if (obj instanceof Boolean) {
            writeBoolean(((Boolean) obj).booleanValue());
        } else if (obj instanceof C15237l) {
            writeString(((C15237l) obj).m9228a());
        } else if (((obj instanceof Iterable) || cls.isArray()) && !(obj instanceof Map) && !(obj instanceof C15241n)) {
            writeStartArray();
            for (Object obj2 : C15214ag.m9267a(obj)) {
                serialize(z, obj2);
            }
            writeEndArray();
        } else if (cls.isEnum()) {
            String str = C15240m.m9222a((Enum<?>) obj).f55116c;
            if (str == null) {
                writeNull();
            } else {
                writeString(str);
            }
        } else {
            writeStartObject();
            boolean z3 = (obj instanceof Map) && !(obj instanceof C15241n);
            C15228h m9246a = z3 ? null : C15228h.m9246a(cls);
            for (Map.Entry<String, Object> entry : C15232j.m9235b(obj).entrySet()) {
                Object value = entry.getValue();
                if (value != null) {
                    String key = entry.getKey();
                    if (z3) {
                        z2 = z;
                    } else {
                        C15240m m9244a = m9246a.m9244a(key);
                        Field field = m9244a == null ? null : m9244a.f55115b;
                        z2 = (field == null || field.getAnnotation(JsonString.class) == null) ? false : true;
                    }
                    writeFieldName(key);
                    serialize(z2, value);
                }
            }
            writeEndObject();
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

    public abstract void writeNumber(double d) throws IOException;

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
