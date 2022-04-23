package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.io.NumberInput;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/JsonPointer.class */
public class JsonPointer {
    protected static final JsonPointer EMPTY = new JsonPointer();
    public static final char SEPARATOR = '/';
    protected final String _asString;
    protected volatile JsonPointer _head;
    protected final int _matchingElementIndex;
    protected final String _matchingPropertyName;
    protected final JsonPointer _nextSegment;

    protected JsonPointer() {
        this._nextSegment = null;
        this._matchingPropertyName = "";
        this._matchingElementIndex = -1;
        this._asString = "";
    }

    protected JsonPointer(String str, String str2, int i, JsonPointer jsonPointer) {
        this._asString = str;
        this._nextSegment = jsonPointer;
        this._matchingPropertyName = str2;
        this._matchingElementIndex = i;
    }

    protected JsonPointer(String str, String str2, JsonPointer jsonPointer) {
        this._asString = str;
        this._nextSegment = jsonPointer;
        this._matchingPropertyName = str2;
        this._matchingElementIndex = _parseIndex(str2);
    }

    private static void _appendEscape(StringBuilder sb, char c2) {
        char c3;
        if (c2 == '0') {
            c3 = '~';
        } else if (c2 == '1') {
            c3 = '/';
        } else {
            sb.append('~');
            c3 = c2;
        }
        sb.append(c3);
    }

