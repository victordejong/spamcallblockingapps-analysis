package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/bind/JsonTreeWriter.class */
public final class JsonTreeWriter extends JsonWriter {

    /* renamed from: t */
    private static final Writer f12070t = new Writer() { // from class: com.google.gson.internal.bind.JsonTreeWriter.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };

    /* renamed from: u */
    private static final JsonPrimitive f12071u = new JsonPrimitive("closed");

    /* renamed from: r */
    private String f12073r;

    /* renamed from: q */
    private final List<JsonElement> f12072q = new ArrayList();

    /* renamed from: s */
    private JsonElement f12074s = JsonNull.f11955a;

    public JsonTreeWriter() {
        super(f12070t);
    }

    /* renamed from: o0 */
    private JsonElement m8258o0() {
        List<JsonElement> list = this.f12072q;
        return list.get(list.size() - 1);
    }

    /* renamed from: u0 */
    private void m8257u0(JsonElement jsonElement) {
        if (this.f12073r != null) {
            if (!jsonElement.m8389g() || m8099l()) {
                ((JsonObject) m8258o0()).m8386k(this.f12073r, jsonElement);
            }
            this.f12073r = null;
        } else if (this.f12072q.isEmpty()) {
            this.f12074s = jsonElement;
        } else {
            JsonElement o0 = m8258o0();
            if (o0 instanceof JsonArray) {
                ((JsonArray) o0).m8395k(jsonElement);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: Y */
    public JsonWriter mo8112Y(long j) throws IOException {
        m8257u0(new JsonPrimitive(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: Z */
    public JsonWriter mo8111Z(Boolean bool) throws IOException {
        if (bool == null) {
            mo8094t();
            return this;
        }
        m8257u0(new JsonPrimitive(bool));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: b0 */
    public JsonWriter mo8108b0(Number number) throws IOException {
        if (number == null) {
            mo8094t();
            return this;
        }
        if (!m8097o()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        m8257u0(new JsonPrimitive(number));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f12072q.isEmpty()) {
            this.f12072q.add(f12071u);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: d */
    public JsonWriter mo8107d() throws IOException {
        JsonArray jsonArray = new JsonArray();
        m8257u0(jsonArray);
        this.f12072q.add(jsonArray);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: d0 */
    public JsonWriter mo8106d0(String str) throws IOException {
        if (str == null) {
            mo8094t();
            return this;
        }
        m8257u0(new JsonPrimitive(str));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: e */
    public JsonWriter mo8105e() throws IOException {
        JsonObject jsonObject = new JsonObject();
        m8257u0(jsonObject);
        this.f12072q.add(jsonObject);
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: e0 */
    public JsonWriter mo8104e0(boolean z) throws IOException {
        m8257u0(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.gson.stream.JsonWriter, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: i */
    public JsonWriter mo8102i() throws IOException {
        if (this.f12072q.isEmpty() || this.f12073r != null) {
            throw new IllegalStateException();
        } else if (m8258o0() instanceof JsonArray) {
            List<JsonElement> list = this.f12072q;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: j0 */
    public JsonElement m8259j0() {
        if (this.f12072q.isEmpty()) {
            return this.f12074s;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.f12072q);
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: k */
    public JsonWriter mo8100k() throws IOException {
        if (this.f12072q.isEmpty() || this.f12073r != null) {
            throw new IllegalStateException();
        } else if (m8258o0() instanceof JsonObject) {
            List<JsonElement> list = this.f12072q;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: p */
    public JsonWriter mo8096p(String str) throws IOException {
        if (this.f12072q.isEmpty() || this.f12073r != null) {
            throw new IllegalStateException();
        } else if (m8258o0() instanceof JsonObject) {
            this.f12073r = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.google.gson.stream.JsonWriter
    /* renamed from: t */
    public JsonWriter mo8094t() throws IOException {
        m8257u0(JsonNull.f11955a);
        return this;
    }
}
