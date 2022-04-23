package com.amazonaws.util.json;

import com.amazonaws.util.BinaryUtils;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.math.BigDecimal;
import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/GsonFactory.class */
final class GsonFactory implements AwsJsonFactory {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.util.json.GsonFactory$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/GsonFactory$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$google$gson$stream$JsonToken = iArr;
            try {
                iArr[JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.BOOLEAN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.NULL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[JsonToken.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/GsonFactory$GsonReader.class */
    static final class GsonReader implements AwsJsonReader {
        private final JsonReader reader;

        public GsonReader(Reader reader) {
            this.reader = new JsonReader(reader);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final void beginArray() throws IOException {
            this.reader.beginArray();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final void beginObject() throws IOException {
            this.reader.beginObject();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final void close() throws IOException {
            this.reader.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final void endArray() throws IOException {
            this.reader.endArray();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final void endObject() throws IOException {
            this.reader.endObject();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final boolean hasNext() throws IOException {
            return this.reader.hasNext();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final boolean isContainer() throws IOException {
            JsonToken peek = this.reader.peek();
            return JsonToken.BEGIN_ARRAY.equals(peek) || JsonToken.BEGIN_OBJECT.equals(peek);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final String nextName() throws IOException {
            return this.reader.nextName();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final String nextString() throws IOException {
            JsonToken peek = this.reader.peek();
            if (!JsonToken.NULL.equals(peek)) {
                return JsonToken.BOOLEAN.equals(peek) ? this.reader.nextBoolean() ? "true" : "false" : this.reader.nextString();
            }
            this.reader.nextNull();
            return null;
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final AwsJsonToken peek() throws IOException {
            try {
                return GsonFactory.convert(this.reader.peek());
            } catch (EOFException e) {
                return null;
            }
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final void skipValue() throws IOException {
            this.reader.skipValue();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/GsonFactory$GsonWriter.class */
    static final class GsonWriter implements AwsJsonWriter {
        private static final int NEGATIVE_THREE = -3;
        private final JsonWriter writer;

        public GsonWriter(Writer writer) {
            this.writer = new JsonWriter(writer);
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter beginArray() throws IOException {
            this.writer.beginArray();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter beginObject() throws IOException {
            this.writer.beginObject();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final void close() throws IOException {
            this.writer.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter endArray() throws IOException {
            this.writer.endArray();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter endObject() throws IOException {
            this.writer.endObject();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final void flush() throws IOException {
            this.writer.flush();
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter name(String str) throws IOException {
            this.writer.name(str);
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter value() throws IOException {
            this.writer.nullValue();
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter value(double d2) throws IOException {
            this.writer.value(d2);
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter value(long j) throws IOException {
            this.writer.value(j);
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter value(Number number) throws IOException {
            this.writer.value(number);
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter value(String str) throws IOException {
            this.writer.value(str);
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter value(ByteBuffer byteBuffer) throws IOException {
            byteBuffer.mark();
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.get(bArr, 0, remaining);
            byteBuffer.reset();
            this.writer.value(BinaryUtils.b(bArr));
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter value(Date date) throws IOException {
            this.writer.value(BigDecimal.valueOf(date.getTime()).scaleByPowerOfTen(-3));
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final AwsJsonWriter value(boolean z) throws IOException {
            this.writer.value(z);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AwsJsonToken convert(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$com$google$gson$stream$JsonToken[jsonToken.ordinal()]) {
            case 1:
                return AwsJsonToken.BEGIN_ARRAY;
            case 2:
                return AwsJsonToken.END_ARRAY;
            case 3:
                return AwsJsonToken.BEGIN_OBJECT;
            case 4:
                return AwsJsonToken.END_OBJECT;
            case 5:
                return AwsJsonToken.FIELD_NAME;
            case 6:
                return AwsJsonToken.VALUE_BOOLEAN;
            case 7:
                return AwsJsonToken.VALUE_NUMBER;
            case 8:
                return AwsJsonToken.VALUE_NULL;
            case 9:
                return AwsJsonToken.VALUE_STRING;
            case 10:
                return null;
            default:
                return AwsJsonToken.UNKNOWN;
        }
    }

    @Override // com.amazonaws.util.json.AwsJsonFactory
    public final AwsJsonReader getJsonReader(Reader reader) {
        return new GsonReader(reader);
    }

    @Override // com.amazonaws.util.json.AwsJsonFactory
    public final AwsJsonWriter getJsonWriter(Writer writer) {
        return new GsonWriter(writer);
    }
}
