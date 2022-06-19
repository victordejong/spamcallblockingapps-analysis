package org.bson.json;

import java.io.Reader;
import org.bson.BsonRegularExpression;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonScanner.class */
public class JsonScanner {
    private final JsonBuffer buffer;

    /* renamed from: org.bson.json.JsonScanner$1 */
    /* loaded from: classes3-dex2jar.jar:org/bson/json/JsonScanner$1.class */
    public static /* synthetic */ class C25521 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$json$JsonScanner$NumberState;
        static final /* synthetic */ int[] $SwitchMap$org$bson$json$JsonScanner$RegularExpressionState;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c9 -> B:54:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00cd -> B:66:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00d1 -> B:62:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d5 -> B:74:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d9 -> B:70:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00dd -> B:82:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00e1 -> B:78:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e5 -> B:56:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e9 -> B:52:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00ed -> B:64:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00f1 -> B:24:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x00f5 -> B:72:0x009c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x00f9 -> B:68:0x00a7). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00fd -> B:80:0x00b2). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0101 -> B:76:0x00bd). Please submit an issue!!! */
        static {
            int[] iArr = new int[NumberState.values().length];
            $SwitchMap$org$bson$json$JsonScanner$NumberState = iArr;
            try {
                iArr[NumberState.SAW_LEADING_MINUS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.SAW_LEADING_ZERO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.SAW_INTEGER_DIGITS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.SAW_DECIMAL_POINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.SAW_FRACTION_DIGITS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.SAW_EXPONENT_LETTER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.SAW_EXPONENT_SIGN.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.SAW_EXPONENT_DIGITS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.SAW_MINUS_I.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.INVALID.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$NumberState[NumberState.DONE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            int[] iArr2 = new int[RegularExpressionState.values().length];
            $SwitchMap$org$bson$json$JsonScanner$RegularExpressionState = iArr2;
            try {
                iArr2[RegularExpressionState.IN_PATTERN.ordinal()] = 1;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$RegularExpressionState[RegularExpressionState.IN_ESCAPE_SEQUENCE.ordinal()] = 2;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$RegularExpressionState[RegularExpressionState.IN_OPTIONS.ordinal()] = 3;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$RegularExpressionState[RegularExpressionState.DONE.ordinal()] = 4;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$org$bson$json$JsonScanner$RegularExpressionState[RegularExpressionState.INVALID.ordinal()] = 5;
            } catch (NoSuchFieldError e16) {
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bson/json/JsonScanner$NumberState.class */
    public enum NumberState {
        SAW_LEADING_MINUS,
        SAW_LEADING_ZERO,
        SAW_INTEGER_DIGITS,
        SAW_DECIMAL_POINT,
        SAW_FRACTION_DIGITS,
        SAW_EXPONENT_LETTER,
        SAW_EXPONENT_SIGN,
        SAW_EXPONENT_DIGITS,
        SAW_MINUS_I,
        DONE,
        INVALID
    }

    /* loaded from: classes3-dex2jar.jar:org/bson/json/JsonScanner$RegularExpressionState.class */
    public enum RegularExpressionState {
        IN_PATTERN,
        IN_ESCAPE_SEQUENCE,
        IN_OPTIONS,
        DONE,
        INVALID
    }

    public JsonScanner(Reader reader) {
        this(new JsonStreamBuffer(reader));
    }

    public JsonScanner(String str) {
        this(new JsonStringBuffer(str));
    }

    JsonScanner(JsonBuffer jsonBuffer) {
        this.buffer = jsonBuffer;
    }

    private JsonToken scanNumber(char c) {
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append(c);
        NumberState numberState = c != '-' ? c != '0' ? NumberState.SAW_INTEGER_DIGITS : NumberState.SAW_LEADING_ZERO : NumberState.SAW_LEADING_MINUS;
        JsonTokenType jsonTokenType = JsonTokenType.INT64;
        while (true) {
            char read = this.buffer.read();
            switch (C25521.$SwitchMap$org$bson$json$JsonScanner$NumberState[numberState.ordinal()]) {
                case 1:
                    if (read == '0') {
                        numberState = NumberState.SAW_LEADING_ZERO;
                        break;
                    } else if (read == 'I') {
                        numberState = NumberState.SAW_MINUS_I;
                        break;
                    } else if (!Character.isDigit((int) read)) {
                        numberState = NumberState.INVALID;
                        break;
                    } else {
                        numberState = NumberState.SAW_INTEGER_DIGITS;
                        break;
                    }
                case 2:
                    if (read != 65535 && read != ')' && read != ',') {
                        if (read == '.') {
                            numberState = NumberState.SAW_DECIMAL_POINT;
                            break;
                        } else {
                            if (read != 'E') {
                                if (read != ']') {
                                    if (read != 'e') {
                                        if (read != '}') {
                                            if (!Character.isDigit((int) read)) {
                                                if (!Character.isWhitespace((int) read)) {
                                                    numberState = NumberState.INVALID;
                                                    break;
                                                } else {
                                                    numberState = NumberState.DONE;
                                                    break;
                                                }
                                            } else {
                                                numberState = NumberState.SAW_INTEGER_DIGITS;
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                            numberState = NumberState.SAW_EXPONENT_LETTER;
                            break;
                        }
                    }
                    numberState = NumberState.DONE;
                    break;
                case 3:
                    if (read != 65535 && read != ')' && read != ',') {
                        if (read == '.') {
                            numberState = NumberState.SAW_DECIMAL_POINT;
                            break;
                        } else {
                            if (read != 'E') {
                                if (read != ']') {
                                    if (read != 'e') {
                                        if (read != '}') {
                                            if (!Character.isDigit((int) read)) {
                                                if (!Character.isWhitespace((int) read)) {
                                                    numberState = NumberState.INVALID;
                                                    break;
                                                } else {
                                                    numberState = NumberState.DONE;
                                                    break;
                                                }
                                            } else {
                                                numberState = NumberState.SAW_INTEGER_DIGITS;
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                            numberState = NumberState.SAW_EXPONENT_LETTER;
                            break;
                        }
                    }
                    numberState = NumberState.DONE;
                    break;
                case 4:
                    jsonTokenType = JsonTokenType.DOUBLE;
                    if (!Character.isDigit((int) read)) {
                        numberState = NumberState.INVALID;
                        break;
                    } else {
                        numberState = NumberState.SAW_FRACTION_DIGITS;
                        break;
                    }
                case 5:
                    if (read != 65535 && read != ')' && read != ',') {
                        if (read != 'E') {
                            if (read != ']') {
                                if (read != 'e') {
                                    if (read != '}') {
                                        if (!Character.isDigit((int) read)) {
                                            if (!Character.isWhitespace((int) read)) {
                                                numberState = NumberState.INVALID;
                                                break;
                                            } else {
                                                numberState = NumberState.DONE;
                                                break;
                                            }
                                        } else {
                                            numberState = NumberState.SAW_FRACTION_DIGITS;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                        numberState = NumberState.SAW_EXPONENT_LETTER;
                        break;
                    }
                    numberState = NumberState.DONE;
                    break;
                case 6:
                    jsonTokenType = JsonTokenType.DOUBLE;
                    if (read != '+' && read != '-') {
                        if (!Character.isDigit((int) read)) {
                            numberState = NumberState.INVALID;
                            break;
                        } else {
                            numberState = NumberState.SAW_EXPONENT_DIGITS;
                            break;
                        }
                    } else {
                        numberState = NumberState.SAW_EXPONENT_SIGN;
                        break;
                    }
                    break;
                case 7:
                    if (!Character.isDigit((int) read)) {
                        numberState = NumberState.INVALID;
                        break;
                    } else {
                        numberState = NumberState.SAW_EXPONENT_DIGITS;
                        break;
                    }
                case 8:
                    if (read != ')' && read != ',' && read != ']' && read != '}') {
                        if (!Character.isDigit((int) read)) {
                            if (!Character.isWhitespace((int) read)) {
                                numberState = NumberState.INVALID;
                                break;
                            } else {
                                numberState = NumberState.DONE;
                                break;
                            }
                        } else {
                            numberState = NumberState.SAW_EXPONENT_DIGITS;
                            break;
                        }
                    } else {
                        numberState = NumberState.DONE;
                        break;
                    }
                    break;
                case 9:
                    int i = 0;
                    while (true) {
                        if (i >= 7) {
                            z = true;
                        } else if (read != new char[]{'n', 'f', 'i', 'n', 'i', 't', 'y'}[i]) {
                            z = false;
                        } else {
                            sb.append(read);
                            read = this.buffer.read();
                            i++;
                        }
                    }
                    if (!z) {
                        numberState = NumberState.INVALID;
                        break;
                    } else {
                        jsonTokenType = JsonTokenType.DOUBLE;
                        if (read != 65535 && read != ')' && read != ',' && read != ']' && read != '}') {
                            if (!Character.isWhitespace((int) read)) {
                                numberState = NumberState.INVALID;
                                break;
                            } else {
                                numberState = NumberState.DONE;
                                break;
                            }
                        } else {
                            numberState = NumberState.DONE;
                            break;
                        }
                    }
                    break;
            }
            int i2 = C25521.$SwitchMap$org$bson$json$JsonScanner$NumberState[numberState.ordinal()];
            if (i2 != 10) {
                if (i2 == 11) {
                    this.buffer.unread(read);
                    String sb2 = sb.toString();
                    if (jsonTokenType == JsonTokenType.DOUBLE) {
                        return new JsonToken(JsonTokenType.DOUBLE, Double.valueOf(Double.parseDouble(sb2)));
                    }
                    long parseLong = Long.parseLong(sb2);
                    return (parseLong < -2147483648L || parseLong > 2147483647L) ? new JsonToken(JsonTokenType.INT64, Long.valueOf(parseLong)) : new JsonToken(JsonTokenType.INT32, Integer.valueOf((int) parseLong));
                }
                sb.append(read);
            } else {
                throw new JsonParseException("Invalid JSON number");
            }
        }
    }

    private JsonToken scanRegularExpression() {
        RegularExpressionState regularExpressionState;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        RegularExpressionState regularExpressionState2 = RegularExpressionState.IN_PATTERN;
        while (true) {
            int read = this.buffer.read();
            int i = C25521.$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState[regularExpressionState2.ordinal()];
            if (i == 1) {
                regularExpressionState = read != -1 ? read != 47 ? read != 92 ? RegularExpressionState.IN_PATTERN : RegularExpressionState.IN_ESCAPE_SEQUENCE : RegularExpressionState.IN_OPTIONS : RegularExpressionState.INVALID;
            } else if (i == 2) {
                regularExpressionState = RegularExpressionState.IN_PATTERN;
            } else if (i != 3) {
                regularExpressionState = regularExpressionState2;
            } else {
                if (read != -1 && read != 41 && read != 44 && read != 93) {
                    if (read == 105 || read == 109 || read == 115 || read == 120) {
                        regularExpressionState = RegularExpressionState.IN_OPTIONS;
                    } else if (read != 125) {
                        regularExpressionState = Character.isWhitespace(read) ? RegularExpressionState.DONE : RegularExpressionState.INVALID;
                    }
                }
                regularExpressionState = RegularExpressionState.DONE;
            }
            int i2 = C25521.$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState[regularExpressionState.ordinal()];
            if (i2 == 4) {
                this.buffer.unread(read);
                return new JsonToken(JsonTokenType.REGULAR_EXPRESSION, new BsonRegularExpression(sb.toString(), sb2.toString()));
            } else if (i2 == 5) {
                throw new JsonParseException("Invalid JSON regular expression. Position: %d.", Integer.valueOf(this.buffer.getPosition()));
            } else {
                if (C25521.$SwitchMap$org$bson$json$JsonScanner$RegularExpressionState[regularExpressionState.ordinal()] != 3) {
                    sb.append((char) read);
                    regularExpressionState2 = regularExpressionState;
                } else {
                    regularExpressionState2 = regularExpressionState;
                    if (read != 47) {
                        sb2.append((char) read);
                        regularExpressionState2 = regularExpressionState;
                    }
                }
            }
        }
    }

    private JsonToken scanString(char c) {
        int i;
        StringBuilder sb = new StringBuilder();
        do {
            int read = this.buffer.read();
            if (read == 92) {
                int read2 = this.buffer.read();
                if (read2 == 34) {
                    sb.append('\"');
                    i = read2;
                } else if (read2 == 39) {
                    sb.append('\'');
                    i = read2;
                } else if (read2 == 47) {
                    sb.append('/');
                    i = read2;
                } else if (read2 == 92) {
                    sb.append('\\');
                    i = read2;
                } else if (read2 == 98) {
                    sb.append('\b');
                    i = read2;
                } else if (read2 == 102) {
                    sb.append('\f');
                    i = read2;
                } else if (read2 == 110) {
                    sb.append('\n');
                    i = read2;
                } else if (read2 == 114) {
                    sb.append('\r');
                    i = read2;
                } else if (read2 == 116) {
                    sb.append('\t');
                    i = read2;
                } else if (read2 != 117) {
                    throw new JsonParseException("Invalid escape sequence in JSON string '\\%c'.", Integer.valueOf(read2));
                } else {
                    int read3 = this.buffer.read();
                    int read4 = this.buffer.read();
                    int read5 = this.buffer.read();
                    int read6 = this.buffer.read();
                    i = read2;
                    if (read6 != -1) {
                        sb.append((char) Integer.parseInt(new String(new char[]{(char) read3, (char) read4, (char) read5, (char) read6}), 16));
                        i = read2;
                    }
                }
            } else if (read == c) {
                return new JsonToken(JsonTokenType.STRING, sb.toString());
            } else {
                i = read;
                if (read != -1) {
                    sb.append((char) read);
                    i = read;
                }
            }
        } while (i != -1);
        throw new JsonParseException("End of file in JSON string.");
    }

    private JsonToken scanUnquotedString(char c) {
        StringBuilder sb = new StringBuilder();
        sb.append(c);
        int read = this.buffer.read();
        while (true) {
            int i = read;
            if (i != 36 && i != 95 && !Character.isLetterOrDigit(i)) {
                this.buffer.unread(i);
                return new JsonToken(JsonTokenType.UNQUOTED_STRING, sb.toString());
            }
            sb.append((char) i);
            read = this.buffer.read();
        }
    }

    public void discard(int i) {
        this.buffer.discard(i);
    }

    public int mark() {
        return this.buffer.mark();
    }

    public JsonToken nextToken() {
        int i;
        int read = this.buffer.read();
        while (true) {
            i = read;
            if (i == -1 || !Character.isWhitespace(i)) {
                break;
            }
            read = this.buffer.read();
        }
        if (i == -1) {
            return new JsonToken(JsonTokenType.END_OF_FILE, "<eof>");
        }
        if (i != 34) {
            if (i == 44) {
                return new JsonToken(JsonTokenType.COMMA, ",");
            }
            if (i == 47) {
                return scanRegularExpression();
            }
            if (i == 58) {
                return new JsonToken(JsonTokenType.COLON, ":");
            }
            if (i == 91) {
                return new JsonToken(JsonTokenType.BEGIN_ARRAY, "[");
            }
            if (i == 93) {
                return new JsonToken(JsonTokenType.END_ARRAY, "]");
            }
            if (i == 123) {
                return new JsonToken(JsonTokenType.BEGIN_OBJECT, "{");
            }
            if (i == 125) {
                return new JsonToken(JsonTokenType.END_OBJECT, "}");
            }
            switch (i) {
                case 39:
                    break;
                case 40:
                    return new JsonToken(JsonTokenType.LEFT_PAREN, "(");
                case 41:
                    return new JsonToken(JsonTokenType.RIGHT_PAREN, ")");
                default:
                    if (i == 45 || Character.isDigit(i)) {
                        return scanNumber((char) i);
                    }
                    if (i == 36 || i == 95 || Character.isLetter(i)) {
                        return scanUnquotedString((char) i);
                    }
                    int position = this.buffer.getPosition();
                    this.buffer.unread(i);
                    throw new JsonParseException("Invalid JSON input. Position: %d. Character: '%c'.", Integer.valueOf(position), Integer.valueOf(i));
            }
        }
        return scanString((char) i);
    }

    public void reset(int i) {
        this.buffer.reset(i);
    }
}
