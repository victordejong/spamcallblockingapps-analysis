package com.google.gson.internal.bind;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonNull;
import com.google.gson.JsonObject;
import com.google.gson.JsonPrimitive;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.json.internal.JsonReaderKt;
import org.apache.commons.lang3.d;
/* loaded from: classes4-dex2jar.jar:com/google/gson/internal/bind/JsonTreeReader.class */
public final class JsonTreeReader extends JsonReader {
    private static final Reader UNREADABLE_READER = new Reader() { // from class: com.google.gson.internal.bind.JsonTreeReader.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object SENTINEL_CLOSED = new Object();
    private Object[] stack = new Object[32];
    private int stackSize = 0;
    private String[] pathNames = new String[32];
    private int[] pathIndices = new int[32];

    public JsonTreeReader(JsonElement jsonElement) {
        super(UNREADABLE_READER);
        push(jsonElement);
    }

    private void expect(JsonToken jsonToken) throws IOException {
        if (peek() != jsonToken) {
            throw new IllegalStateException("Expected " + jsonToken + " but was " + peek() + locationString());
        }
    }

    private String locationString() {
        return " at path " + getPath();
    }

    private Object peekStack() {
        return this.stack[this.stackSize - 1];
    }

    private Object popStack() {
        Object[] objArr = this.stack;
        int i = this.stackSize - 1;
        this.stackSize = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    private void push(Object obj) {
        int i = this.stackSize;
        Object[] objArr = this.stack;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.stack = Arrays.copyOf(objArr, i2);
            this.pathIndices = Arrays.copyOf(this.pathIndices, i2);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, i2);
        }
        Object[] objArr2 = this.stack;
        int i3 = this.stackSize;
        this.stackSize = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void beginArray() throws IOException {
        expect(JsonToken.BEGIN_ARRAY);
        push(((JsonArray) peekStack()).iterator());
        this.pathIndices[this.stackSize - 1] = 0;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void beginObject() throws IOException {
        expect(JsonToken.BEGIN_OBJECT);
        push(((JsonObject) peekStack()).entrySet().iterator());
    }

    @Override // com.google.gson.stream.JsonReader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.stack = new Object[]{SENTINEL_CLOSED};
        this.stackSize = 1;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void endArray() throws IOException {
        expect(JsonToken.END_ARRAY);
        popStack();
        popStack();
        int i = this.stackSize;
        if (i > 0) {
            int[] iArr = this.pathIndices;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final void endObject() throws IOException {
        expect(JsonToken.END_OBJECT);
        popStack();
        popStack();
        int i = this.stackSize;
        if (i > 0) {
            int[] iArr = this.pathIndices;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String getPath() {
        int i;
        StringBuilder sb = new StringBuilder(d.f39169b);
        int i2 = 0;
        while (i2 < this.stackSize) {
            Object[] objArr = this.stack;
            if (objArr[i2] instanceof JsonArray) {
                int i3 = i2 + 1;
                i = i3;
                if (objArr[i3] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.pathIndices[i3]);
                    sb.append(']');
                    i = i3;
                }
            } else {
                i = i2;
                if (objArr[i2] instanceof JsonObject) {
                    int i4 = i2 + 1;
                    i = i4;
                    if (objArr[i4] instanceof Iterator) {
                        sb.append('.');
                        String[] strArr = this.pathNames;
                        i = i4;
                        if (strArr[i4] != null) {
                            sb.append(strArr[i4]);
                            i = i4;
                        }
                    }
                }
            }
            i2 = i + 1;
        }
        return sb.toString();
    }

    @Override // com.google.gson.stream.JsonReader
    public final boolean hasNext() throws IOException {
        JsonToken peek = peek();
        return (peek == JsonToken.END_OBJECT || peek == JsonToken.END_ARRAY) ? false : true;
    }

    @Override // com.google.gson.stream.JsonReader
    public final boolean nextBoolean() throws IOException {
        expect(JsonToken.BOOLEAN);
        boolean asBoolean = ((JsonPrimitive) popStack()).getAsBoolean();
        int i = this.stackSize;
        if (i > 0) {
            int[] iArr = this.pathIndices;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return asBoolean;
    }

    @Override // com.google.gson.stream.JsonReader
    public final double nextDouble() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            double asDouble = ((JsonPrimitive) peekStack()).getAsDouble();
            if (isLenient() || (!Double.isNaN(asDouble) && !Double.isInfinite(asDouble))) {
                popStack();
                int i = this.stackSize;
                if (i > 0) {
                    int[] iArr = this.pathIndices;
                    int i2 = i - 1;
                    iArr[i2] = iArr[i2] + 1;
                }
                return asDouble;
            }
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(asDouble)));
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + peek + locationString());
    }

    @Override // com.google.gson.stream.JsonReader
    public final int nextInt() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            int asInt = ((JsonPrimitive) peekStack()).getAsInt();
            popStack();
            int i = this.stackSize;
            if (i > 0) {
                int[] iArr = this.pathIndices;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return asInt;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + peek + locationString());
    }

    @Override // com.google.gson.stream.JsonReader
    public final long nextLong() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.NUMBER || peek == JsonToken.STRING) {
            long asLong = ((JsonPrimitive) peekStack()).getAsLong();
            popStack();
            int i = this.stackSize;
            if (i > 0) {
                int[] iArr = this.pathIndices;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return asLong;
        }
        throw new IllegalStateException("Expected " + JsonToken.NUMBER + " but was " + peek + locationString());
    }

