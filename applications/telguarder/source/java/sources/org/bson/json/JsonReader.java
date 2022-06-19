package org.bson.json;

import com.facebook.appevents.AppEventsConstants;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.ads.AdError;
import com.google.firebase.crashlytics.internal.settings.model.AppSettingsData;
import java.io.Reader;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
import org.bson.AbstractBsonReader;
import org.bson.BSONException;
import org.bson.BsonBinary;
import org.bson.BsonBinarySubType;
import org.bson.BsonContextType;
import org.bson.BsonDbPointer;
import org.bson.BsonInvalidOperationException;
import org.bson.BsonReaderMark;
import org.bson.BsonRegularExpression;
import org.bson.BsonTimestamp;
import org.bson.BsonType;
import org.bson.BsonUndefined;
import org.bson.internal.Base64;
import org.bson.types.Decimal128;
import org.bson.types.MaxKey;
import org.bson.types.MinKey;
import org.bson.types.ObjectId;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonReader.class */
public class JsonReader extends AbstractBsonReader {
    private Object currentValue;
    private Mark mark;
    private JsonToken pushedToken;
    private final JsonScanner scanner;

    /* renamed from: org.bson.json.JsonReader$1 */
    /* loaded from: classes3-dex2jar.jar:org/bson/json/JsonReader$1.class */
    public static /* synthetic */ class C25511 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonContextType;
        static final /* synthetic */ int[] $SwitchMap$org$bson$BsonType;
        static final /* synthetic */ int[] $SwitchMap$org$bson$json$JsonTokenType;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:100:0x0219 -> B:131:0x0129). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:101:0x021d -> B:53:0x0134). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x0221 -> B:139:0x0148). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:103:0x0225 -> B:151:0x0153). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:104:0x0229 -> B:147:0x015e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:105:0x022d -> B:159:0x0169). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:106:0x0231 -> B:155:0x0174). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:107:0x0235 -> B:169:0x0180). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:108:0x0239 -> B:163:0x018c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:109:0x023d -> B:179:0x0198). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:110:0x0241 -> B:173:0x01a4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:111:0x0245 -> B:117:0x01b0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x01bd -> B:183:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x01c1 -> B:177:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x01c5 -> B:121:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:80:0x01c9 -> B:115:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:81:0x01cd -> B:129:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:82:0x01d1 -> B:125:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:83:0x01d5 -> B:137:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:84:0x01d9 -> B:133:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:85:0x01dd -> B:145:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x01e1 -> B:141:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x01e5 -> B:153:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x01e9 -> B:149:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x01ed -> B:161:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:90:0x01f1 -> B:157:0x00ac). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:91:0x01f5 -> B:171:0x00b8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:92:0x01f9 -> B:165:0x00c4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:93:0x01fd -> B:181:0x00d0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x0201 -> B:175:0x00dc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:95:0x0205 -> B:119:0x00e8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x0209 -> B:42:0x00f4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:97:0x020d -> B:127:0x0108). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0211 -> B:123:0x0113). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x0215 -> B:135:0x011e). Please submit an issue!!! */
        static {
            int[] iArr = new int[BsonType.values().length];
            $SwitchMap$org$bson$BsonType = iArr;
            try {
                iArr[BsonType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.BINARY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.BOOLEAN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DATE_TIME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DOCUMENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DOUBLE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.INT32.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.INT64.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.DECIMAL128.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.JAVASCRIPT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.JAVASCRIPT_WITH_SCOPE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.MAX_KEY.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.MIN_KEY.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.NULL.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.OBJECT_ID.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.REGULAR_EXPRESSION.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.STRING.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.SYMBOL.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.TIMESTAMP.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$org$bson$BsonType[BsonType.UNDEFINED.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            int[] iArr2 = new int[BsonContextType.values().length];
            $SwitchMap$org$bson$BsonContextType = iArr2;
            try {
                iArr2[BsonContextType.DOCUMENT.ordinal()] = 1;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.SCOPE_DOCUMENT.ordinal()] = 2;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.ARRAY.ordinal()] = 3;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.JAVASCRIPT_WITH_SCOPE.ordinal()] = 4;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$org$bson$BsonContextType[BsonContextType.TOP_LEVEL.ordinal()] = 5;
            } catch (NoSuchFieldError e25) {
            }
            int[] iArr3 = new int[JsonTokenType.values().length];
            $SwitchMap$org$bson$json$JsonTokenType = iArr3;
            try {
                iArr3[JsonTokenType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.UNQUOTED_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.END_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.BEGIN_ARRAY.ordinal()] = 4;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.BEGIN_OBJECT.ordinal()] = 5;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.DOUBLE.ordinal()] = 6;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.END_OF_FILE.ordinal()] = 7;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError e33) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.REGULAR_EXPRESSION.ordinal()] = 10;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$org$bson$json$JsonTokenType[JsonTokenType.COMMA.ordinal()] = 11;
            } catch (NoSuchFieldError e36) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bson/json/JsonReader$Context.class */
    public class Context extends AbstractBsonReader.Context {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected Context(AbstractBsonReader.Context context, BsonContextType bsonContextType) {
            super(context, bsonContextType);
            JsonReader.this = r6;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.bson.AbstractBsonReader.Context
        public BsonContextType getContextType() {
            return super.getContextType();
        }

        @Override // org.bson.AbstractBsonReader.Context
        public Context getParentContext() {
            return (Context) super.getParentContext();
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bson/json/JsonReader$Mark.class */
    public class Mark extends AbstractBsonReader.Mark {
        private final Object currentValue;
        private final int markPos;
        private final JsonToken pushedToken;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        protected Mark() {
            super();
            JsonReader.this = r4;
            this.pushedToken = r4.pushedToken;
            this.currentValue = r4.currentValue;
            this.markPos = r4.scanner.mark();
        }

        public void discard() {
            JsonReader.this.scanner.discard(this.markPos);
        }

        @Override // org.bson.AbstractBsonReader.Mark, org.bson.BsonReaderMark
        public void reset() {
            super.reset();
            JsonReader.this.pushedToken = this.pushedToken;
            JsonReader.this.currentValue = this.currentValue;
            JsonReader.this.scanner.reset(this.markPos);
            JsonReader jsonReader = JsonReader.this;
            jsonReader.setContext(new Context(getParentContext(), getContextType()));
        }
    }

    public JsonReader(Reader reader) {
        this(new JsonScanner(reader));
    }

    public JsonReader(String str) {
        this(new JsonScanner(str));
    }

    private JsonReader(JsonScanner jsonScanner) {
        this.scanner = jsonScanner;
        setContext(new Context(null, BsonContextType.TOP_LEVEL));
    }

    private static byte[] decodeHex(String str) {
        if (str.length() % 2 != 0) {
            throw new IllegalArgumentException("A hex string must contain an even number of characters: " + str);
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            int digit = Character.digit(str.charAt(i), 16);
            int digit2 = Character.digit(str.charAt(i + 1), 16);
            if (digit == -1 || digit2 == -1) {
                throw new IllegalArgumentException("A hex string can only contain the characters 0-9, A-F, a-f: " + str);
            }
            bArr[i / 2] = (byte) ((digit * 16) + digit2);
        }
        return bArr;
    }

    private JsonToken popToken() {
        JsonToken jsonToken = this.pushedToken;
        if (jsonToken != null) {
            this.pushedToken = null;
            return jsonToken;
        }
        return this.scanner.nextToken();
    }

    private void pushToken(JsonToken jsonToken) {
        if (this.pushedToken == null) {
            this.pushedToken = jsonToken;
            return;
        }
        throw new BsonInvalidOperationException("There is already a pending token.");
    }

    private byte readBinarySubtypeFromExtendedJson() {
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.STRING || popToken.getType() == JsonTokenType.INT32) {
            return popToken.getType() == JsonTokenType.STRING ? (byte) Integer.parseInt((String) popToken.getValue(String.class), 16) : ((Integer) popToken.getValue(Integer.class)).byteValue();
        }
        throw new JsonParseException("JSON reader expected a string or number but found '%s'.", popToken.getValue());
    }

    private ObjectId readDbPointerIdFromExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        verifyToken(JsonTokenType.BEGIN_OBJECT);
        verifyToken(JsonTokenType.STRING, "$oid");
        return visitObjectIdExtendedJson();
    }

    private int readIntFromExtendedJson() {
        int i;
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.INT32) {
            i = ((Integer) popToken.getValue(Integer.class)).intValue();
        } else if (popToken.getType() != JsonTokenType.INT64) {
            throw new JsonParseException("JSON reader expected an integer but found '%s'.", popToken.getValue());
        } else {
            i = ((Long) popToken.getValue(Long.class)).intValue();
        }
        return i;
    }

    private String readStringFromExtendedJson() {
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.STRING) {
            return (String) popToken.getValue(String.class);
        }
        throw new JsonParseException("JSON reader expected a string but found '%s'.", popToken.getValue());
    }

    private void verifyString(String str) {
        if (str != null) {
            JsonToken popToken = popToken();
            JsonTokenType type = popToken.getType();
            if ((type != JsonTokenType.STRING && type != JsonTokenType.UNQUOTED_STRING) || !str.equals(popToken.getValue())) {
                throw new JsonParseException("JSON reader expected '%s' but found '%s'.", str, popToken.getValue());
            }
            return;
        }
        throw new IllegalArgumentException("Can't be null");
    }

    private void verifyToken(JsonTokenType jsonTokenType) {
        JsonToken popToken = popToken();
        if (jsonTokenType == popToken.getType()) {
            return;
        }
        throw new JsonParseException("JSON reader expected token type '%s' but found '%s'.", jsonTokenType, popToken.getValue());
    }

    private void verifyToken(JsonTokenType jsonTokenType, Object obj) {
        JsonToken popToken = popToken();
        if (jsonTokenType == popToken.getType()) {
            if (!obj.equals(popToken.getValue())) {
                throw new JsonParseException("JSON reader expected '%s' but found '%s'.", obj, popToken.getValue());
            }
            return;
        }
        throw new JsonParseException("JSON reader expected token type '%s' but found '%s'.", jsonTokenType, popToken.getValue());
    }

    private BsonBinary visitBinDataConstructor() {
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.INT32) {
            verifyToken(JsonTokenType.COMMA);
            JsonToken popToken2 = popToken();
            if (popToken2.getType() != JsonTokenType.UNQUOTED_STRING && popToken2.getType() != JsonTokenType.STRING) {
                throw new JsonParseException("JSON reader expected a string but found '%s'.", popToken2.getValue());
            }
            verifyToken(JsonTokenType.RIGHT_PAREN);
            return new BsonBinary(((Integer) popToken.getValue(Integer.class)).byteValue(), Base64.decode((String) popToken2.getValue(String.class)));
        }
        throw new JsonParseException("JSON reader expected a binary subtype but found '%s'.", popToken.getValue());
    }

    private BsonBinary visitBinDataExtendedJson(String str) {
        byte b;
        byte[] bArr;
        Mark mark = new Mark();
        try {
            verifyToken(JsonTokenType.COLON);
            if (!str.equals("$binary")) {
                mark.reset();
                return visitLegacyBinaryExtendedJson(str);
            } else if (popToken().getType() != JsonTokenType.BEGIN_OBJECT) {
                mark.reset();
                return visitLegacyBinaryExtendedJson(str);
            } else {
                String str2 = (String) popToken().getValue(String.class);
                if (str2.equals("base64")) {
                    verifyToken(JsonTokenType.COLON);
                    bArr = Base64.decode(readStringFromExtendedJson());
                    verifyToken(JsonTokenType.COMMA);
                    verifyString("subType");
                    verifyToken(JsonTokenType.COLON);
                    b = readBinarySubtypeFromExtendedJson();
                } else if (!str2.equals("subType")) {
                    throw new JsonParseException("Unexpected key for $binary: " + str2);
                } else {
                    verifyToken(JsonTokenType.COLON);
                    byte readBinarySubtypeFromExtendedJson = readBinarySubtypeFromExtendedJson();
                    verifyToken(JsonTokenType.COMMA);
                    verifyString("base64");
                    verifyToken(JsonTokenType.COLON);
                    bArr = Base64.decode(readStringFromExtendedJson());
                    b = readBinarySubtypeFromExtendedJson;
                }
                verifyToken(JsonTokenType.END_OBJECT);
                verifyToken(JsonTokenType.END_OBJECT);
                return new BsonBinary(b, bArr);
            }
        } finally {
            mark.discard();
        }
    }

    private BsonDbPointer visitDBPointerConstructor() {
        verifyToken(JsonTokenType.LEFT_PAREN);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        verifyToken(JsonTokenType.COMMA);
        ObjectId objectId = new ObjectId(readStringFromExtendedJson());
        verifyToken(JsonTokenType.RIGHT_PAREN);
        return new BsonDbPointer(readStringFromExtendedJson, objectId);
    }

    private long visitDateTimeConstructor() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM dd yyyy HH:mm:ss z", Locale.ENGLISH);
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.RIGHT_PAREN) {
            return new Date().getTime();
        }
        if (popToken.getType() == JsonTokenType.STRING) {
            verifyToken(JsonTokenType.RIGHT_PAREN);
            String str = (String) popToken.getValue(String.class);
            ParsePosition parsePosition = new ParsePosition(0);
            Date parse = simpleDateFormat.parse(str, parsePosition);
            if (parse != null && parsePosition.getIndex() == str.length()) {
                return parse.getTime();
            }
            throw new JsonParseException("JSON reader expected a date in 'EEE MMM dd yyyy HH:mm:ss z' format but found '%s'.", str);
        } else if (popToken.getType() != JsonTokenType.INT32 && popToken.getType() != JsonTokenType.INT64) {
            throw new JsonParseException("JSON reader expected an integer or a string but found '%s'.", popToken.getValue());
        } else {
            long[] jArr = new long[7];
            int i = 0;
            while (true) {
                int i2 = i;
                if (i < 7) {
                    jArr[i] = ((Long) popToken.getValue(Long.class)).longValue();
                    i2 = i + 1;
                }
                JsonToken popToken2 = popToken();
                if (popToken2.getType() == JsonTokenType.RIGHT_PAREN) {
                    if (i2 == 1) {
                        return jArr[0];
                    }
                    if (i2 < 3 || i2 > 7) {
                        throw new JsonParseException("JSON reader expected 1 or 3-7 integers but found %d.", Integer.valueOf(i2));
                    }
                    Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
                    calendar.set(1, (int) jArr[0]);
                    calendar.set(2, (int) jArr[1]);
                    calendar.set(5, (int) jArr[2]);
                    calendar.set(11, (int) jArr[3]);
                    calendar.set(12, (int) jArr[4]);
                    calendar.set(13, (int) jArr[5]);
                    calendar.set(14, (int) jArr[6]);
                    return calendar.getTimeInMillis();
                } else if (popToken2.getType() != JsonTokenType.COMMA) {
                    throw new JsonParseException("JSON reader expected a ',' or a ')' but found '%s'.", popToken2.getValue());
                } else {
                    JsonToken popToken3 = popToken();
                    popToken = popToken3;
                    i = i2;
                    if (popToken3.getType() != JsonTokenType.INT32) {
                        if (popToken3.getType() != JsonTokenType.INT64) {
                            throw new JsonParseException("JSON reader expected an integer but found '%s'.", popToken3.getValue());
                        }
                        popToken = popToken3;
                        i = i2;
                    }
                }
            }
        }
    }

    private String visitDateTimeConstructorWithOutNew() {
        JsonToken jsonToken;
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() != JsonTokenType.RIGHT_PAREN) {
            do {
                jsonToken = popToken;
                if (popToken.getType() == JsonTokenType.END_OF_FILE) {
                    break;
                }
                jsonToken = popToken();
                popToken = jsonToken;
            } while (jsonToken.getType() != JsonTokenType.RIGHT_PAREN);
            if (jsonToken.getType() != JsonTokenType.RIGHT_PAREN) {
                throw new JsonParseException("JSON reader expected a ')' but found '%s'.", jsonToken.getValue());
            }
        }
        return new SimpleDateFormat("EEE MMM dd yyyy HH:mm:ss z", Locale.ENGLISH).format(new Date());
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    private long visitDateTimeExtendedJson() {
        char c;
        verifyToken(JsonTokenType.COLON);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.BEGIN_OBJECT) {
            String str = (String) popToken().getValue(String.class);
            if (!str.equals("$numberLong")) {
                throw new JsonParseException(String.format("JSON reader expected $numberLong within $date, but found %s", str));
            }
            c = visitNumberLongExtendedJson().longValue();
            verifyToken(JsonTokenType.END_OBJECT);
        } else {
            if (popToken.getType() == JsonTokenType.INT32 || popToken.getType() == JsonTokenType.INT64) {
                c = ((Long) popToken.getValue(Long.class)).longValue();
            } else if (popToken.getType() != JsonTokenType.STRING) {
                throw new JsonParseException("JSON reader expected an integer or string but found '%s'.", popToken.getValue());
            } else {
                try {
                    c = DateTimeFormatter.parse((String) popToken.getValue(String.class));
                } catch (IllegalArgumentException e) {
                    throw new JsonParseException("Failed to parse string as a date", e);
                }
            }
            verifyToken(JsonTokenType.END_OBJECT);
        }
        return c;
    }

    private BsonDbPointer visitDbPointerExtendedJson() {
        ObjectId objectId;
        String str;
        verifyToken(JsonTokenType.COLON);
        verifyToken(JsonTokenType.BEGIN_OBJECT);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        if (readStringFromExtendedJson.equals("$ref")) {
            verifyToken(JsonTokenType.COLON);
            str = readStringFromExtendedJson();
            verifyToken(JsonTokenType.COMMA);
            verifyString("$id");
            objectId = readDbPointerIdFromExtendedJson();
            verifyToken(JsonTokenType.END_OBJECT);
        } else if (!readStringFromExtendedJson.equals("$id")) {
            throw new JsonParseException("Expected $ref and $id fields in $dbPointer document but found " + readStringFromExtendedJson);
        } else {
            objectId = readDbPointerIdFromExtendedJson();
            verifyToken(JsonTokenType.COMMA);
            verifyString("$ref");
            verifyToken(JsonTokenType.COLON);
            str = readStringFromExtendedJson();
        }
        verifyToken(JsonTokenType.END_OBJECT);
        return new BsonDbPointer(str, objectId);
    }

    private void visitEmptyConstructor() {
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.LEFT_PAREN) {
            verifyToken(JsonTokenType.RIGHT_PAREN);
        } else {
            pushToken(popToken);
        }
    }

    private void visitExtendedJSON() {
        JsonToken popToken = popToken();
        String str = (String) popToken.getValue(String.class);
        JsonTokenType type = popToken.getType();
        if (type == JsonTokenType.STRING || type == JsonTokenType.UNQUOTED_STRING) {
            if ("$binary".equals(str) || "$type".equals(str)) {
                BsonBinary visitBinDataExtendedJson = visitBinDataExtendedJson(str);
                this.currentValue = visitBinDataExtendedJson;
                if (visitBinDataExtendedJson != null) {
                    setCurrentBsonType(BsonType.BINARY);
                    return;
                }
            } else if ("$regex".equals(str) || "$options".equals(str)) {
                BsonRegularExpression visitRegularExpressionExtendedJson = visitRegularExpressionExtendedJson(str);
                this.currentValue = visitRegularExpressionExtendedJson;
                if (visitRegularExpressionExtendedJson != null) {
                    setCurrentBsonType(BsonType.REGULAR_EXPRESSION);
                    return;
                }
            } else if ("$code".equals(str)) {
                visitJavaScriptExtendedJson();
                return;
            } else if ("$date".equals(str)) {
                this.currentValue = Long.valueOf(visitDateTimeExtendedJson());
                setCurrentBsonType(BsonType.DATE_TIME);
                return;
            } else if ("$maxKey".equals(str)) {
                this.currentValue = visitMaxKeyExtendedJson();
                setCurrentBsonType(BsonType.MAX_KEY);
                return;
            } else if ("$minKey".equals(str)) {
                this.currentValue = visitMinKeyExtendedJson();
                setCurrentBsonType(BsonType.MIN_KEY);
                return;
            } else if ("$oid".equals(str)) {
                this.currentValue = visitObjectIdExtendedJson();
                setCurrentBsonType(BsonType.OBJECT_ID);
                return;
            } else if ("$regularExpression".equals(str)) {
                this.currentValue = visitNewRegularExpressionExtendedJson();
                setCurrentBsonType(BsonType.REGULAR_EXPRESSION);
                return;
            } else if ("$symbol".equals(str)) {
                this.currentValue = visitSymbolExtendedJson();
                setCurrentBsonType(BsonType.SYMBOL);
                return;
            } else if ("$timestamp".equals(str)) {
                this.currentValue = visitTimestampExtendedJson();
                setCurrentBsonType(BsonType.TIMESTAMP);
                return;
            } else if ("$undefined".equals(str)) {
                this.currentValue = visitUndefinedExtendedJson();
                setCurrentBsonType(BsonType.UNDEFINED);
                return;
            } else if ("$numberLong".equals(str)) {
                this.currentValue = visitNumberLongExtendedJson();
                setCurrentBsonType(BsonType.INT64);
                return;
            } else if ("$numberInt".equals(str)) {
                this.currentValue = visitNumberIntExtendedJson();
                setCurrentBsonType(BsonType.INT32);
                return;
            } else if ("$numberDouble".equals(str)) {
                this.currentValue = visitNumberDoubleExtendedJson();
                setCurrentBsonType(BsonType.DOUBLE);
                return;
            } else if ("$numberDecimal".equals(str)) {
                this.currentValue = visitNumberDecimalExtendedJson();
                setCurrentBsonType(BsonType.DECIMAL128);
                return;
            } else if ("$dbPointer".equals(str)) {
                this.currentValue = visitDbPointerExtendedJson();
                setCurrentBsonType(BsonType.DB_POINTER);
                return;
            }
        }
        pushToken(popToken);
        setCurrentBsonType(BsonType.DOCUMENT);
    }

    private BsonBinary visitHexDataConstructor() {
        BsonBinarySubType[] values;
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.INT32) {
            verifyToken(JsonTokenType.COMMA);
            String readStringFromExtendedJson = readStringFromExtendedJson();
            verifyToken(JsonTokenType.RIGHT_PAREN);
            String str = readStringFromExtendedJson;
            if ((readStringFromExtendedJson.length() & 1) != 0) {
                str = AppEventsConstants.EVENT_PARAM_VALUE_NO + readStringFromExtendedJson;
            }
            for (BsonBinarySubType bsonBinarySubType : BsonBinarySubType.values()) {
                if (bsonBinarySubType.getValue() == ((Integer) popToken.getValue(Integer.class)).intValue()) {
                    return new BsonBinary(bsonBinarySubType, decodeHex(str));
                }
            }
            return new BsonBinary(decodeHex(str));
        }
        throw new JsonParseException("JSON reader expected a binary subtype but found '%s'.", popToken.getValue());
    }

    private long visitISODateTimeConstructor() {
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.RIGHT_PAREN) {
            return new Date().getTime();
        }
        if (popToken.getType() != JsonTokenType.STRING) {
            throw new JsonParseException("JSON reader expected a string but found '%s'.", popToken.getValue());
        }
        verifyToken(JsonTokenType.RIGHT_PAREN);
        String[] strArr = {"yyyy-MM-dd", "yyyy-MM-dd'T'HH:mm:ssz", "yyyy-MM-dd'T'HH:mm:ss.SSSz"};
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(strArr[0], Locale.ENGLISH);
        ParsePosition parsePosition = new ParsePosition(0);
        String str = (String) popToken.getValue(String.class);
        String str2 = str;
        if (str.endsWith("Z")) {
            str2 = str.substring(0, str.length() - 1) + "GMT-00:00";
        }
        for (int i = 0; i < 3; i++) {
            simpleDateFormat.applyPattern(strArr[i]);
            simpleDateFormat.setLenient(true);
            parsePosition.setIndex(0);
            Date parse = simpleDateFormat.parse(str2, parsePosition);
            if (parse != null && parsePosition.getIndex() == str2.length()) {
                return parse.getTime();
            }
        }
        throw new JsonParseException("Invalid date format.");
    }

    private void visitJavaScriptExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        JsonToken popToken = popToken();
        int i = C25511.$SwitchMap$org$bson$json$JsonTokenType[popToken.getType().ordinal()];
        if (i == 3) {
            this.currentValue = readStringFromExtendedJson;
            setCurrentBsonType(BsonType.JAVASCRIPT);
        } else if (i != 11) {
            throw new JsonParseException("JSON reader expected ',' or '}' but found '%s'.", popToken);
        } else {
            verifyString("$scope");
            verifyToken(JsonTokenType.COLON);
            setState(AbstractBsonReader.State.VALUE);
            this.currentValue = readStringFromExtendedJson;
            setCurrentBsonType(BsonType.JAVASCRIPT_WITH_SCOPE);
            setContext(new Context(getContext(), BsonContextType.SCOPE_DOCUMENT));
        }
    }

    private BsonBinary visitLegacyBinaryExtendedJson(String str) {
        byte b;
        byte[] bArr;
        Mark mark = new Mark();
        try {
            try {
                verifyToken(JsonTokenType.COLON);
                if (str.equals("$binary")) {
                    bArr = Base64.decode(readStringFromExtendedJson());
                    verifyToken(JsonTokenType.COMMA);
                    verifyString("$type");
                    verifyToken(JsonTokenType.COLON);
                    b = readBinarySubtypeFromExtendedJson();
                } else {
                    byte readBinarySubtypeFromExtendedJson = readBinarySubtypeFromExtendedJson();
                    verifyToken(JsonTokenType.COMMA);
                    verifyString("$binary");
                    verifyToken(JsonTokenType.COLON);
                    bArr = Base64.decode(readStringFromExtendedJson());
                    b = readBinarySubtypeFromExtendedJson;
                }
                verifyToken(JsonTokenType.END_OBJECT);
                BsonBinary bsonBinary = new BsonBinary(b, bArr);
                mark.discard();
                return bsonBinary;
            } catch (NumberFormatException e) {
                mark.reset();
                mark.discard();
                return null;
            } catch (JsonParseException e2) {
                mark.reset();
                mark.discard();
                return null;
            }
        } catch (Throwable th) {
            mark.discard();
            throw th;
        }
    }

    private MaxKey visitMaxKeyExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        verifyToken(JsonTokenType.INT32, 1);
        verifyToken(JsonTokenType.END_OBJECT);
        return new MaxKey();
    }

    private MinKey visitMinKeyExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        verifyToken(JsonTokenType.INT32, 1);
        verifyToken(JsonTokenType.END_OBJECT);
        return new MinKey();
    }

    private void visitNew() {
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.UNQUOTED_STRING) {
            String str = (String) popToken.getValue(String.class);
            if ("MinKey".equals(str)) {
                visitEmptyConstructor();
                setCurrentBsonType(BsonType.MIN_KEY);
                this.currentValue = new MinKey();
                return;
            } else if ("MaxKey".equals(str)) {
                visitEmptyConstructor();
                setCurrentBsonType(BsonType.MAX_KEY);
                this.currentValue = new MaxKey();
                return;
            } else if ("BinData".equals(str)) {
                this.currentValue = visitBinDataConstructor();
                setCurrentBsonType(BsonType.BINARY);
                return;
            } else if ("Date".equals(str)) {
                this.currentValue = Long.valueOf(visitDateTimeConstructor());
                setCurrentBsonType(BsonType.DATE_TIME);
                return;
            } else if ("HexData".equals(str)) {
                this.currentValue = visitHexDataConstructor();
                setCurrentBsonType(BsonType.BINARY);
                return;
            } else if ("ISODate".equals(str)) {
                this.currentValue = Long.valueOf(visitISODateTimeConstructor());
                setCurrentBsonType(BsonType.DATE_TIME);
                return;
            } else if ("NumberInt".equals(str)) {
                this.currentValue = Integer.valueOf(visitNumberIntConstructor());
                setCurrentBsonType(BsonType.INT32);
                return;
            } else if ("NumberLong".equals(str)) {
                this.currentValue = Long.valueOf(visitNumberLongConstructor());
                setCurrentBsonType(BsonType.INT64);
                return;
            } else if ("NumberDecimal".equals(str)) {
                this.currentValue = visitNumberDecimalConstructor();
                setCurrentBsonType(BsonType.DECIMAL128);
                return;
            } else if ("ObjectId".equals(str)) {
                this.currentValue = visitObjectIdConstructor();
                setCurrentBsonType(BsonType.OBJECT_ID);
                return;
            } else if ("RegExp".equals(str)) {
                this.currentValue = visitRegularExpressionConstructor();
                setCurrentBsonType(BsonType.REGULAR_EXPRESSION);
                return;
            } else if ("DBPointer".equals(str)) {
                this.currentValue = visitDBPointerConstructor();
                setCurrentBsonType(BsonType.DB_POINTER);
                return;
            } else if (!"UUID".equals(str) && !"GUID".equals(str) && !"CSUUID".equals(str) && !"CSGUID".equals(str) && !"JUUID".equals(str) && !"JGUID".equals(str) && !"PYUUID".equals(str) && !"PYGUID".equals(str)) {
                throw new JsonParseException("JSON reader expected a type name but found '%s'.", str);
            } else {
                this.currentValue = visitUUIDConstructor(str);
                setCurrentBsonType(BsonType.BINARY);
                return;
            }
        }
        throw new JsonParseException("JSON reader expected a type name but found '%s'.", popToken.getValue());
    }

    private BsonRegularExpression visitNewRegularExpressionExtendedJson() {
        String str;
        String str2;
        verifyToken(JsonTokenType.COLON);
        verifyToken(JsonTokenType.BEGIN_OBJECT);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        if (readStringFromExtendedJson.equals("pattern")) {
            verifyToken(JsonTokenType.COLON);
            str = readStringFromExtendedJson();
            verifyToken(JsonTokenType.COMMA);
            verifyString(SDKConstants.PARAM_GAME_REQUESTS_OPTIONS);
            verifyToken(JsonTokenType.COLON);
            str2 = readStringFromExtendedJson();
        } else if (!readStringFromExtendedJson.equals(SDKConstants.PARAM_GAME_REQUESTS_OPTIONS)) {
            throw new JsonParseException("Expected 't' and 'i' fields in $timestamp document but found " + readStringFromExtendedJson);
        } else {
            verifyToken(JsonTokenType.COLON);
            str2 = readStringFromExtendedJson();
            verifyToken(JsonTokenType.COMMA);
            verifyString("pattern");
            verifyToken(JsonTokenType.COLON);
            str = readStringFromExtendedJson();
        }
        verifyToken(JsonTokenType.END_OBJECT);
        verifyToken(JsonTokenType.END_OBJECT);
        return new BsonRegularExpression(str, str2);
    }

    private Decimal128 visitNumberDecimalConstructor() {
        Decimal128 decimal128;
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.INT32 || popToken.getType() == JsonTokenType.INT64 || popToken.getType() == JsonTokenType.DOUBLE) {
            decimal128 = (Decimal128) popToken.getValue(Decimal128.class);
        } else if (popToken.getType() != JsonTokenType.STRING) {
            throw new JsonParseException("JSON reader expected a number or a string but found '%s'.", popToken.getValue());
        } else {
            decimal128 = Decimal128.parse((String) popToken.getValue(String.class));
        }
        verifyToken(JsonTokenType.RIGHT_PAREN);
        return decimal128;
    }

    private Decimal128 visitNumberDecimalExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        try {
            Decimal128 parse = Decimal128.parse(readStringFromExtendedJson);
            verifyToken(JsonTokenType.END_OBJECT);
            return parse;
        } catch (NumberFormatException e) {
            throw new JsonParseException(String.format("Exception converting value '%s' to type %s", readStringFromExtendedJson, Decimal128.class.getName()), e);
        }
    }

    private Double visitNumberDoubleExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        try {
            Double valueOf = Double.valueOf(readStringFromExtendedJson);
            verifyToken(JsonTokenType.END_OBJECT);
            return valueOf;
        } catch (NumberFormatException e) {
            throw new JsonParseException(String.format("Exception converting value '%s' to type %s", readStringFromExtendedJson, Double.class.getName()), e);
        }
    }

    private int visitNumberIntConstructor() {
        int i;
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.INT32) {
            i = ((Integer) popToken.getValue(Integer.class)).intValue();
        } else if (popToken.getType() != JsonTokenType.STRING) {
            throw new JsonParseException("JSON reader expected an integer or a string but found '%s'.", popToken.getValue());
        } else {
            i = Integer.parseInt((String) popToken.getValue(String.class));
        }
        verifyToken(JsonTokenType.RIGHT_PAREN);
        return i;
    }

    private Integer visitNumberIntExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        try {
            Integer valueOf = Integer.valueOf(readStringFromExtendedJson);
            verifyToken(JsonTokenType.END_OBJECT);
            return valueOf;
        } catch (NumberFormatException e) {
            throw new JsonParseException(String.format("Exception converting value '%s' to type %s", readStringFromExtendedJson, Integer.class.getName()), e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    private long visitNumberLongConstructor() {
        char c;
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.INT32 || popToken.getType() == JsonTokenType.INT64) {
            c = ((Long) popToken.getValue(Long.class)).longValue();
        } else if (popToken.getType() != JsonTokenType.STRING) {
            throw new JsonParseException("JSON reader expected an integer or a string but found '%s'.", popToken.getValue());
        } else {
            c = Long.parseLong((String) popToken.getValue(String.class));
        }
        verifyToken(JsonTokenType.RIGHT_PAREN);
        return c;
    }

    private Long visitNumberLongExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        try {
            Long valueOf = Long.valueOf(readStringFromExtendedJson);
            verifyToken(JsonTokenType.END_OBJECT);
            return valueOf;
        } catch (NumberFormatException e) {
            throw new JsonParseException(String.format("Exception converting value '%s' to type %s", readStringFromExtendedJson, Long.class.getName()), e);
        }
    }

    private ObjectId visitObjectIdConstructor() {
        verifyToken(JsonTokenType.LEFT_PAREN);
        ObjectId objectId = new ObjectId(readStringFromExtendedJson());
        verifyToken(JsonTokenType.RIGHT_PAREN);
        return objectId;
    }

    private ObjectId visitObjectIdExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        ObjectId objectId = new ObjectId(readStringFromExtendedJson());
        verifyToken(JsonTokenType.END_OBJECT);
        return objectId;
    }

    private BsonRegularExpression visitRegularExpressionConstructor() {
        String str;
        verifyToken(JsonTokenType.LEFT_PAREN);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.COMMA) {
            str = readStringFromExtendedJson();
        } else {
            pushToken(popToken);
            str = "";
        }
        verifyToken(JsonTokenType.RIGHT_PAREN);
        return new BsonRegularExpression(readStringFromExtendedJson, str);
    }

    /* JADX WARN: Finally extract failed */
    private BsonRegularExpression visitRegularExpressionExtendedJson(String str) {
        String str2;
        String str3;
        Mark mark = new Mark();
        try {
            try {
                verifyToken(JsonTokenType.COLON);
                if (str.equals("$regex")) {
                    str2 = readStringFromExtendedJson();
                    verifyToken(JsonTokenType.COMMA);
                    verifyString("$options");
                    verifyToken(JsonTokenType.COLON);
                    str3 = readStringFromExtendedJson();
                } else {
                    str3 = readStringFromExtendedJson();
                    verifyToken(JsonTokenType.COMMA);
                    verifyString("$regex");
                    verifyToken(JsonTokenType.COLON);
                    str2 = readStringFromExtendedJson();
                }
                verifyToken(JsonTokenType.END_OBJECT);
                BsonRegularExpression bsonRegularExpression = new BsonRegularExpression(str2, str3);
                mark.discard();
                return bsonRegularExpression;
            } catch (JsonParseException e) {
                mark.reset();
                mark.discard();
                return null;
            }
        } catch (Throwable th) {
            mark.discard();
            throw th;
        }
    }

    private String visitSymbolExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        verifyToken(JsonTokenType.END_OBJECT);
        return readStringFromExtendedJson;
    }

    private BsonTimestamp visitTimestampConstructor() {
        verifyToken(JsonTokenType.LEFT_PAREN);
        JsonToken popToken = popToken();
        if (popToken.getType() == JsonTokenType.INT32) {
            int intValue = ((Integer) popToken.getValue(Integer.class)).intValue();
            verifyToken(JsonTokenType.COMMA);
            JsonToken popToken2 = popToken();
            if (popToken2.getType() != JsonTokenType.INT32) {
                throw new JsonParseException("JSON reader expected an integer but found '%s'.", popToken.getValue());
            }
            int intValue2 = ((Integer) popToken2.getValue(Integer.class)).intValue();
            verifyToken(JsonTokenType.RIGHT_PAREN);
            return new BsonTimestamp(intValue, intValue2);
        }
        throw new JsonParseException("JSON reader expected an integer but found '%s'.", popToken.getValue());
    }

    private BsonTimestamp visitTimestampExtendedJson() {
        int i;
        int i2;
        verifyToken(JsonTokenType.COLON);
        verifyToken(JsonTokenType.BEGIN_OBJECT);
        String readStringFromExtendedJson = readStringFromExtendedJson();
        if (readStringFromExtendedJson.equals("t")) {
            verifyToken(JsonTokenType.COLON);
            i2 = readIntFromExtendedJson();
            verifyToken(JsonTokenType.COMMA);
            verifyString("i");
            verifyToken(JsonTokenType.COLON);
            i = readIntFromExtendedJson();
        } else if (!readStringFromExtendedJson.equals("i")) {
            throw new JsonParseException("Expected 't' and 'i' fields in $timestamp document but found " + readStringFromExtendedJson);
        } else {
            verifyToken(JsonTokenType.COLON);
            int readIntFromExtendedJson = readIntFromExtendedJson();
            verifyToken(JsonTokenType.COMMA);
            verifyString("t");
            verifyToken(JsonTokenType.COLON);
            i = readIntFromExtendedJson;
            i2 = readIntFromExtendedJson();
        }
        verifyToken(JsonTokenType.END_OBJECT);
        verifyToken(JsonTokenType.END_OBJECT);
        return new BsonTimestamp(i2, i);
    }

    private BsonBinary visitUUIDConstructor(String str) {
        verifyToken(JsonTokenType.LEFT_PAREN);
        String replaceAll = readStringFromExtendedJson().replaceAll("\\{", "").replaceAll("}", "").replaceAll("-", "");
        verifyToken(JsonTokenType.RIGHT_PAREN);
        byte[] decodeHex = decodeHex(replaceAll);
        BsonBinarySubType bsonBinarySubType = BsonBinarySubType.UUID_STANDARD;
        if (!"UUID".equals(str) || !"GUID".equals(str)) {
            bsonBinarySubType = BsonBinarySubType.UUID_LEGACY;
        }
        return new BsonBinary(bsonBinarySubType, decodeHex);
    }

    private BsonUndefined visitUndefinedExtendedJson() {
        verifyToken(JsonTokenType.COLON);
        JsonToken popToken = popToken();
        if (((String) popToken.getValue(String.class)).equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE)) {
            verifyToken(JsonTokenType.END_OBJECT);
            return new BsonUndefined();
        }
        throw new JsonParseException("JSON reader requires $undefined to have the value of true but found '%s'.", popToken.getValue());
    }

    @Override // org.bson.AbstractBsonReader
    protected int doPeekBinarySize() {
        return doReadBinaryData().getData().length;
    }

    @Override // org.bson.AbstractBsonReader
    protected byte doPeekBinarySubType() {
        return doReadBinaryData().getType();
    }

    @Override // org.bson.AbstractBsonReader
    protected BsonBinary doReadBinaryData() {
        return (BsonBinary) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected boolean doReadBoolean() {
        return ((Boolean) this.currentValue).booleanValue();
    }

    @Override // org.bson.AbstractBsonReader
    protected BsonDbPointer doReadDBPointer() {
        return (BsonDbPointer) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected long doReadDateTime() {
        return ((Long) this.currentValue).longValue();
    }

    @Override // org.bson.AbstractBsonReader
    public Decimal128 doReadDecimal128() {
        return (Decimal128) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected double doReadDouble() {
        return ((Double) this.currentValue).doubleValue();
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadEndArray() {
        setContext(getContext().getParentContext());
        if (getContext().getContextType() == BsonContextType.ARRAY || getContext().getContextType() == BsonContextType.DOCUMENT) {
            JsonToken popToken = popToken();
            if (popToken.getType() == JsonTokenType.COMMA) {
                return;
            }
            pushToken(popToken);
        }
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadEndDocument() {
        setContext(getContext().getParentContext());
        if (getContext() != null && getContext().getContextType() == BsonContextType.SCOPE_DOCUMENT) {
            setContext(getContext().getParentContext());
            verifyToken(JsonTokenType.END_OBJECT);
        }
        if (getContext() != null) {
            if (getContext().getContextType() != BsonContextType.ARRAY && getContext().getContextType() != BsonContextType.DOCUMENT) {
                return;
            }
            JsonToken popToken = popToken();
            if (popToken.getType() == JsonTokenType.COMMA) {
                return;
            }
            pushToken(popToken);
            return;
        }
        throw new JsonParseException("Unexpected end of document.");
    }

    @Override // org.bson.AbstractBsonReader
    protected int doReadInt32() {
        return ((Integer) this.currentValue).intValue();
    }

    @Override // org.bson.AbstractBsonReader
    protected long doReadInt64() {
        return ((Long) this.currentValue).longValue();
    }

    @Override // org.bson.AbstractBsonReader
    protected String doReadJavaScript() {
        return (String) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected String doReadJavaScriptWithScope() {
        return (String) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadMaxKey() {
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadMinKey() {
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadNull() {
    }

    @Override // org.bson.AbstractBsonReader
    protected ObjectId doReadObjectId() {
        return (ObjectId) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected BsonRegularExpression doReadRegularExpression() {
        return (BsonRegularExpression) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadStartArray() {
        setContext(new Context(getContext(), BsonContextType.ARRAY));
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadStartDocument() {
        setContext(new Context(getContext(), BsonContextType.DOCUMENT));
    }

    @Override // org.bson.AbstractBsonReader
    protected String doReadString() {
        return (String) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected String doReadSymbol() {
        return (String) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected BsonTimestamp doReadTimestamp() {
        return (BsonTimestamp) this.currentValue;
    }

    @Override // org.bson.AbstractBsonReader
    protected void doReadUndefined() {
    }

    @Override // org.bson.AbstractBsonReader
    protected void doSkipName() {
    }

    @Override // org.bson.AbstractBsonReader
    protected void doSkipValue() {
        switch (C25511.$SwitchMap$org$bson$BsonType[getCurrentBsonType().ordinal()]) {
            case 1:
                readStartArray();
                while (readBsonType() != BsonType.END_OF_DOCUMENT) {
                    skipValue();
                }
                readEndArray();
                return;
            case 2:
                readBinaryData();
                return;
            case 3:
                readBoolean();
                return;
            case 4:
                readDateTime();
                return;
            case 5:
                readStartDocument();
                while (readBsonType() != BsonType.END_OF_DOCUMENT) {
                    skipName();
                    skipValue();
                }
                readEndDocument();
                return;
            case 6:
                readDouble();
                return;
            case 7:
                readInt32();
                return;
            case 8:
                readInt64();
                return;
            case 9:
                readDecimal128();
                return;
            case 10:
                readJavaScript();
                return;
            case 11:
                readJavaScriptWithScope();
                readStartDocument();
                while (readBsonType() != BsonType.END_OF_DOCUMENT) {
                    skipName();
                    skipValue();
                }
                readEndDocument();
                return;
            case 12:
                readMaxKey();
                return;
            case 13:
                readMinKey();
                return;
            case 14:
                readNull();
                return;
            case 15:
                readObjectId();
                return;
            case 16:
                readRegularExpression();
                return;
            case 17:
                readString();
                return;
            case 18:
                readSymbol();
                return;
            case 19:
                readTimestamp();
                return;
            case 20:
                readUndefined();
                return;
            default:
                return;
        }
    }

    @Override // org.bson.AbstractBsonReader
    public Context getContext() {
        return (Context) super.getContext();
    }

    @Override // org.bson.BsonReader
    public BsonReaderMark getMark() {
        return new Mark();
    }

    @Override // org.bson.BsonReader
    @Deprecated
    public void mark() {
        if (this.mark == null) {
            this.mark = new Mark();
            return;
        }
        throw new BSONException("A mark already exists; it needs to be reset before creating a new one");
    }

    @Override // org.bson.AbstractBsonReader, org.bson.BsonReader
    public BsonType readBsonType() {
        boolean z;
        if (!isClosed()) {
            if (getState() == AbstractBsonReader.State.INITIAL || getState() == AbstractBsonReader.State.DONE || getState() == AbstractBsonReader.State.SCOPE_DOCUMENT) {
                setState(AbstractBsonReader.State.TYPE);
            }
            if (getState() != AbstractBsonReader.State.TYPE) {
                throwInvalidState("readBSONType", AbstractBsonReader.State.TYPE);
            }
            if (getContext().getContextType() == BsonContextType.DOCUMENT) {
                JsonToken popToken = popToken();
                int i = C25511.$SwitchMap$org$bson$json$JsonTokenType[popToken.getType().ordinal()];
                if (i != 1 && i != 2) {
                    if (i != 3) {
                        throw new JsonParseException("JSON reader was expecting a name but found '%s'.", popToken.getValue());
                    }
                    setState(AbstractBsonReader.State.END_OF_DOCUMENT);
                    return BsonType.END_OF_DOCUMENT;
                }
                setCurrentName((String) popToken.getValue(String.class));
                JsonToken popToken2 = popToken();
                if (popToken2.getType() != JsonTokenType.COLON) {
                    throw new JsonParseException("JSON reader was expecting ':' but found '%s'.", popToken2.getValue());
                }
            }
            JsonToken popToken3 = popToken();
            if (getContext().getContextType() == BsonContextType.ARRAY && popToken3.getType() == JsonTokenType.END_ARRAY) {
                setState(AbstractBsonReader.State.END_OF_ARRAY);
                return BsonType.END_OF_DOCUMENT;
            }
            switch (C25511.$SwitchMap$org$bson$json$JsonTokenType[popToken3.getType().ordinal()]) {
                case 1:
                    setCurrentBsonType(BsonType.STRING);
                    this.currentValue = popToken3.getValue();
                    z = false;
                    break;
                case 2:
                    String str = (String) popToken3.getValue(String.class);
                    if ("false".equals(str) || ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equals(str)) {
                        setCurrentBsonType(BsonType.BOOLEAN);
                        this.currentValue = Boolean.valueOf(Boolean.parseBoolean(str));
                    } else if ("Infinity".equals(str)) {
                        setCurrentBsonType(BsonType.DOUBLE);
                        this.currentValue = Double.valueOf(Double.POSITIVE_INFINITY);
                    } else if ("NaN".equals(str)) {
                        setCurrentBsonType(BsonType.DOUBLE);
                        this.currentValue = Double.valueOf(Double.NaN);
                    } else if ("null".equals(str)) {
                        setCurrentBsonType(BsonType.NULL);
                    } else if (AdError.UNDEFINED_DOMAIN.equals(str)) {
                        setCurrentBsonType(BsonType.UNDEFINED);
                    } else if ("MinKey".equals(str)) {
                        visitEmptyConstructor();
                        setCurrentBsonType(BsonType.MIN_KEY);
                        this.currentValue = new MinKey();
                    } else if ("MaxKey".equals(str)) {
                        visitEmptyConstructor();
                        setCurrentBsonType(BsonType.MAX_KEY);
                        this.currentValue = new MaxKey();
                    } else if ("BinData".equals(str)) {
                        setCurrentBsonType(BsonType.BINARY);
                        this.currentValue = visitBinDataConstructor();
                    } else if ("Date".equals(str)) {
                        this.currentValue = visitDateTimeConstructorWithOutNew();
                        setCurrentBsonType(BsonType.STRING);
                    } else if ("HexData".equals(str)) {
                        setCurrentBsonType(BsonType.BINARY);
                        this.currentValue = visitHexDataConstructor();
                    } else if ("ISODate".equals(str)) {
                        setCurrentBsonType(BsonType.DATE_TIME);
                        this.currentValue = Long.valueOf(visitISODateTimeConstructor());
                    } else if ("NumberInt".equals(str)) {
                        setCurrentBsonType(BsonType.INT32);
                        this.currentValue = Integer.valueOf(visitNumberIntConstructor());
                    } else if ("NumberLong".equals(str)) {
                        setCurrentBsonType(BsonType.INT64);
                        this.currentValue = Long.valueOf(visitNumberLongConstructor());
                    } else if ("NumberDecimal".equals(str)) {
                        setCurrentBsonType(BsonType.DECIMAL128);
                        this.currentValue = visitNumberDecimalConstructor();
                    } else if ("ObjectId".equals(str)) {
                        setCurrentBsonType(BsonType.OBJECT_ID);
                        this.currentValue = visitObjectIdConstructor();
                    } else if ("Timestamp".equals(str)) {
                        setCurrentBsonType(BsonType.TIMESTAMP);
                        this.currentValue = visitTimestampConstructor();
                    } else if ("RegExp".equals(str)) {
                        setCurrentBsonType(BsonType.REGULAR_EXPRESSION);
                        this.currentValue = visitRegularExpressionConstructor();
                    } else if ("DBPointer".equals(str)) {
                        setCurrentBsonType(BsonType.DB_POINTER);
                        this.currentValue = visitDBPointerConstructor();
                    } else if ("UUID".equals(str) || "GUID".equals(str) || "CSUUID".equals(str) || "CSGUID".equals(str) || "JUUID".equals(str) || "JGUID".equals(str) || "PYUUID".equals(str) || "PYGUID".equals(str)) {
                        setCurrentBsonType(BsonType.BINARY);
                        this.currentValue = visitUUIDConstructor(str);
                    } else if (AppSettingsData.STATUS_NEW.equals(str)) {
                        visitNew();
                    }
                    z = false;
                    break;
                case 3:
                default:
                    z = true;
                    break;
                case 4:
                    setCurrentBsonType(BsonType.ARRAY);
                    z = false;
                    break;
                case 5:
                    visitExtendedJSON();
                    z = false;
                    break;
                case 6:
                    setCurrentBsonType(BsonType.DOUBLE);
                    this.currentValue = popToken3.getValue();
                    z = false;
                    break;
                case 7:
                    setCurrentBsonType(BsonType.END_OF_DOCUMENT);
                    z = false;
                    break;
                case 8:
                    setCurrentBsonType(BsonType.INT32);
                    this.currentValue = popToken3.getValue();
                    z = false;
                    break;
                case 9:
                    setCurrentBsonType(BsonType.INT64);
                    this.currentValue = popToken3.getValue();
                    z = false;
                    break;
                case 10:
                    setCurrentBsonType(BsonType.REGULAR_EXPRESSION);
                    this.currentValue = popToken3.getValue();
                    z = false;
                    break;
            }
            if (z) {
                throw new JsonParseException("JSON reader was expecting a value but found '%s'.", popToken3.getValue());
            }
            if (getContext().getContextType() == BsonContextType.ARRAY || getContext().getContextType() == BsonContextType.DOCUMENT) {
                JsonToken popToken4 = popToken();
                if (popToken4.getType() != JsonTokenType.COMMA) {
                    pushToken(popToken4);
                }
            }
            int i2 = C25511.$SwitchMap$org$bson$BsonContextType[getContext().getContextType().ordinal()];
            if (i2 == 3 || i2 == 4 || i2 == 5) {
                setState(AbstractBsonReader.State.VALUE);
            } else {
                setState(AbstractBsonReader.State.NAME);
            }
            return getCurrentBsonType();
        }
        throw new IllegalStateException("This instance has been closed");
    }

    @Override // org.bson.BsonReader
    @Deprecated
    public void reset() {
        Mark mark = this.mark;
        if (mark != null) {
            mark.reset();
            this.mark = null;
            return;
        }
        throw new BSONException("trying to reset a mark before creating it");
    }
}
