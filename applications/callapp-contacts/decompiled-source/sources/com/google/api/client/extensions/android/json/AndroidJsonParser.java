package com.google.api.client.extensions.android.json;

import android.util.JsonReader;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import com.google.api.client.json.JsonToken;
import com.google.common.base.m;
import java.io.EOFException;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.JsonReaderKt;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/extensions/android/json/AndroidJsonParser.class */
class AndroidJsonParser extends JsonParser {
    private List<String> currentNameStack = new ArrayList();
    private String currentText;
    private JsonToken currentToken;
    private final AndroidJsonFactory factory;
    private final JsonReader reader;

    /* renamed from: com.google.api.client.extensions.android.json.AndroidJsonParser$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/extensions/android/json/AndroidJsonParser$1.class */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$android$util$JsonToken;
        static final /* synthetic */ int[] $SwitchMap$com$google$api$client$json$JsonToken;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0090 -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0094 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0098 -> B:39:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009c -> B:55:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a0 -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a4 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a8 -> B:37:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ac -> B:53:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b0 -> B:20:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b4 -> B:41:0x0084). Please submit an issue!!! */
        static {
            int[] iArr = new int[android.util.JsonToken.values().length];
            $SwitchMap$android$util$JsonToken = iArr;
            try {
                iArr[android.util.JsonToken.BEGIN_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$android$util$JsonToken[android.util.JsonToken.END_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$android$util$JsonToken[android.util.JsonToken.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$android$util$JsonToken[android.util.JsonToken.END_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$android$util$JsonToken[android.util.JsonToken.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$android$util$JsonToken[android.util.JsonToken.NULL.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$android$util$JsonToken[android.util.JsonToken.STRING.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$android$util$JsonToken[android.util.JsonToken.NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$android$util$JsonToken[android.util.JsonToken.NAME.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            int[] iArr2 = new int[JsonToken.values().length];
            $SwitchMap$com$google$api$client$json$JsonToken = iArr2;
            try {
                iArr2[JsonToken.START_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$google$api$client$json$JsonToken[JsonToken.START_OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidJsonParser(AndroidJsonFactory androidJsonFactory, JsonReader jsonReader) {
        this.factory = androidJsonFactory;
        this.reader = jsonReader;
        jsonReader.setLenient(true);
    }

    private void checkNumber() {
        m.a(this.currentToken == JsonToken.VALUE_NUMBER_INT || this.currentToken == JsonToken.VALUE_NUMBER_FLOAT);
    }

    @Override // com.google.api.client.json.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.reader.close();
    }

    @Override // com.google.api.client.json.JsonParser
    public BigInteger getBigIntegerValue() {
        checkNumber();
        return new BigInteger(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public byte getByteValue() {
        checkNumber();
        return Byte.parseByte(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public String getCurrentName() {
        if (this.currentNameStack.isEmpty()) {
            return null;
        }
        List<String> list = this.currentNameStack;
        return list.get(list.size() - 1);
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken getCurrentToken() {
        return this.currentToken;
    }

    @Override // com.google.api.client.json.JsonParser
    public BigDecimal getDecimalValue() {
        checkNumber();
        return new BigDecimal(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public double getDoubleValue() {
        checkNumber();
        return Double.parseDouble(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonParser
    public float getFloatValue() {
        checkNumber();
        return Float.parseFloat(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public int getIntValue() {
        checkNumber();
        return Integer.parseInt(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public long getLongValue() {
        checkNumber();
        return Long.parseLong(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public short getShortValue() {
        checkNumber();
        return Short.parseShort(this.currentText);
    }

    @Override // com.google.api.client.json.JsonParser
    public String getText() {
        return this.currentText;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonToken nextToken() throws IOException {
        android.util.JsonToken jsonToken;
        if (this.currentToken != null) {
            int i = AnonymousClass1.$SwitchMap$com$google$api$client$json$JsonToken[this.currentToken.ordinal()];
            if (i == 1) {
                this.reader.beginArray();
                this.currentNameStack.add(null);
            } else if (i == 2) {
                this.reader.beginObject();
                this.currentNameStack.add(null);
            }
        }
        try {
            jsonToken = this.reader.peek();
        } catch (EOFException e) {
            jsonToken = android.util.JsonToken.END_DOCUMENT;
        }
        switch (AnonymousClass1.$SwitchMap$android$util$JsonToken[jsonToken.ordinal()]) {
            case 1:
                this.currentText = "[";
                this.currentToken = JsonToken.START_ARRAY;
                break;
            case 2:
                this.currentText = "]";
                this.currentToken = JsonToken.END_ARRAY;
                List<String> list = this.currentNameStack;
                list.remove(list.size() - 1);
                this.reader.endArray();
                break;
            case 3:
                this.currentText = "{";
                this.currentToken = JsonToken.START_OBJECT;
                break;
            case 4:
                this.currentText = "}";
                this.currentToken = JsonToken.END_OBJECT;
                List<String> list2 = this.currentNameStack;
                list2.remove(list2.size() - 1);
                this.reader.endObject();
                break;
            case 5:
                if (!this.reader.nextBoolean()) {
                    this.currentText = "false";
                    this.currentToken = JsonToken.VALUE_FALSE;
                    break;
                } else {
                    this.currentText = "true";
                    this.currentToken = JsonToken.VALUE_TRUE;
                    break;
                }
            case 6:
                this.currentText = JsonReaderKt.NULL;
                this.currentToken = JsonToken.VALUE_NULL;
                this.reader.nextNull();
                break;
            case 7:
                this.currentText = this.reader.nextString();
                this.currentToken = JsonToken.VALUE_STRING;
                break;
            case 8:
                String nextString = this.reader.nextString();
                this.currentText = nextString;
                this.currentToken = nextString.indexOf(46) == -1 ? JsonToken.VALUE_NUMBER_INT : JsonToken.VALUE_NUMBER_FLOAT;
                break;
            case 9:
                this.currentText = this.reader.nextName();
                this.currentToken = JsonToken.FIELD_NAME;
                List<String> list3 = this.currentNameStack;
                list3.set(list3.size() - 1, this.currentText);
                break;
            default:
                this.currentText = null;
                this.currentToken = null;
                break;
        }
        return this.currentToken;
    }

    @Override // com.google.api.client.json.JsonParser
    public JsonParser skipChildren() throws IOException {
        if (this.currentToken != null) {
            int i = AnonymousClass1.$SwitchMap$com$google$api$client$json$JsonToken[this.currentToken.ordinal()];
            if (i == 1) {
                this.reader.skipValue();
                this.currentText = "]";
                this.currentToken = JsonToken.END_ARRAY;
            } else if (i == 2) {
                this.reader.skipValue();
                this.currentText = "}";
                this.currentToken = JsonToken.END_OBJECT;
            }
        }
        return this;
    }
}