    @Override // com.google.gson.stream.JsonReader
    public final String nextName() throws IOException {
        expect(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) peekStack()).next();
        String str = (String) entry.getKey();
        this.pathNames[this.stackSize - 1] = str;
        push(entry.getValue());
        return str;
    }

    @Override // com.google.gson.stream.JsonReader
    public final void nextNull() throws IOException {
        expect(JsonToken.NULL);
        popStack();
        int i = this.stackSize;
        if (i > 0) {
            int[] iArr = this.pathIndices;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String nextString() throws IOException {
        JsonToken peek = peek();
        if (peek == JsonToken.STRING || peek == JsonToken.NUMBER) {
            String asString = ((JsonPrimitive) popStack()).getAsString();
            int i = this.stackSize;
            if (i > 0) {
                int[] iArr = this.pathIndices;
                int i2 = i - 1;
                iArr[i2] = iArr[i2] + 1;
            }
            return asString;
        }
        throw new IllegalStateException("Expected " + JsonToken.STRING + " but was " + peek + locationString());
    }

    @Override // com.google.gson.stream.JsonReader
    public final JsonToken peek() throws IOException {
        while (this.stackSize != 0) {
            Object peekStack = peekStack();
            if (peekStack instanceof Iterator) {
                boolean z = this.stack[this.stackSize - 2] instanceof JsonObject;
                Iterator it2 = (Iterator) peekStack;
                if (!it2.hasNext()) {
                    return z ? JsonToken.END_OBJECT : JsonToken.END_ARRAY;
                }
                if (z) {
                    return JsonToken.NAME;
                }
                push(it2.next());
            } else if (peekStack instanceof JsonObject) {
                return JsonToken.BEGIN_OBJECT;
            } else {
                if (peekStack instanceof JsonArray) {
                    return JsonToken.BEGIN_ARRAY;
                }
                if (peekStack instanceof JsonPrimitive) {
                    JsonPrimitive jsonPrimitive = (JsonPrimitive) peekStack;
                    if (jsonPrimitive.isString()) {
                        return JsonToken.STRING;
                    }
                    if (jsonPrimitive.isBoolean()) {
                        return JsonToken.BOOLEAN;
                    }
                    if (jsonPrimitive.isNumber()) {
                        return JsonToken.NUMBER;
                    }
                    throw new AssertionError();
                } else if (peekStack instanceof JsonNull) {
                    return JsonToken.NULL;
                } else {
                    if (peekStack == SENTINEL_CLOSED) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
            }
        }
        return JsonToken.END_DOCUMENT;
    }

    public final void promoteNameToValue() throws IOException {
        expect(JsonToken.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) peekStack()).next();
        push(entry.getValue());
        push(new JsonPrimitive((String) entry.getKey()));
    }

    @Override // com.google.gson.stream.JsonReader
    public final void skipValue() throws IOException {
        if (peek() == JsonToken.NAME) {
            nextName();
            this.pathNames[this.stackSize - 2] = JsonReaderKt.NULL;
        } else {
            popStack();
            int i = this.stackSize;
            if (i > 0) {
                this.pathNames[i - 1] = JsonReaderKt.NULL;
            }
        }
        int i2 = this.stackSize;
        if (i2 > 0) {
            int[] iArr = this.pathIndices;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.google.gson.stream.JsonReader
    public final String toString() {
        return getClass().getSimpleName();
    }
}
