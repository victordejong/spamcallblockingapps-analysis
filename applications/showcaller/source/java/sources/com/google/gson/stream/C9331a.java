package com.google.gson.stream;

import com.google.gson.p316a.AbstractC9330a;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.gson.stream.a */
/* loaded from: classes2-dex2jar.jar:com/google/gson/stream/a.class */
public class C9331a implements Closeable {

    /* renamed from: d */
    private static final char[] f39901d = ")]}'\n".toCharArray();

    /* renamed from: e */
    private final Reader f39902e;

    /* renamed from: m */
    private long f39910m;

    /* renamed from: n */
    private int f39911n;

    /* renamed from: o */
    private String f39912o;

    /* renamed from: p */
    private int[] f39913p;

    /* renamed from: q */
    private int f39914q;

    /* renamed from: f */
    private boolean f39903f = false;

    /* renamed from: g */
    private final char[] f39904g = new char[1024];

    /* renamed from: h */
    private int f39905h = 0;

    /* renamed from: i */
    private int f39906i = 0;

    /* renamed from: j */
    private int f39907j = 0;

    /* renamed from: k */
    private int f39908k = 0;

    /* renamed from: l */
    int f39909l = 0;

    /* renamed from: r */
    private String[] f39915r = new String[32];

    /* renamed from: s */
    private int[] f39916s = new int[32];

    /* renamed from: com.google.gson.stream.a$a */
    /* loaded from: classes2-dex2jar.jar:com/google/gson/stream/a$a.class */
    class C9332a extends AbstractC9330a {
        C9332a() {
        }
    }

    static {
        AbstractC9330a.f39889a = new C9332a();
    }

    public C9331a(Reader reader) {
        int[] iArr = new int[32];
        this.f39913p = iArr;
        this.f39914q = 0;
        this.f39914q = 0 + 1;
        iArr[0] = 6;
        Objects.requireNonNull(reader, "in == null");
        this.f39902e = reader;
    }

