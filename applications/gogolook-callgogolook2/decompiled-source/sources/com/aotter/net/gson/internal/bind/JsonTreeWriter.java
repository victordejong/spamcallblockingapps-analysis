package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.JsonArray;
import com.aotter.net.gson.JsonElement;
import com.aotter.net.gson.JsonNull;
import com.aotter.net.gson.JsonObject;
import com.aotter.net.gson.JsonPrimitive;
import com.aotter.net.gson.stream.JsonWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/JsonTreeWriter.class */
public final class JsonTreeWriter extends JsonWriter {
    public String pendingName;
    public static final Writer UNWRITABLE_WRITER = new Writer() { // from class: com.aotter.net.gson.internal.bind.JsonTreeWriter.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    public static final JsonPrimitive SENTINEL_CLOSED = new JsonPrimitive("closed");
    public final List<JsonElement> stack = new ArrayList();
    public JsonElement product = JsonNull.INSTANCE;

    public JsonTreeWriter() {
        super(UNWRITABLE_WRITER);
    }

    private JsonElement peek() {
        List<JsonElement> list = this.stack;
        return list.get(list.size() - 1);
    }

    private void put(JsonElement jsonElement) {
        if (this.pendingName != null) {
            if (!jsonElement.isJsonNull() || getSerializeNulls()) {
                ((JsonObject) peek()).add(this.pendingName, jsonElement);
            }
            this.pendingName = null;
        } else if (this.stack.isEmpty()) {
            this.product = jsonElement;
        } else {
            JsonElement peek = peek();
            if (peek instanceof JsonArray) {
                ((JsonArray) peek).add(jsonElement);
                return;
            }
            throw new IllegalStateException();
        }
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter beginArray() {
        JsonArray jsonArray = new JsonArray();
        put(jsonArray);
        this.stack.add(jsonArray);
        return this;
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter beginObject() {
        JsonObject jsonObject = new JsonObject();
        put(jsonObject);
        this.stack.add(jsonObject);
        return this;
    }

    @Override // com.aotter.net.gson.stream.JsonWriter, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.stack.isEmpty()) {
            this.stack.add(SENTINEL_CLOSED);
            return;
        }
        throw new IOException("Incomplete document");
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter endArray() {
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        } else if (peek() instanceof JsonArray) {
            List<JsonElement> list = this.stack;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter endObject() {
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        } else if (peek() instanceof JsonObject) {
            List<JsonElement> list = this.stack;
            list.remove(list.size() - 1);
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.aotter.net.gson.stream.JsonWriter, java.io.Flushable
    public void flush() {
    }

    public JsonElement get() {
        if (this.stack.isEmpty()) {
            return this.product;
        }
        throw new IllegalStateException("Expected one JSON element but was " + this.stack);
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter name(String str) {
        if (this.stack.isEmpty() || this.pendingName != null) {
            throw new IllegalStateException();
        } else if (peek() instanceof JsonObject) {
            this.pendingName = str;
            return this;
        } else {
            throw new IllegalStateException();
        }
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter nullValue() {
        put(JsonNull.INSTANCE);
        return this;
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter value(double d) {
        if (isLenient() || (!Double.isNaN(d) && !Double.isInfinite(d))) {
            put(new JsonPrimitive((Number) Double.valueOf(d)));
            return this;
        }
        throw new IllegalArgumentException("JSON forbids NaN and infinities: " + d);
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter value(long j) {
        put(new JsonPrimitive((Number) Long.valueOf(j)));
        return this;
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter value(Boolean bool) {
        if (bool == null) {
            return nullValue();
        }
        put(new JsonPrimitive(bool));
        return this;
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter value(Number number) {
        if (number == null) {
            return nullValue();
        }
        if (!isLenient()) {
            double doubleValue = number.doubleValue();
            if (Double.isNaN(doubleValue) || Double.isInfinite(doubleValue)) {
                throw new IllegalArgumentException("JSON forbids NaN and infinities: " + number);
            }
        }
        put(new JsonPrimitive(number));
        return this;
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter value(String str) {
        if (str == null) {
            return nullValue();
        }
        put(new JsonPrimitive(str));
        return this;
    }

    @Override // com.aotter.net.gson.stream.JsonWriter
    public JsonWriter value(boolean z) {
        put(new JsonPrimitive(Boolean.valueOf(z)));
        return this;
    }
}