    private static void _appendEscaped(StringBuilder sb, String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '/') {
                sb.append("~1");
            } else if (charAt == '~') {
                sb.append("~0");
            } else {
                sb.append(charAt);
            }
        }
    }

    private static String _fullPath(JsonPointer jsonPointer, String str) {
        if (jsonPointer == null) {
            StringBuilder sb = new StringBuilder(str.length() + 1);
            sb.append('/');
            _appendEscaped(sb, str);
            return sb.toString();
        }
        String str2 = jsonPointer._asString;
        StringBuilder sb2 = new StringBuilder(str.length() + 1 + str2.length());
        sb2.append('/');
        _appendEscaped(sb2, str);
        sb2.append(str2);
        return sb2.toString();
    }

    private static final int _parseIndex(String str) {
        int length = str.length();
        if (length == 0 || length > 10) {
            return -1;
        }
        char charAt = str.charAt(0);
        if (charAt <= '0') {
            return (length == 1 && charAt == '0') ? 0 : -1;
        }
        if (charAt > '9') {
            return -1;
        }
        for (int i = 1; i < length; i++) {
            char charAt2 = str.charAt(i);
            if (charAt2 > '9' || charAt2 < '0') {
                return -1;
            }
        }
        if (length != 10 || NumberInput.parseLong(str) <= 2147483647L) {
            return NumberInput.parseInt(str);
        }
        return -1;
    }

    protected static JsonPointer _parseQuotedTail(String str, int i) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(Math.max(16, length));
        int i2 = i;
        if (i > 2) {
            sb.append((CharSequence) str, 1, i - 1);
            i2 = i;
        }
        while (true) {
            int i3 = i2 + 1;
            _appendEscape(sb, str.charAt(i2));
            while (i3 < length) {
                char charAt = str.charAt(i3);
                if (charAt == '/') {
                    return new JsonPointer(str, sb.toString(), _parseTail(str.substring(i3)));
                }
                i3++;
                if (charAt != '~' || i3 >= length) {
                    sb.append(charAt);
                }
            }
            return new JsonPointer(str, sb.toString(), EMPTY);
            i2 = i3;
        }
    }

    protected static JsonPointer _parseTail(String str) {
        int length = str.length();
        int i = 1;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt == '/') {
                return new JsonPointer(str, str.substring(1, i), _parseTail(str.substring(i)));
            }
            int i2 = i + 1;
            i = i2;
            if (charAt == '~') {
                i = i2;
                if (i2 < length) {
                    return _parseQuotedTail(str, i2);
                }
            }
        }
        return new JsonPointer(str, str.substring(1), EMPTY);
    }

    public static JsonPointer compile(String str) throws IllegalArgumentException {
        if (str == null || str.length() == 0) {
            return EMPTY;
        }
        if (str.charAt(0) == '/') {
            return _parseTail(str);
        }
        throw new IllegalArgumentException("Invalid input: JSON Pointer expression must start with '/': \"" + str + "\"");
    }

    public static JsonPointer empty() {
        return EMPTY;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0022, code lost:
        if (r7.hasCurrentIndex() == false) goto L_0x0025;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.fasterxml.jackson.core.JsonPointer forPath(com.fasterxml.jackson.core.JsonStreamContext r7, boolean r8) {
        /*
            r0 = r7
            if (r0 != 0) goto L_0x0008
            com.fasterxml.jackson.core.JsonPointer r0 = com.fasterxml.jackson.core.JsonPointer.EMPTY
            return r0
        L_0x0008:
            r0 = r7
            r9 = r0
            r0 = r7
            boolean r0 = r0.hasPathSegment()
            if (r0 != 0) goto L_0x002a
            r0 = r8
            if (r0 == 0) goto L_0x0025
            r0 = r7
            boolean r0 = r0.inRoot()
            if (r0 == 0) goto L_0x0025
            r0 = r7
            r9 = r0
            r0 = r7
            boolean r0 = r0.hasCurrentIndex()
            if (r0 != 0) goto L_0x002a
        L_0x0025:
            r0 = r7
            com.fasterxml.jackson.core.JsonStreamContext r0 = r0.getParent()
            r9 = r0
        L_0x002a:
            r0 = 0
            r10 = r0
        L_0x002c:
            r0 = r9
            if (r0 == 0) goto L_0x008e
            r0 = r9
            boolean r0 = r0.inObject()
            if (r0 == 0) goto L_0x005a
            r0 = r9
            java.lang.String r0 = r0.getCurrentName()
            r11 = r0
            r0 = r11
            r7 = r0
            r0 = r11
            if (r0 != 0) goto L_0x0048
            java.lang.String r0 = ""
            r7 = r0
        L_0x0048:
            com.fasterxml.jackson.core.JsonPointer r0 = new com.fasterxml.jackson.core.JsonPointer
            r1 = r0
            r2 = r10
            r3 = r7
            java.lang.String r2 = _fullPath(r2, r3)
            r3 = r7
            r4 = r10
            r1.<init>(r2, r3, r4)
            r7 = r0
            goto L_0x0084
        L_0x005a:
            r0 = r9
            boolean r0 = r0.inArray()
            if (r0 != 0) goto L_0x0067
            r0 = r10
            r7 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0084
        L_0x0067:
            r0 = r9
            int r0 = r0.getCurrentIndex()
            r12 = r0
            r0 = r12
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r7 = r0
            com.fasterxml.jackson.core.JsonPointer r0 = new com.fasterxml.jackson.core.JsonPointer
            r1 = r0
            r2 = r10
            r3 = r7
            java.lang.String r2 = _fullPath(r2, r3)
            r3 = r7
            r4 = r12
            r5 = r10
            r1.<init>(r2, r3, r4, r5)
            r7 = r0
        L_0x0084:
            r0 = r9
            com.fasterxml.jackson.core.JsonStreamContext r0 = r0.getParent()
            r9 = r0
            r0 = r7
            r10 = r0
            goto L_0x002c
        L_0x008e:
            r0 = r10
            if (r0 != 0) goto L_0x0096
            com.fasterxml.jackson.core.JsonPointer r0 = com.fasterxml.jackson.core.JsonPointer.EMPTY
            return r0
        L_0x0096:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.JsonPointer.forPath(com.fasterxml.jackson.core.JsonStreamContext, boolean):com.fasterxml.jackson.core.JsonPointer");
    }

    public static JsonPointer valueOf(String str) {
        return compile(str);
    }

    protected JsonPointer _constructHead() {
        JsonPointer last = last();
        if (last == this) {
            return EMPTY;
        }
        int length = last._asString.length();
        JsonPointer jsonPointer = this._nextSegment;
        String str = this._asString;
        return new JsonPointer(str.substring(0, str.length() - length), this._matchingPropertyName, this._matchingElementIndex, jsonPointer._constructHead(length, last));
    }

    protected JsonPointer _constructHead(int i, JsonPointer jsonPointer) {
        if (this == jsonPointer) {
            return EMPTY;
        }
        JsonPointer jsonPointer2 = this._nextSegment;
        String str = this._asString;
        return new JsonPointer(str.substring(0, str.length() - i), this._matchingPropertyName, this._matchingElementIndex, jsonPointer2._constructHead(i, jsonPointer));
    }

    public JsonPointer append(JsonPointer jsonPointer) {
        JsonPointer jsonPointer2 = EMPTY;
        if (this == jsonPointer2) {
            return jsonPointer;
        }
        if (jsonPointer == jsonPointer2) {
            return this;
        }
        String str = this._asString;
        String str2 = str;
        if (str.endsWith("/")) {
            str2 = str.substring(0, str.length() - 1);
        }
        return compile(str2 + jsonPointer._asString);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof JsonPointer)) {
            return this._asString.equals(((JsonPointer) obj)._asString);
        }
        return false;
    }

    public int getMatchingIndex() {
        return this._matchingElementIndex;
    }

    public String getMatchingProperty() {
        return this._matchingPropertyName;
    }

    public int hashCode() {
        return this._asString.hashCode();
    }

    public JsonPointer head() {
        JsonPointer jsonPointer = this._head;
        JsonPointer jsonPointer2 = jsonPointer;
        if (jsonPointer == null) {
            if (this != EMPTY) {
                jsonPointer = _constructHead();
            }
            this._head = jsonPointer;
            jsonPointer2 = jsonPointer;
        }
        return jsonPointer2;
    }

    public JsonPointer last() {
        if (this == EMPTY) {
            return null;
        }
        JsonPointer jsonPointer = this;
        while (true) {
            JsonPointer jsonPointer2 = jsonPointer._nextSegment;
            if (jsonPointer2 == EMPTY) {
                return jsonPointer;
            }
            jsonPointer = jsonPointer2;
        }
    }

    public JsonPointer matchElement(int i) {
        if (i != this._matchingElementIndex || i < 0) {
            return null;
        }
        return this._nextSegment;
    }

    public JsonPointer matchProperty(String str) {
        if (this._nextSegment == null || !this._matchingPropertyName.equals(str)) {
            return null;
        }
        return this._nextSegment;
    }

    public boolean matches() {
        return this._nextSegment == null;
    }

    public boolean matchesElement(int i) {
        return i == this._matchingElementIndex && i >= 0;
    }

    public boolean matchesProperty(String str) {
        return this._nextSegment != null && this._matchingPropertyName.equals(str);
    }

    public boolean mayMatchElement() {
        return this._matchingElementIndex >= 0;
    }

    public boolean mayMatchProperty() {
        return this._matchingPropertyName != null;
    }

    public JsonPointer tail() {
        return this._nextSegment;
    }

    public String toString() {
        return this._asString;
    }
}
