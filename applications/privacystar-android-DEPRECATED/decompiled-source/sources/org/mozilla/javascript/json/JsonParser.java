package org.mozilla.javascript.json;

import java.util.ArrayList;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/json/JsonParser.class */
public class JsonParser {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* renamed from: cx */
    private Context f828cx;
    private int length;
    private int pos;
    private Scriptable scope;
    private String src;

    /* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/json/JsonParser$ParseException.class */
    public static class ParseException extends Exception {
        static final long serialVersionUID = 4804542791749920772L;

        ParseException(Exception exc) {
            super(exc);
        }

        ParseException(String str) {
            super(str);
        }
    }

    public JsonParser(Context context, Scriptable scriptable) {
        this.f828cx = context;
        this.scope = scriptable;
    }

    private void consume(char c) throws ParseException {
        consumeWhitespace();
        if (this.pos >= this.length) {
            throw new ParseException("Expected " + c + " but reached end of stream");
        }
        String str = this.src;
        int i = this.pos;
        this.pos = i + 1;
        char charAt = str.charAt(i);
        if (charAt != c) {
            throw new ParseException("Expected " + c + " found " + charAt);
        }
    }

    private void consumeWhitespace() {
        while (this.pos < this.length) {
            char charAt = this.src.charAt(this.pos);
            if (!(charAt == '\r' || charAt == ' ')) {
                switch (charAt) {
                    case '\t':
                    case '\n':
                        break;
                    default:
                        return;
                }
            }
            this.pos++;
        }
    }

    private int fromHex(char c) {
        int i;
        if (c < '0' || c > '9') {
            char c2 = 'A';
            if (c < 'A' || c > 'F') {
                c2 = 'a';
                if (c < 'a' || c > 'f') {
                    i = -1;
                }
            }
            i = (c - c2) + 10;
        } else {
            i = c - '0';
        }
        return i;
    }

    private char nextOrNumberError(int i) throws ParseException {
        if (this.pos >= this.length) {
            throw numberError(i, this.length);
        }
        String str = this.src;
        int i2 = this.pos;
        this.pos = i2 + 1;
        return str.charAt(i2);
    }

    private ParseException numberError(int i, int i2) {
        return new ParseException("Unsupported number format: " + this.src.substring(i, i2));
    }

    private Object readArray() throws ParseException {
        consumeWhitespace();
        if (this.pos >= this.length || this.src.charAt(this.pos) != ']') {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            while (this.pos < this.length) {
                char charAt = this.src.charAt(this.pos);
                if (charAt != ',') {
                    if (charAt != ']') {
                        if (z) {
                            throw new ParseException("Missing comma in array literal");
                        }
                        arrayList.add(readValue());
                        z = true;
                    } else if (!z) {
                        throw new ParseException("Unexpected comma in array literal");
                    } else {
                        this.pos++;
                        return this.f828cx.newArray(this.scope, arrayList.toArray());
                    }
                } else if (!z) {
                    throw new ParseException("Unexpected comma in array literal");
                } else {
                    this.pos++;
                    z = false;
                }
                consumeWhitespace();
            }
            throw new ParseException("Unterminated array literal");
        }
        this.pos++;
        return this.f828cx.newArray(this.scope, 0);
    }

    private void readDigits() {
        char charAt;
        while (this.pos < this.length && (charAt = this.src.charAt(this.pos)) >= '0' && charAt <= '9') {
            this.pos++;
        }
    }

    private Boolean readFalse() throws ParseException {
        if (this.length - this.pos >= 4 && this.src.charAt(this.pos) == 'a' && this.src.charAt(this.pos + 1) == 'l' && this.src.charAt(this.pos + 2) == 's' && this.src.charAt(this.pos + 3) == 'e') {
            this.pos += 4;
            return Boolean.FALSE;
        }
        throw new ParseException("Unexpected token: f");
    }

    private Object readNull() throws ParseException {
        if (this.length - this.pos >= 3 && this.src.charAt(this.pos) == 'u' && this.src.charAt(this.pos + 1) == 'l' && this.src.charAt(this.pos + 2) == 'l') {
            this.pos += 3;
            return null;
        }
        throw new ParseException("Unexpected token: n");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c0, code lost:
        if (r0 == '+') goto L_0x00c3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0020, code lost:
        if (r0 > '9') goto L_0x0023;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Number readNumber(char r6) throws org.mozilla.javascript.json.JsonParser.ParseException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.mozilla.javascript.json.JsonParser.readNumber(char):java.lang.Number");
    }

