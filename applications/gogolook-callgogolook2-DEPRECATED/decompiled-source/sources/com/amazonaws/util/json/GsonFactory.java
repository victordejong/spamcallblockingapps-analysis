package com.amazonaws.util.json;

import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import p081h.p203i.p384e.p391y.C10174a;
import p081h.p203i.p384e.p391y.EnumC10176b;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/GsonFactory.class */
public final class GsonFactory implements AwsJsonFactory {

    /* renamed from: com.amazonaws.util.json.GsonFactory$1 */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/GsonFactory$1.class */
    public static /* synthetic */ class C14881 {
        public static final /* synthetic */ int[] $SwitchMap$com$google$gson$stream$JsonToken = new int[EnumC10176b.values().length];

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
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.NAME.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.BOOLEAN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.NUMBER.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.NULL.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.STRING.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$google$gson$stream$JsonToken[EnumC10176b.END_DOCUMENT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/GsonFactory$GsonReader.class */
    public static final class GsonReader implements AwsJsonReader {
        public final C10174a reader;

        public GsonReader(Reader reader) {
            this.reader = new C10174a(reader);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void beginObject() throws IOException {
            this.reader.mo13260b();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void close() throws IOException {
            this.reader.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void endObject() throws IOException {
            this.reader.mo13250g();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public boolean hasNext() throws IOException {
            return this.reader.mo13249h();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public boolean isContainer() throws IOException {
            EnumC10176b F = this.reader.mo13272F();
            return EnumC10176b.BEGIN_ARRAY.equals(F) || EnumC10176b.BEGIN_OBJECT.equals(F);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public String nextName() throws IOException {
            return this.reader.mo13242o();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public String nextString() throws IOException {
            EnumC10176b F = this.reader.mo13272F();
            if (EnumC10176b.NULL.equals(F)) {
                this.reader.mo13241p();
                return null;
            } else if (!EnumC10176b.BOOLEAN.equals(F)) {
                return this.reader.mo13274B();
            } else {
                return this.reader.mo13246k() ? "true" : "false";
            }
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public AwsJsonToken peek() throws IOException {
            try {
                return GsonFactory.convert(this.reader.mo13272F());
            } catch (EOFException e) {
                return null;
            }
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public void skipValue() throws IOException {
            this.reader.mo13266L();
        }
    }

    public static AwsJsonToken convert(EnumC10176b bVar) {
        if (bVar == null) {
            return null;
        }
        switch (C14881.$SwitchMap$com$google$gson$stream$JsonToken[bVar.ordinal()]) {
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
    public AwsJsonReader getJsonReader(Reader reader) {
        return new GsonReader(reader);
    }
}
