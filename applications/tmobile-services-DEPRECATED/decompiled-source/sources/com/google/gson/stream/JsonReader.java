package com.google.gson.stream;

import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
/* loaded from: classes-dex2jar.jar:com/google/gson/stream/JsonReader.class */
public class JsonReader implements Closeable {

    /* renamed from: u */
    private static final char[] f12197u = ")]}'\n".toCharArray();

    /* renamed from: f */
    private final Reader f12198f;

    /* renamed from: n */
    private long f12206n;

    /* renamed from: o */
    private int f12207o;

    /* renamed from: p */
    private String f12208p;

    /* renamed from: q */
    private int[] f12209q;

    /* renamed from: r */
    private int f12210r;

    /* renamed from: g */
    private boolean f12199g = false;

    /* renamed from: h */
    private final char[] f12200h = new char[1024];

    /* renamed from: i */
    private int f12201i = 0;

    /* renamed from: j */
    private int f12202j = 0;

    /* renamed from: k */
    private int f12203k = 0;

    /* renamed from: l */
    private int f12204l = 0;

    /* renamed from: m */
    int f12205m = 0;

    /* renamed from: s */
    private String[] f12211s = new String[32];

    /* renamed from: t */
    private int[] f12212t = new int[32];

    static {
        JsonReaderInternalAccess.f11994a = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            /* renamed from: a */
            public void mo8122a(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).m8263C0();
                    return;
                }
                int i = jsonReader.f12205m;
                int i2 = i;
                if (i == 0) {
                    i2 = jsonReader.m8139h();
                }
                if (i2 == 13) {
                    jsonReader.f12205m = 9;
                } else if (i2 == 12) {
                    jsonReader.f12205m = 8;
                } else if (i2 == 14) {
                    jsonReader.f12205m = 10;
                } else {
                    throw new IllegalStateException("Expected a name but was " + jsonReader.mo8147Z() + jsonReader.m8128t());
                }
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] iArr = new int[32];
        this.f12209q = iArr;
        this.f12210r = 0;
        this.f12210r = 0 + 1;
        iArr[0] = 6;
        if (reader != null) {
            this.f12198f = reader;
            return;
        }
        throw new NullPointerException("in == null");
    }

    /* renamed from: N */
    private int m8152N(boolean z) throws IOException {
        char[] cArr = this.f12200h;
        int i = this.f12201i;
        int i2 = this.f12202j;
        while (true) {
            int i3 = i;
            int i4 = i2;
            if (i == i2) {
                this.f12201i = i;
                if (m8134l(1)) {
                    i3 = this.f12201i;
                    i4 = this.f12202j;
                } else if (!z) {
                    return -1;
                } else {
                    throw new EOFException("End of input" + m8128t());
                }
            }
            i = i3 + 1;
            char c = cArr[i3];
            if (c == '\n') {
                this.f12203k++;
                this.f12204l = i;
            } else if (!(c == ' ' || c == '\r' || c == '\t')) {
                if (c == '/') {
                    this.f12201i = i;
                    if (i == i4) {
                        this.f12201i = i - 1;
                        boolean l = m8134l(2);
                        this.f12201i++;
                        if (!l) {
                            return c;
                        }
                    }
                    m8143d();
                    int i5 = this.f12201i;
                    char c2 = cArr[i5];
                    if (c2 == '*') {
                        this.f12201i = i5 + 1;
                        if (m8127u0("*/")) {
                            i = this.f12201i + 2;
                            i2 = this.f12202j;
                        } else {
                            m8123y0("Unterminated comment");
                            throw null;
                        }
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.f12201i = i5 + 1;
                        m8126v0();
                        i = this.f12201i;
                        i2 = this.f12202j;
                    }
                } else if (c == '#') {
                    this.f12201i = i;
                    m8143d();
                    m8126v0();
                    i = this.f12201i;
                    i2 = this.f12202j;
                } else {
                    this.f12201i = i;
                    return c;
                }
            }
            i2 = i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d2, code lost:
        r14 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d6, code lost:
        if (r9 != null) goto L_0x00ee;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d9, code lost:
        r14 = new java.lang.StringBuilder(java.lang.Math.max((r12 - r10) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ee, code lost:
        r14.append(r0, r10, r12 - r10);
        r6.f12201i = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0107, code lost:
        if (m8134l(1) == false) goto L_0x0110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0110, code lost:
        m8123y0("Unterminated string");
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0118, code lost:
        throw null;
     */
    /* renamed from: W */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m8150W(char r7) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.m8150W(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        m8143d();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /* renamed from: Y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m8148Y() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.m8148Y():java.lang.String");
    }

    /* renamed from: b0 */
    private int m8144b0() throws IOException {
        String str;
        String str2;
        int i;
        char c = this.f12200h[this.f12201i];
        if (c == 't' || c == 'T') {
            i = 5;
            str2 = "true";
            str = "TRUE";
        } else if (c == 'f' || c == 'F') {
            i = 6;
            str2 = "false";
            str = "FALSE";
        } else if (c != 'n' && c != 'N') {
            return 0;
        } else {
            i = 7;
            str2 = "null";
            str = "NULL";
        }
        int length = str2.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f12201i + i2 >= this.f12202j && !m8134l(i2 + 1)) {
                return 0;
            }
            char c2 = this.f12200h[this.f12201i + i2];
            if (!(c2 == str2.charAt(i2) || c2 == str.charAt(i2))) {
                return 0;
            }
        }
        if ((this.f12201i + length < this.f12202j || m8134l(length + 1)) && m8129q(this.f12200h[this.f12201i + length])) {
            return 0;
        }
        this.f12201i += length;
        this.f12205m = i;
        return i;
    }

    /* renamed from: d */
    private void m8143d() throws IOException {
        if (!this.f12199g) {
            m8123y0("Use JsonReader.setLenient(true) to accept malformed JSON");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fe, code lost:
        if (r10 == 6) goto L_0x010e;
     */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5, types: [long] */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: d0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m8142d0() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.m8142d0():int");
    }

    /* renamed from: e */
    private void m8141e() throws IOException {
        m8152N(true);
        int i = this.f12201i - 1;
        this.f12201i = i;
        char[] cArr = f12197u;
        if (i + cArr.length <= this.f12202j || m8134l(cArr.length)) {
            int i2 = 0;
            while (true) {
                char[] cArr2 = f12197u;
                if (i2 >= cArr2.length) {
                    this.f12201i += cArr2.length;
                    return;
                } else if (this.f12200h[this.f12201i + i2] == cArr2[i2]) {
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: e0 */
    private void m8140e0(int i) {
        int i2 = this.f12210r;
        int[] iArr = this.f12209q;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            int[] iArr3 = new int[i2 * 2];
            String[] strArr = new String[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.f12212t, 0, iArr3, 0, this.f12210r);
            System.arraycopy(this.f12211s, 0, strArr, 0, this.f12210r);
            this.f12209q = iArr2;
            this.f12212t = iArr3;
            this.f12211s = strArr;
        }
        int[] iArr4 = this.f12209q;
        int i3 = this.f12210r;
        this.f12210r = i3 + 1;
        iArr4[i3] = i;
    }

    /* renamed from: i0 */
    private char m8137i0() throws IOException {
        int i;
        int i2;
        if (this.f12201i != this.f12202j || m8134l(1)) {
            char[] cArr = this.f12200h;
            int i3 = this.f12201i;
            int i4 = i3 + 1;
            this.f12201i = i4;
            char c = cArr[i3];
            if (c == '\n') {
                this.f12203k++;
                this.f12204l = i4;
            } else if (!(c == '\"' || c == '\'' || c == '/' || c == '\\')) {
                if (c == 'b') {
                    return '\b';
                }
                if (c == 'f') {
                    return '\f';
                }
                if (c == 'n') {
                    return '\n';
                }
                if (c == 'r') {
                    return '\r';
                }
                if (c == 't') {
                    return '\t';
                }
                if (c != 'u') {
                    m8123y0("Invalid escape sequence");
                    throw null;
                } else if (i4 + 4 <= this.f12202j || m8134l(4)) {
                    char c2 = 0;
                    int i5 = this.f12201i;
                    for (int i6 = i5; i6 < i5 + 4; i6++) {
                        char c3 = this.f12200h[i6];
                        char c4 = (char) (c2 << 4);
                        if (c3 < '0' || c3 > '9') {
                            if (c3 >= 'a' && c3 <= 'f') {
                                i = c3 - 'a';
                            } else if (c3 < 'A' || c3 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.f12200h, this.f12201i, 4));
                            } else {
                                i = c3 - 'A';
                            }
                            i2 = i + 10;
                        } else {
                            i2 = c3 - '0';
                        }
                        c2 = (char) (c4 + i2);
                    }
                    this.f12201i += 4;
                    return c2;
                } else {
                    m8123y0("Unterminated escape sequence");
                    throw null;
                }
            }
            return c;
        }
        m8123y0("Unterminated escape sequence");
        throw null;
    }

    /* renamed from: l */
    private boolean m8134l(int i) throws IOException {
        int i2;
        char[] cArr = this.f12200h;
        int i3 = this.f12204l;
        int i4 = this.f12201i;
        this.f12204l = i3 - i4;
        int i5 = this.f12202j;
        if (i5 != i4) {
            int i6 = i5 - i4;
            this.f12202j = i6;
            System.arraycopy(cArr, i4, cArr, 0, i6);
        } else {
            this.f12202j = 0;
        }
        this.f12201i = 0;
        do {
            Reader reader = this.f12198f;
            int i7 = this.f12202j;
            int read = reader.read(cArr, i7, cArr.length - i7);
            if (read == -1) {
                return false;
            }
            int i8 = this.f12202j + read;
            this.f12202j = i8;
            i2 = i;
            if (this.f12203k == 0) {
                int i9 = this.f12204l;
                i2 = i;
                if (i9 == 0) {
                    i2 = i;
                    if (i8 > 0) {
                        i2 = i;
                        if (cArr[0] == 65279) {
                            this.f12201i++;
                            this.f12204l = i9 + 1;
                            i2 = i + 1;
                        }
                    }
                }
            }
            i = i2;
        } while (this.f12202j < i2);
        return true;
    }

    /* renamed from: o0 */
    private void m8131o0(char c) throws IOException {
        char[] cArr = this.f12200h;
        do {
            int i = this.f12201i;
            int i2 = this.f12202j;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.f12201i = i3;
                    return;
                } else if (c2 == '\\') {
                    this.f12201i = i3;
                    m8137i0();
                    i = this.f12201i;
                    i2 = this.f12202j;
                } else {
                    if (c2 == '\n') {
                        this.f12203k++;
                        this.f12204l = i3;
                    }
                    i = i3;
                }
            }
            this.f12201i = i;
        } while (m8134l(1));
        m8123y0("Unterminated string");
        throw null;
    }

    /* renamed from: q */
    private boolean m8129q(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (!(c == '/' || c == '=')) {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m8143d();
        return false;
    }

    /* renamed from: u0 */
    private boolean m8127u0(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f12201i + length > this.f12202j && !m8134l(length)) {
                return false;
            }
            char[] cArr = this.f12200h;
            int i = this.f12201i;
            if (cArr[i] == '\n') {
                this.f12203k++;
                this.f12204l = i + 1;
            } else {
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.f12200h[this.f12201i + i2] != str.charAt(i2)) {
                        break;
                    }
                }
                return true;
            }
            this.f12201i++;
        }
    }

    /* renamed from: v0 */
    private void m8126v0() throws IOException {
        char c;
        do {
            if (this.f12201i < this.f12202j || m8134l(1)) {
                char[] cArr = this.f12200h;
                int i = this.f12201i;
                int i2 = i + 1;
                this.f12201i = i2;
                c = cArr[i];
                if (c == '\n') {
                    this.f12203k++;
                    this.f12204l = i2;
                    return;
                }
            } else {
                return;
            }
        } while (c != '\r');
    }

    /* renamed from: w0 */
    private void m8125w0() throws IOException {
        do {
            int i = 0;
            while (true) {
                int i2 = this.f12201i;
                if (i2 + i < this.f12202j) {
                    char c = this.f12200h[i2 + i];
                    if (!(c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ')) {
                        if (c != '#') {
                            if (c != ',') {
                                if (!(c == '/' || c == '=')) {
                                    if (!(c == '{' || c == '}' || c == ':')) {
                                        if (c != ';') {
                                            switch (c) {
                                                case '[':
                                                case ']':
                                                    break;
                                                case '\\':
                                                    break;
                                                default:
                                                    i++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    this.f12201i = i2 + i;
                }
            }
            m8143d();
            this.f12201i += i;
            return;
        } while (m8134l(1));
    }

    /* renamed from: y0 */
    private IOException m8123y0(String str) throws IOException {
        throw new MalformedJsonException(str + m8128t());
    }

    /* renamed from: B */
    public boolean mo8157B() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 5) {
            this.f12205m = 0;
            int[] iArr = this.f12212t;
            int i3 = this.f12210r - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f12205m = 0;
            int[] iArr2 = this.f12212t;
            int i4 = this.f12210r - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + mo8147Z() + m8128t());
        }
    }

    /* renamed from: I */
    public double mo8156I() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 15) {
            this.f12205m = 0;
            int[] iArr = this.f12212t;
            int i3 = this.f12210r - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f12206n;
        }
        if (i2 == 16) {
            this.f12208p = new String(this.f12200h, this.f12201i, this.f12207o);
            this.f12201i += this.f12207o;
        } else if (i2 == 8 || i2 == 9) {
            this.f12208p = m8150W(i2 == 8 ? '\'' : '\"');
        } else if (i2 == 10) {
            this.f12208p = m8148Y();
        } else if (i2 != 11) {
            throw new IllegalStateException("Expected a double but was " + mo8147Z() + m8128t());
        }
        this.f12205m = 11;
        double parseDouble = Double.parseDouble(this.f12208p);
        if (this.f12199g || (!Double.isNaN(parseDouble) && !Double.isInfinite(parseDouble))) {
            this.f12208p = null;
            this.f12205m = 0;
            int[] iArr2 = this.f12212t;
            int i4 = this.f12210r - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return parseDouble;
        }
        throw new MalformedJsonException("JSON forbids NaN and infinities: " + parseDouble + m8128t());
    }

    /* renamed from: J */
    public int mo8155J() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 15) {
            long j = this.f12206n;
            int i3 = (int) j;
            if (j == i3) {
                this.f12205m = 0;
                int[] iArr = this.f12212t;
                int i4 = this.f12210r - 1;
                iArr[i4] = iArr[i4] + 1;
                return i3;
            }
            throw new NumberFormatException("Expected an int but was " + this.f12206n + m8128t());
        }
        if (i2 == 16) {
            this.f12208p = new String(this.f12200h, this.f12201i, this.f12207o);
            this.f12201i += this.f12207o;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.f12208p = m8148Y();
            } else {
                this.f12208p = m8150W(i2 == 8 ? '\'' : '\"');
            }
            try {
                int parseInt = Integer.parseInt(this.f12208p);
                this.f12205m = 0;
                int[] iArr2 = this.f12212t;
                int i5 = this.f12210r - 1;
                iArr2[i5] = iArr2[i5] + 1;
                return parseInt;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + mo8147Z() + m8128t());
        }
        this.f12205m = 11;
        double parseDouble = Double.parseDouble(this.f12208p);
        int i6 = (int) parseDouble;
        if (i6 == parseDouble) {
            this.f12208p = null;
            this.f12205m = 0;
            int[] iArr3 = this.f12212t;
            int i7 = this.f12210r - 1;
            iArr3[i7] = iArr3[i7] + 1;
            return i6;
        }
        throw new NumberFormatException("Expected an int but was " + this.f12208p + m8128t());
    }

    /* renamed from: K */
    public long mo8154K() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 15) {
            this.f12205m = 0;
            int[] iArr = this.f12212t;
            int i3 = this.f12210r - 1;
            iArr[i3] = iArr[i3] + 1;
            return this.f12206n;
        }
        if (i2 == 16) {
            this.f12208p = new String(this.f12200h, this.f12201i, this.f12207o);
            this.f12201i += this.f12207o;
        } else if (i2 == 8 || i2 == 9 || i2 == 10) {
            if (i2 == 10) {
                this.f12208p = m8148Y();
            } else {
                this.f12208p = m8150W(i2 == 8 ? '\'' : '\"');
            }
            try {
                long parseLong = Long.parseLong(this.f12208p);
                this.f12205m = 0;
                int[] iArr2 = this.f12212t;
                int i4 = this.f12210r - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseLong;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + mo8147Z() + m8128t());
        }
        this.f12205m = 11;
        double parseDouble = Double.parseDouble(this.f12208p);
        long j = (long) parseDouble;
        if (j == parseDouble) {
            this.f12208p = null;
            this.f12205m = 0;
            int[] iArr3 = this.f12212t;
            int i5 = this.f12210r - 1;
            iArr3[i5] = iArr3[i5] + 1;
            return j;
        }
        throw new NumberFormatException("Expected a long but was " + this.f12208p + m8128t());
    }

    /* renamed from: L */
    public String mo8153L() throws IOException {
        String str;
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 14) {
            str = m8148Y();
        } else if (i2 == 12) {
            str = m8150W('\'');
        } else if (i2 == 13) {
            str = m8150W('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + mo8147Z() + m8128t());
        }
        this.f12205m = 0;
        this.f12211s[this.f12210r - 1] = str;
        return str;
    }

    /* renamed from: V */
    public void mo8151V() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 7) {
            this.f12205m = 0;
            int[] iArr = this.f12212t;
            int i3 = this.f12210r - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + mo8147Z() + m8128t());
    }

    /* renamed from: X */
    public String mo8149X() throws IOException {
        String str;
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 10) {
            str = m8148Y();
        } else if (i2 == 8) {
            str = m8150W('\'');
        } else if (i2 == 9) {
            str = m8150W('\"');
        } else if (i2 == 11) {
            str = this.f12208p;
            this.f12208p = null;
        } else if (i2 == 15) {
            str = Long.toString(this.f12206n);
        } else if (i2 == 16) {
            str = new String(this.f12200h, this.f12201i, this.f12207o);
            this.f12201i += this.f12207o;
        } else {
            throw new IllegalStateException("Expected a string but was " + mo8147Z() + m8128t());
        }
        this.f12205m = 0;
        int[] iArr = this.f12212t;
        int i3 = this.f12210r - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* renamed from: Z */
    public JsonToken mo8147Z() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        switch (i2) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    /* renamed from: a */
    public void mo8146a() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 3) {
            m8140e0(1);
            this.f12212t[this.f12210r - 1] = 0;
            this.f12205m = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + mo8147Z() + m8128t());
    }

    /* renamed from: b */
    public void mo8145b() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 1) {
            m8140e0(3);
            this.f12205m = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + mo8147Z() + m8128t());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f12205m = 0;
        this.f12209q[0] = 8;
        this.f12210r = 1;
        this.f12198f.close();
    }

    /* renamed from: h */
    int m8139h() throws IOException {
        int N;
        int[] iArr = this.f12209q;
        int i = this.f12210r;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int N2 = m8152N(true);
            if (N2 != 44) {
                if (N2 == 59) {
                    m8143d();
                } else if (N2 == 93) {
                    this.f12205m = 4;
                    return 4;
                } else {
                    m8123y0("Unterminated array");
                    throw null;
                }
            }
        } else if (i2 == 3 || i2 == 5) {
            this.f12209q[this.f12210r - 1] = 4;
            if (i2 == 5 && (N = m8152N(true)) != 44) {
                if (N == 59) {
                    m8143d();
                } else if (N == 125) {
                    this.f12205m = 2;
                    return 2;
                } else {
                    m8123y0("Unterminated object");
                    throw null;
                }
            }
            int N3 = m8152N(true);
            if (N3 == 34) {
                this.f12205m = 13;
                return 13;
            } else if (N3 == 39) {
                m8143d();
                this.f12205m = 12;
                return 12;
            } else if (N3 != 125) {
                m8143d();
                this.f12201i--;
                if (m8129q((char) N3)) {
                    this.f12205m = 14;
                    return 14;
                }
                m8123y0("Expected name");
                throw null;
            } else if (i2 != 5) {
                this.f12205m = 2;
                return 2;
            } else {
                m8123y0("Expected name");
                throw null;
            }
        } else if (i2 == 4) {
            iArr[i - 1] = 5;
            int N4 = m8152N(true);
            if (N4 != 58) {
                if (N4 == 61) {
                    m8143d();
                    if (this.f12201i < this.f12202j || m8134l(1)) {
                        char[] cArr = this.f12200h;
                        int i3 = this.f12201i;
                        if (cArr[i3] == '>') {
                            this.f12201i = i3 + 1;
                        }
                    }
                } else {
                    m8123y0("Expected ':'");
                    throw null;
                }
            }
        } else if (i2 == 6) {
            if (this.f12199g) {
                m8141e();
            }
            this.f12209q[this.f12210r - 1] = 7;
        } else if (i2 == 7) {
            if (m8152N(false) == -1) {
                this.f12205m = 17;
                return 17;
            }
            m8143d();
            this.f12201i--;
        } else if (i2 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int N5 = m8152N(true);
        if (N5 == 34) {
            this.f12205m = 9;
            return 9;
        } else if (N5 != 39) {
            if (!(N5 == 44 || N5 == 59)) {
                if (N5 == 91) {
                    this.f12205m = 3;
                    return 3;
                } else if (N5 != 93) {
                    if (N5 != 123) {
                        this.f12201i--;
                        int b0 = m8144b0();
                        if (b0 != 0) {
                            return b0;
                        }
                        int d0 = m8142d0();
                        if (d0 != 0) {
                            return d0;
                        }
                        if (m8129q(this.f12200h[this.f12201i])) {
                            m8143d();
                            this.f12205m = 10;
                            return 10;
                        }
                        m8123y0("Expected value");
                        throw null;
                    }
                    this.f12205m = 1;
                    return 1;
                } else if (i2 == 1) {
                    this.f12205m = 4;
                    return 4;
                }
            }
            if (i2 == 1 || i2 == 2) {
                m8143d();
                this.f12201i--;
                this.f12205m = 7;
                return 7;
            }
            m8123y0("Unexpected value");
            throw null;
        } else {
            m8143d();
            this.f12205m = 8;
            return 8;
        }
    }

    /* renamed from: i */
    public void mo8138i() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 4) {
            int i3 = this.f12210r - 1;
            this.f12210r = i3;
            int[] iArr = this.f12212t;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f12205m = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + mo8147Z() + m8128t());
    }

    /* renamed from: j0 */
    public final void m8136j0(boolean z) {
        this.f12199g = z;
    }

    /* renamed from: k */
    public void mo8135k() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        if (i2 == 2) {
            int i3 = this.f12210r - 1;
            this.f12210r = i3;
            this.f12211s[i3] = null;
            int[] iArr = this.f12212t;
            int i4 = i3 - 1;
            iArr[i4] = iArr[i4] + 1;
            this.f12205m = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + mo8147Z() + m8128t());
    }

    /* renamed from: m */
    public String mo8133m() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = this.f12210r;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f12209q[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.f12212t[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String[] strArr = this.f12211s;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: o */
    public boolean mo8132o() throws IOException {
        int i = this.f12205m;
        int i2 = i;
        if (i == 0) {
            i2 = m8139h();
        }
        return (i2 == 2 || i2 == 4) ? false : true;
    }

    /* renamed from: p */
    public final boolean m8130p() {
        return this.f12199g;
    }

    /* renamed from: t */
    String m8128t() {
        int i = this.f12203k;
        int i2 = this.f12201i;
        int i3 = this.f12204l;
        return " at line " + (i + 1) + " column " + ((i2 - i3) + 1) + " path " + mo8133m();
    }

    public String toString() {
        return getClass().getSimpleName() + m8128t();
    }

    /* renamed from: x0 */
    public void mo8124x0() throws IOException {
        int i;
        int i2 = 0;
        do {
            int i3 = this.f12205m;
            int i4 = i3;
            if (i3 == 0) {
                i4 = m8139h();
            }
            if (i4 == 3) {
                m8140e0(1);
            } else if (i4 == 1) {
                m8140e0(3);
            } else {
                if (i4 == 4) {
                    this.f12210r--;
                } else if (i4 == 2) {
                    this.f12210r--;
                } else {
                    if (i4 == 14 || i4 == 10) {
                        m8125w0();
                        i = i2;
                    } else if (i4 == 8 || i4 == 12) {
                        m8131o0('\'');
                        i = i2;
                    } else if (i4 == 9 || i4 == 13) {
                        m8131o0('\"');
                        i = i2;
                    } else {
                        i = i2;
                        if (i4 == 16) {
                            this.f12201i += this.f12207o;
                            i = i2;
                        }
                    }
                    this.f12205m = 0;
                    i2 = i;
                }
                i = i2 - 1;
                this.f12205m = 0;
                i2 = i;
            }
            i = i2 + 1;
            this.f12205m = 0;
            i2 = i;
        } while (i != 0);
        int[] iArr = this.f12212t;
        int i5 = this.f12210r;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.f12211s[i5 - 1] = "null";
    }
}
