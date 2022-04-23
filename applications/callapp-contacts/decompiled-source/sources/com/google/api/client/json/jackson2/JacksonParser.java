package com.google.api.client.json.jackson2;

import com.fasterxml.jackson.core.JsonToken;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.JsonParser;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/json/jackson2/JacksonParser.class */
final class JacksonParser extends JsonParser {
    private final JsonFactory factory;
    private final com.fasterxml.jackson.core.JsonParser parser;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.api.client.json.jackson2.JacksonParser$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/json/jackson2/JacksonParser$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$core$JsonToken;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0089 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008d -> B:56:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0091 -> B:50:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0095 -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0099 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009d -> B:54:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a1 -> B:48:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a5 -> B:42:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00a9 -> B:36:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00ad -> B:52:0x007c). Please submit an issue!!! */
        static {
            int[] iArr = new int[JsonToken.values().length];
            $SwitchMap$com$fasterxml$jackson$core$JsonToken = iArr;
            try {
                iArr[JsonToken.END_ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.START_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.START_OBJECT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_FALSE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_TRUE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NULL.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_STRING.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_FLOAT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.VALUE_NUMBER_INT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$core$JsonToken[JsonToken.FIELD_NAME.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JacksonParser(JsonFactory jsonFactory, com.fasterxml.jackson.core.JsonParser jsonParser) {
        this.factory = jsonFactory;
        this.parser = jsonParser;
    }

    private static com.google.api.client.json.JsonToken convert(JsonToken jsonToken) {
        if (jsonToken == null) {
            return null;
        }
        switch (AnonymousClass1.$SwitchMap$com$fasterxml$jackson$core$JsonToken[jsonToken.ordinal()]) {
            case 1:
                return com.google.api.client.json.JsonToken.END_ARRAY;
            case 2:
                return com.google.api.client.json.JsonToken.START_ARRAY;
            case 3:
                return com.google.api.client.json.JsonToken.END_OBJECT;
            case 4:
                return com.google.api.client.json.JsonToken.START_OBJECT;
            case 5:
                return com.google.api.client.json.JsonToken.VALUE_FALSE;
            case 6:
                return com.google.api.client.json.JsonToken.VALUE_TRUE;
            case 7:
                return com.google.api.client.json.JsonToken.VALUE_NULL;
            case 8:
                return com.google.api.client.json.JsonToken.VALUE_STRING;
            case 9:
                return com.google.api.client.json.JsonToken.VALUE_NUMBER_FLOAT;
            case 10:
                return com.google.api.client.json.JsonToken.VALUE_NUMBER_INT;
            case 11:
                return com.google.api.client.json.JsonToken.FIELD_NAME;
            default:
                return com.google.api.client.json.JsonToken.NOT_AVAILABLE;
        }
    }

    @Override // com.google.api.client.json.JsonParser, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.parser.close();
    }

    @Override // com.google.api.client.json.JsonParser
    public final BigInteger getBigIntegerValue() throws IOException {
        return this.parser.getBigIntegerValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public final byte getByteValue() throws IOException {
        return this.parser.getByteValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public final String getCurrentName() throws IOException {
        return this.parser.getCurrentName();
    }

    @Override // com.google.api.client.json.JsonParser
    public final com.google.api.client.json.JsonToken getCurrentToken() {
        return convert(this.parser.getCurrentToken());
    }

    @Override // com.google.api.client.json.JsonParser
    public final BigDecimal getDecimalValue() throws IOException {
        return this.parser.getDecimalValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public final double getDoubleValue() throws IOException {
        return this.parser.getDoubleValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonFactory getFactory() {
        return this.factory;
    }

    @Override // com.google.api.client.json.JsonParser
    public final float getFloatValue() throws IOException {
        return this.parser.getFloatValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public final int getIntValue() throws IOException {
        return this.parser.getIntValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public final long getLongValue() throws IOException {
        return this.parser.getLongValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public final short getShortValue() throws IOException {
        return this.parser.getShortValue();
    }

    @Override // com.google.api.client.json.JsonParser
    public final String getText() throws IOException {
        return this.parser.getText();
    }

    @Override // com.google.api.client.json.JsonParser
    public final com.google.api.client.json.JsonToken nextToken() throws IOException {
        return convert(this.parser.nextToken());
    }

    @Override // com.google.api.client.json.JsonParser
    public final JsonParser skipChildren() throws IOException {
        this.parser.skipChildren();
        return this;
    }
}