    private Object readObject() throws ParseException {
        consumeWhitespace();
        Scriptable newObject = this.f828cx.newObject(this.scope);
        if (this.pos >= this.length || this.src.charAt(this.pos) != '}') {
            boolean z = false;
            while (this.pos < this.length) {
                String str = this.src;
                int i = this.pos;
                this.pos = i + 1;
                char charAt = str.charAt(i);
                if (charAt != '\"') {
                    if (charAt != ',') {
                        if (charAt != '}') {
                            throw new ParseException("Unexpected token in object literal");
                        } else if (z) {
                            return newObject;
                        } else {
                            throw new ParseException("Unexpected comma in object literal");
                        }
                    } else if (!z) {
                        throw new ParseException("Unexpected comma in object literal");
                    } else {
                        z = false;
                    }
                } else if (z) {
                    throw new ParseException("Missing comma in object literal");
                } else {
                    String readString = readString();
                    consume(':');
                    Object readValue = readValue();
                    long indexFromString = ScriptRuntime.indexFromString(readString);
                    if (indexFromString < 0) {
                        newObject.put(readString, newObject, readValue);
                    } else {
                        newObject.put((int) indexFromString, newObject, readValue);
                    }
                    z = true;
                }
                consumeWhitespace();
            }
            throw new ParseException("Unterminated object literal");
        }
        this.pos++;
        return newObject;
    }

    private String readString() throws ParseException {
        int i = this.pos;
        while (this.pos < this.length) {
            String str = this.src;
            int i2 = this.pos;
            this.pos = i2 + 1;
            char charAt = str.charAt(i2);
            if (charAt <= 31) {
                throw new ParseException("String contains control character");
            } else if (charAt == '\\') {
                break;
            } else if (charAt == '\"') {
                return this.src.substring(i, this.pos - 1);
            }
        }
        StringBuilder sb = new StringBuilder();
        while (this.pos < this.length) {
            sb.append((CharSequence) this.src, i, this.pos - 1);
            if (this.pos >= this.length) {
                throw new ParseException("Unterminated string");
            }
            String str2 = this.src;
            int i3 = this.pos;
            this.pos = i3 + 1;
            char charAt2 = str2.charAt(i3);
            if (charAt2 == '\"') {
                sb.append('\"');
            } else if (charAt2 == '/') {
                sb.append('/');
            } else if (charAt2 == '\\') {
                sb.append('\\');
            } else if (charAt2 == 'b') {
                sb.append('\b');
            } else if (charAt2 == 'f') {
                sb.append('\f');
            } else if (charAt2 == 'n') {
                sb.append('\n');
            } else if (charAt2 != 'r') {
                switch (charAt2) {
                    case 't':
                        sb.append('\t');
                        break;
                    case 'u':
                        if (this.length - this.pos >= 5) {
                            int fromHex = (fromHex(this.src.charAt(this.pos + 0)) << 12) | (fromHex(this.src.charAt(this.pos + 1)) << 8) | (fromHex(this.src.charAt(this.pos + 2)) << 4) | fromHex(this.src.charAt(this.pos + 3));
                            if (fromHex >= 0) {
                                this.pos += 4;
                                sb.append((char) fromHex);
                                break;
                            } else {
                                throw new ParseException("Invalid character code: " + this.src.substring(this.pos, this.pos + 4));
                            }
                        } else {
                            throw new ParseException("Invalid character code: \\u" + this.src.substring(this.pos));
                        }
                    default:
                        throw new ParseException("Unexpected character in string: '\\" + charAt2 + "'");
                }
            } else {
                sb.append('\r');
            }
            int i4 = this.pos;
            while (true) {
                i = i4;
                if (this.pos < this.length) {
                    String str3 = this.src;
                    int i5 = this.pos;
                    this.pos = i5 + 1;
                    char charAt3 = str3.charAt(i5);
                    if (charAt3 <= 31) {
                        throw new ParseException("String contains control character");
                    } else if (charAt3 == '\\') {
                        i = i4;
                    } else if (charAt3 == '\"') {
                        sb.append((CharSequence) this.src, i4, this.pos - 1);
                        return sb.toString();
                    }
                }
            }
        }
        throw new ParseException("Unterminated string literal");
    }

    private Boolean readTrue() throws ParseException {
        if (this.length - this.pos >= 3 && this.src.charAt(this.pos) == 'r' && this.src.charAt(this.pos + 1) == 'u' && this.src.charAt(this.pos + 2) == 'e') {
            this.pos += 3;
            return Boolean.TRUE;
        }
        throw new ParseException("Unexpected token: t");
    }

    private Object readValue() throws ParseException {
        consumeWhitespace();
        if (this.pos < this.length) {
            String str = this.src;
            int i = this.pos;
            this.pos = i + 1;
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                return readString();
            }
            if (charAt != '-') {
                if (charAt == '[') {
                    return readArray();
                }
                if (charAt == 'f') {
                    return readFalse();
                }
                if (charAt == 'n') {
                    return readNull();
                }
                if (charAt == 't') {
                    return readTrue();
                }
                if (charAt == '{') {
                    return readObject();
                }
                switch (charAt) {
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                        break;
                    default:
                        throw new ParseException("Unexpected token: " + charAt);
                }
            }
            return readNumber(charAt);
        }
        throw new ParseException("Empty JSON string");
    }

    public Object parseValue(String str) throws ParseException {
        Object readValue;
        synchronized (this) {
            if (str == null) {
                throw new ParseException("Input string may not be null");
            }
            this.pos = 0;
            this.length = str.length();
            this.src = str;
            readValue = readValue();
            consumeWhitespace();
            if (this.pos < this.length) {
                throw new ParseException("Expected end of stream at char " + this.pos);
            }
        }
        return readValue;
    }
}