    /* renamed from: D */
    private int m1120D(boolean z) {
        char[] cArr = this.f39904g;
        int i = this.f39905h;
        int i2 = this.f39906i;
        while (true) {
            int i3 = i2;
            int i4 = i;
            int i5 = i3;
            if (i == i3) {
                this.f39905h = i;
                if (!m1096u(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + m1094z());
                }
                i4 = this.f39905h;
                i5 = this.f39906i;
            }
            i = i4 + 1;
            char c = cArr[i4];
            if (c == '\n') {
                this.f39907j++;
                this.f39908k = i;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.f39905h = i;
                    if (i == i5) {
                        this.f39905h = i - 1;
                        boolean m1096u = m1096u(2);
                        this.f39905h++;
                        if (!m1096u) {
                            return c;
                        }
                    }
                    m1103f();
                    int i6 = this.f39905h;
                    char c2 = cArr[i6];
                    if (c2 == '*') {
                        this.f39905h = i6 + 1;
                        if (!m1107a0("*/")) {
                            throw m1100i0("Unterminated comment");
                        }
                        i = this.f39905h + 2;
                        i2 = this.f39906i;
                    } else if (c2 != '/') {
                        return c;
                    } else {
                        this.f39905h = i6 + 1;
                        m1106d0();
                        i = this.f39905h;
                        i2 = this.f39906i;
                    }
                } else if (c != '#') {
                    this.f39905h = i;
                    return c;
                } else {
                    this.f39905h = i;
                    m1103f();
                    m1106d0();
                    i = this.f39905h;
                    i2 = this.f39906i;
                }
            }
            i2 = i5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0067, code lost:
        r6.f39905h = r12;
        r0 = (r12 - r10) - 1;
        r14 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x007a, code lost:
        if (r9 != null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007d, code lost:
        r14 = new java.lang.StringBuilder(java.lang.Math.max((r0 + 1) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d2, code lost:
        r14 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00d6, code lost:
        if (r9 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d9, code lost:
        r14 = new java.lang.StringBuilder(java.lang.Math.max((r0 - r10) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ee, code lost:
        r14.append(r0, r10, r0 - r10);
        r6.f39905h = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0107, code lost:
        if (m1096u(1) == false) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0116, code lost:
        throw m1100i0("Unterminated string");
     */
    /* renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m1118I(char r7) {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.C9331a.m1118I(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
        m1103f();
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0117  */
    /* renamed from: N */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m1116N() {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.C9331a.m1116N():java.lang.String");
    }

    /* renamed from: Q */
    private int m1114Q() {
        String str;
        String str2;
        int i;
        char c = this.f39904g[this.f39905h];
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
            if (this.f39905h + i2 >= this.f39906i && !m1096u(i2 + 1)) {
                return 0;
            }
            char c2 = this.f39904g[this.f39905h + i2];
            if (c2 != str2.charAt(i2) && c2 != str.charAt(i2)) {
                return 0;
            }
        }
        if ((this.f39905h + length < this.f39906i || m1096u(length + 1)) && m1095y(this.f39904g[this.f39905h + length])) {
            return 0;
        }
        this.f39905h += length;
        this.f39909l = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fe, code lost:
        if (r10 == true) goto L51;
     */
    /* JADX WARN: Type inference failed for: r0v34, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* renamed from: R */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m1113R() {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.C9331a.m1113R():int");
    }

    /* renamed from: U */
    private void m1112U(int i) {
        int i2 = this.f39914q;
        int[] iArr = this.f39913p;
        if (i2 == iArr.length) {
            int i3 = i2 * 2;
            this.f39913p = Arrays.copyOf(iArr, i3);
            this.f39916s = Arrays.copyOf(this.f39916s, i3);
            this.f39915r = (String[]) Arrays.copyOf(this.f39915r, i3);
        }
        int[] iArr2 = this.f39913p;
        int i4 = this.f39914q;
        this.f39914q = i4 + 1;
        iArr2[i4] = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* renamed from: W */
    private char m1111W() {
        int i;
        int i2;
        if (this.f39905h != this.f39906i || m1096u(1)) {
            char[] cArr = this.f39904g;
            int i3 = this.f39905h;
            int i4 = i3 + 1;
            this.f39905h = i4;
            char c = cArr[i3];
            if (c == '\n') {
                this.f39907j++;
                this.f39908k = i4;
            } else if (c != '\"' && c != '\'' && c != '/' && c != '\\') {
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
                    throw m1100i0("Invalid escape sequence");
                }
                if (i4 + 4 > this.f39906i && !m1096u(4)) {
                    throw m1100i0("Unterminated escape sequence");
                }
                int i5 = this.f39905h;
                int i6 = i5;
                char c2 = 0;
                while (true) {
                    char c3 = c2;
                    int i7 = i6;
                    if (i7 >= i5 + 4) {
                        this.f39905h += 4;
                        return c3;
                    }
                    char c4 = this.f39904g[i7];
                    char c5 = (char) (c3 << 4);
                    if (c4 < '0' || c4 > '9') {
                        if (c4 >= 'a' && c4 <= 'f') {
                            i = c4 - 'a';
                        } else if (c4 < 'A' || c4 > 'F') {
                            break;
                        } else {
                            i = c4 - 'A';
                        }
                        i2 = i + 10;
                    } else {
                        i2 = c4 - '0';
                    }
                    char c6 = (char) (c5 + i2);
                    i6 = i7 + 1;
                    c2 = c6;
                }
                throw new NumberFormatException("\\u" + new String(this.f39904g, this.f39905h, 4));
            }
            return c;
        }
        throw m1100i0("Unterminated escape sequence");
    }

    /* renamed from: Z */
    private void m1109Z(char c) {
        char[] cArr = this.f39904g;
        do {
            int i = this.f39905h;
            int i2 = this.f39906i;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = cArr[i];
                if (c2 == c) {
                    this.f39905h = i3;
                    return;
                } else if (c2 == '\\') {
                    this.f39905h = i3;
                    m1111W();
                    i = this.f39905h;
                    i2 = this.f39906i;
                } else {
                    if (c2 == '\n') {
                        this.f39907j++;
                        this.f39908k = i3;
                    }
                    i = i3;
                }
            }
            this.f39905h = i;
        } while (m1096u(1));
        throw m1100i0("Unterminated string");
    }

    /* renamed from: a0 */
    private boolean m1107a0(String str) {
        int length = str.length();
        while (true) {
            if (this.f39905h + length <= this.f39906i || m1096u(length)) {
                char[] cArr = this.f39904g;
                int i = this.f39905h;
                if (cArr[i] != '\n') {
                    for (int i2 = 0; i2 < length; i2++) {
                        if (this.f39904g[this.f39905h + i2] != str.charAt(i2)) {
                            break;
                        }
                    }
                    return true;
                }
                this.f39907j++;
                this.f39908k = i + 1;
                this.f39905h++;
            } else {
                return false;
            }
        }
    }

    /* renamed from: d0 */
    private void m1106d0() {
        char c;
        do {
            if (this.f39905h >= this.f39906i && !m1096u(1)) {
                return;
            }
            char[] cArr = this.f39904g;
            int i = this.f39905h;
            int i2 = i + 1;
            this.f39905h = i2;
            c = cArr[i];
            if (c == '\n') {
                this.f39907j++;
                this.f39908k = i2;
                return;
            }
        } while (c != '\r');
    }

    /* renamed from: e0 */
    private void m1104e0() {
        do {
            int i = 0;
            while (true) {
                int i2 = this.f39905h;
                if (i2 + i < this.f39906i) {
                    char c = this.f39904g[i2 + i];
                    if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                        if (c != '#') {
                            if (c != ',') {
                                if (c != '/' && c != '=') {
                                    if (c != '{' && c != '}' && c != ':') {
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
                    this.f39905h = i2 + i;
                }
            }
            m1103f();
            this.f39905h += i;
            return;
        } while (m1096u(1));
    }

    /* renamed from: f */
    private void m1103f() {
        if (this.f39903f) {
            return;
        }
        throw m1100i0("Use JsonReader.setLenient(true) to accept malformed JSON");
    }

    /* renamed from: g */
    private void m1102g() {
        m1120D(true);
        int i = this.f39905h - 1;
        this.f39905h = i;
        char[] cArr = f39901d;
        if (i + cArr.length <= this.f39906i || m1096u(cArr.length)) {
            int i2 = 0;
            while (true) {
                char[] cArr2 = f39901d;
                if (i2 >= cArr2.length) {
                    this.f39905h += cArr2.length;
                    return;
                } else if (this.f39904g[this.f39905h + i2] != cArr2[i2]) {
                    return;
                } else {
                    i2++;
                }
            }
        }
    }

    /* renamed from: i0 */
    private IOException m1100i0(String str) {
        throw new MalformedJsonException(str + m1094z());
    }

    /* renamed from: u */
    private boolean m1096u(int i) {
        int i2;
        int i3;
        char[] cArr = this.f39904g;
        int i4 = this.f39908k;
        int i5 = this.f39905h;
        this.f39908k = i4 - i5;
        int i6 = this.f39906i;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.f39906i = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.f39906i = 0;
        }
        this.f39905h = 0;
        do {
            Reader reader = this.f39902e;
            int i8 = this.f39906i;
            int read = reader.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.f39906i + read;
            this.f39906i = i2;
            i3 = i;
            if (this.f39907j == 0) {
                int i9 = this.f39908k;
                i3 = i;
                if (i9 == 0) {
                    i3 = i;
                    if (i2 > 0) {
                        i3 = i;
                        if (cArr[0] == 65279) {
                            this.f39905h++;
                            this.f39908k = i9 + 1;
                            i3 = i + 1;
                        }
                    }
                }
            }
            i = i3;
        } while (i2 < i3);
        return true;
    }

    /* renamed from: y */
    private boolean m1095y(char c) {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
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
        m1103f();
        return false;
    }

    /* renamed from: A */
    public boolean m1122A() {
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
        }
        if (i2 == 5) {
            this.f39909l = 0;
            int[] iArr = this.f39916s;
            int i3 = this.f39914q - 1;
            iArr[i3] = iArr[i3] + 1;
            return true;
        } else if (i2 == 6) {
            this.f39909l = 0;
            int[] iArr2 = this.f39916s;
            int i4 = this.f39914q - 1;
            iArr2[i4] = iArr2[i4] + 1;
            return false;
        } else {
            throw new IllegalStateException("Expected a boolean but was " + m1115P() + m1094z());
        }
    }

    /* renamed from: C */
    public String m1121C() {
        String str;
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
        }
        if (i2 == 14) {
            str = m1116N();
        } else if (i2 == 12) {
            str = m1118I('\'');
        } else if (i2 != 13) {
            throw new IllegalStateException("Expected a name but was " + m1115P() + m1094z());
        } else {
            str = m1118I('\"');
        }
        this.f39909l = 0;
        this.f39915r[this.f39914q - 1] = str;
        return str;
    }

    /* renamed from: E */
    public void m1119E() {
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
        }
        if (i2 == 7) {
            this.f39909l = 0;
            int[] iArr = this.f39916s;
            int i3 = this.f39914q - 1;
            iArr[i3] = iArr[i3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + m1115P() + m1094z());
    }

    /* renamed from: L */
    public String m1117L() {
        String str;
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
        }
        if (i2 == 10) {
            str = m1116N();
        } else if (i2 == 8) {
            str = m1118I('\'');
        } else if (i2 == 9) {
            str = m1118I('\"');
        } else if (i2 == 11) {
            str = this.f39912o;
            this.f39912o = null;
        } else if (i2 == 15) {
            str = Long.toString(this.f39910m);
        } else if (i2 != 16) {
            throw new IllegalStateException("Expected a string but was " + m1115P() + m1094z());
        } else {
            str = new String(this.f39904g, this.f39905h, this.f39911n);
            this.f39905h += this.f39911n;
        }
        this.f39909l = 0;
        int[] iArr = this.f39916s;
        int i3 = this.f39914q - 1;
        iArr[i3] = iArr[i3] + 1;
        return str;
    }

    /* renamed from: P */
    public JsonToken m1115P() {
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
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

    /* renamed from: Y */
    public final void m1110Y(boolean z) {
        this.f39903f = z;
    }

    /* renamed from: a */
    public void m1108a() {
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
        }
        if (i2 == 3) {
            m1112U(1);
            this.f39916s[this.f39914q - 1] = 0;
            this.f39909l = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + m1115P() + m1094z());
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f39909l = 0;
        this.f39913p[0] = 8;
        this.f39914q = 1;
        this.f39902e.close();
    }

    /* renamed from: e */
    public void m1105e() {
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
        }
        if (i2 == 1) {
            m1112U(3);
            this.f39909l = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + m1115P() + m1094z());
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = this.f39914q;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.f39913p[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.f39916s[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String[] strArr = this.f39915r;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: h0 */
    public void m1101h0() {
        int i;
        int i2 = 0;
        do {
            int i3 = this.f39909l;
            int i4 = i3;
            if (i3 == 0) {
                i4 = m1099k();
            }
            if (i4 == 3) {
                m1112U(1);
            } else if (i4 == 1) {
                m1112U(3);
            } else {
                if (i4 == 4) {
                    this.f39914q--;
                } else if (i4 == 2) {
                    this.f39914q--;
                } else {
                    if (i4 == 14 || i4 == 10) {
                        m1104e0();
                        i = i2;
                    } else if (i4 == 8 || i4 == 12) {
                        m1109Z('\'');
                        i = i2;
                    } else if (i4 == 9 || i4 == 13) {
                        m1109Z('\"');
                        i = i2;
                    } else {
                        i = i2;
                        if (i4 == 16) {
                            this.f39905h += this.f39911n;
                            i = i2;
                        }
                    }
                    this.f39909l = 0;
                    i2 = i;
                }
                i = i2 - 1;
                this.f39909l = 0;
                i2 = i;
            }
            i = i2 + 1;
            this.f39909l = 0;
            i2 = i;
        } while (i != 0);
        int[] iArr = this.f39916s;
        int i5 = this.f39914q;
        int i6 = i5 - 1;
        iArr[i6] = iArr[i6] + 1;
        this.f39915r[i5 - 1] = "null";
    }

    /* renamed from: k */
    int m1099k() {
        int m1120D;
        int[] iArr = this.f39913p;
        int i = this.f39914q;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int m1120D2 = m1120D(true);
            if (m1120D2 != 44) {
                if (m1120D2 != 59) {
                    if (m1120D2 != 93) {
                        throw m1100i0("Unterminated array");
                    }
                    this.f39909l = 4;
                    return 4;
                }
                m1103f();
            }
        } else if (i2 == 3 || i2 == 5) {
            iArr[i - 1] = 4;
            if (i2 == 5 && (m1120D = m1120D(true)) != 44) {
                if (m1120D != 59) {
                    if (m1120D != 125) {
                        throw m1100i0("Unterminated object");
                    }
                    this.f39909l = 2;
                    return 2;
                }
                m1103f();
            }
            int m1120D3 = m1120D(true);
            if (m1120D3 == 34) {
                this.f39909l = 13;
                return 13;
            } else if (m1120D3 == 39) {
                m1103f();
                this.f39909l = 12;
                return 12;
            } else if (m1120D3 == 125) {
                if (i2 == 5) {
                    throw m1100i0("Expected name");
                }
                this.f39909l = 2;
                return 2;
            } else {
                m1103f();
                this.f39905h--;
                if (!m1095y((char) m1120D3)) {
                    throw m1100i0("Expected name");
                }
                this.f39909l = 14;
                return 14;
            }
        } else if (i2 == 4) {
            iArr[i - 1] = 5;
            int m1120D4 = m1120D(true);
            if (m1120D4 != 58) {
                if (m1120D4 != 61) {
                    throw m1100i0("Expected ':'");
                }
                m1103f();
                if (this.f39905h < this.f39906i || m1096u(1)) {
                    char[] cArr = this.f39904g;
                    int i3 = this.f39905h;
                    if (cArr[i3] == '>') {
                        this.f39905h = i3 + 1;
                    }
                }
            }
        } else if (i2 == 6) {
            if (this.f39903f) {
                m1102g();
            }
            this.f39913p[this.f39914q - 1] = 7;
        } else if (i2 == 7) {
            if (m1120D(false) == -1) {
                this.f39909l = 17;
                return 17;
            }
            m1103f();
            this.f39905h--;
        } else if (i2 == 8) {
            throw new IllegalStateException("JsonReader is closed");
        }
        int m1120D5 = m1120D(true);
        if (m1120D5 == 34) {
            this.f39909l = 9;
            return 9;
        } else if (m1120D5 == 39) {
            m1103f();
            this.f39909l = 8;
            return 8;
        } else {
            if (m1120D5 != 44 && m1120D5 != 59) {
                if (m1120D5 == 91) {
                    this.f39909l = 3;
                    return 3;
                } else if (m1120D5 != 93) {
                    if (m1120D5 == 123) {
                        this.f39909l = 1;
                        return 1;
                    }
                    this.f39905h--;
                    int m1114Q = m1114Q();
                    if (m1114Q != 0) {
                        return m1114Q;
                    }
                    int m1113R = m1113R();
                    if (m1113R != 0) {
                        return m1113R;
                    }
                    if (!m1095y(this.f39904g[this.f39905h])) {
                        throw m1100i0("Expected value");
                    }
                    m1103f();
                    this.f39909l = 10;
                    return 10;
                } else if (i2 == 1) {
                    this.f39909l = 4;
                    return 4;
                }
            }
            if (i2 != 1 && i2 != 2) {
                throw m1100i0("Unexpected value");
            }
            m1103f();
            this.f39905h--;
            this.f39909l = 7;
            return 7;
        }
    }

    /* renamed from: p */
    public void m1098p() {
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
        }
        if (i2 != 4) {
            throw new IllegalStateException("Expected END_ARRAY but was " + m1115P() + m1094z());
        }
        int i3 = this.f39914q - 1;
        this.f39914q = i3;
        int[] iArr = this.f39916s;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.f39909l = 0;
    }

    /* renamed from: q */
    public void m1097q() {
        int i = this.f39909l;
        int i2 = i;
        if (i == 0) {
            i2 = m1099k();
        }
        if (i2 != 2) {
            throw new IllegalStateException("Expected END_OBJECT but was " + m1115P() + m1094z());
        }
        int i3 = this.f39914q - 1;
        this.f39914q = i3;
        this.f39915r[i3] = null;
        int[] iArr = this.f39916s;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.f39909l = 0;
    }

    public String toString() {
        return C9331a.class.getSimpleName() + m1094z();
    }

    /* renamed from: z */
    String m1094z() {
        int i = this.f39907j;
        int i2 = this.f39905h;
        int i3 = this.f39908k;
        return " at line " + (i + 1) + " column " + ((i2 - i3) + 1) + " path " + getPath();
    }
}
