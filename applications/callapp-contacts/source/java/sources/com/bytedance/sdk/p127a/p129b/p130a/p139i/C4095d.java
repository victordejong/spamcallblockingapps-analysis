package com.bytedance.sdk.p127a.p129b.p130a.p139i;

import javax.security.auth.x500.X500Principal;
/* renamed from: com.bytedance.sdk.a.b.a.i.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/i/d.class */
final class C4095d {

    /* renamed from: a */
    private final String f14868a;

    /* renamed from: b */
    private final int f14869b;

    /* renamed from: c */
    private int f14870c;

    /* renamed from: d */
    private int f14871d;

    /* renamed from: e */
    private int f14872e;

    /* renamed from: f */
    private int f14873f;

    /* renamed from: g */
    private char[] f14874g;

    public C4095d(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f14868a = name;
        this.f14869b = name.length();
    }

    /* renamed from: a */
    private int m36628a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f14869b) {
            throw new IllegalStateException("Malformed DN: " + this.f14868a);
        }
        char[] cArr = this.f14874g;
        char c = cArr[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else if (c < 'A' || c > 'F') {
            throw new IllegalStateException("Malformed DN: " + this.f14868a);
        } else {
            i2 = c - '7';
        }
        char c2 = cArr[i4];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else if (c2 < 'A' || c2 > 'F') {
            throw new IllegalStateException("Malformed DN: " + this.f14868a);
        } else {
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    /* renamed from: a */
    private String m36629a() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        while (true) {
            i = this.f14870c;
            i2 = this.f14869b;
            if (i >= i2 || this.f14874g[i] != ' ') {
                break;
            }
            this.f14870c = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.f14871d = i;
        this.f14870c = i + 1;
        while (true) {
            i3 = this.f14870c;
            i4 = this.f14869b;
            if (i3 >= i4) {
                break;
            }
            char[] cArr = this.f14874g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.f14870c = i3 + 1;
        }
        if (i3 >= i4) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f14868a);
        }
        this.f14872e = i3;
        if (this.f14874g[i3] == ' ') {
            while (true) {
                i6 = this.f14870c;
                i7 = this.f14869b;
                if (i6 >= i7) {
                    break;
                }
                char[] cArr2 = this.f14874g;
                if (cArr2[i6] == '=' || cArr2[i6] != ' ') {
                    break;
                }
                this.f14870c = i6 + 1;
            }
            if (this.f14874g[i6] != '=' || i6 == i7) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f14868a);
            }
        }
        do {
            i5 = this.f14870c + 1;
            this.f14870c = i5;
            if (i5 >= this.f14869b) {
                break;
            }
        } while (this.f14874g[i5] == ' ');
        int i8 = this.f14872e;
        int i9 = this.f14871d;
        if (i8 - i9 > 4) {
            char[] cArr3 = this.f14874g;
            if (cArr3[i9 + 3] == '.' && ((cArr3[i9] == 'O' || cArr3[i9] == 'o') && ((cArr3[i9 + 1] == 'I' || cArr3[i9 + 1] == 'i') && (cArr3[i9 + 2] == 'D' || cArr3[i9 + 2] == 'd')))) {
                this.f14871d = i9 + 4;
            }
        }
        char[] cArr4 = this.f14874g;
        int i10 = this.f14871d;
        return new String(cArr4, i10, this.f14872e - i10);
    }

    /* renamed from: b */
    private String m36626b() {
        int i = this.f14870c + 1;
        this.f14870c = i;
        this.f14871d = i;
        this.f14872e = i;
        while (true) {
            int i2 = this.f14870c;
            if (i2 == this.f14869b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f14868a);
            }
            char[] cArr = this.f14874g;
            if (cArr[i2] == '\"') {
                this.f14870c = i2 + 1;
                while (true) {
                    int i3 = this.f14870c;
                    if (i3 >= this.f14869b || this.f14874g[i3] != ' ') {
                        break;
                    }
                    this.f14870c = i3 + 1;
                }
                char[] cArr2 = this.f14874g;
                int i4 = this.f14871d;
                return new String(cArr2, i4, this.f14872e - i4);
            }
            if (cArr[i2] == '\\') {
                cArr[this.f14872e] = m36623e();
            } else {
                cArr[this.f14872e] = cArr[i2];
            }
            this.f14870c++;
            this.f14872e++;
        }
    }

    /* renamed from: c */
    private String m36625c() {
        int i;
        int i2 = this.f14870c;
        if (i2 + 4 >= this.f14869b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f14868a);
        }
        this.f14871d = i2;
        this.f14870c = i2 + 1;
        while (true) {
            i = this.f14870c;
            if (i == this.f14869b) {
                break;
            }
            char[] cArr = this.f14874g;
            if (cArr[i] == '+' || cArr[i] == ',' || cArr[i] == ';') {
                break;
            } else if (cArr[i] == ' ') {
                this.f14872e = i;
                this.f14870c = i + 1;
                while (true) {
                    int i3 = this.f14870c;
                    if (i3 >= this.f14869b || this.f14874g[i3] != ' ') {
                        break;
                    }
                    this.f14870c = i3 + 1;
                }
            } else {
                if (cArr[i] >= 'A' && cArr[i] <= 'F') {
                    cArr[i] = (char) (cArr[i] + ' ');
                }
                this.f14870c = i + 1;
            }
        }
        this.f14872e = i;
        int i4 = this.f14872e;
        int i5 = this.f14871d;
        int i6 = i4 - i5;
        if (i6 < 5 || (i6 & 1) == 0) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f14868a);
        }
        int i7 = i6 / 2;
        byte[] bArr = new byte[i7];
        int i8 = i5 + 1;
        for (int i9 = 0; i9 < i7; i9++) {
            bArr[i9] = (byte) m36628a(i8);
            i8 += 2;
        }
        return new String(this.f14874g, this.f14871d, i6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009a, code lost:
        r0 = r7.f14874g;
        r0 = r7.f14871d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b3, code lost:
        return new java.lang.String(r0, r0, r7.f14872e - r0);
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m36624d() {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.p127a.p129b.p130a.p139i.C4095d.m36624d():java.lang.String");
    }

    /* renamed from: e */
    private char m36623e() {
        int i = this.f14870c + 1;
        this.f14870c = i;
        if (i == this.f14869b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f14868a);
        }
        char[] cArr = this.f14874g;
        char c = cArr[i];
        if (c != ' ' && c != '%' && c != '\\' && c != '_' && c != '\"' && c != '#') {
            switch (c) {
                case '*':
                case '+':
                case ',':
                    break;
                default:
                    switch (c) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            return m36622f();
                    }
            }
        }
        return cArr[i];
    }

    /* renamed from: f */
    private char m36622f() {
        int i;
        int i2;
        int m36628a = m36628a(this.f14870c);
        this.f14870c++;
        if (m36628a < 128) {
            return (char) m36628a;
        }
        if (m36628a < 192 || m36628a > 247) {
            return '?';
        }
        if (m36628a <= 223) {
            i2 = m36628a & 31;
            i = 1;
        } else if (m36628a <= 239) {
            i = 2;
            i2 = m36628a & 15;
        } else {
            i = 3;
            i2 = m36628a & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.f14870c + 1;
            this.f14870c = i4;
            if (i4 == this.f14869b || this.f14874g[i4] != '\\') {
                return '?';
            }
            int i5 = i4 + 1;
            this.f14870c = i5;
            int m36628a2 = m36628a(i5);
            this.f14870c++;
            if ((m36628a2 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (m36628a2 & 63);
        }
        return (char) i2;
    }

    /* renamed from: a */
    public final String m36627a(String str) {
        this.f14870c = 0;
        this.f14871d = 0;
        this.f14872e = 0;
        this.f14873f = 0;
        this.f14874g = this.f14868a.toCharArray();
        String m36629a = m36629a();
        String str2 = m36629a;
        if (m36629a == null) {
            return null;
        }
        do {
            int i = this.f14870c;
            if (i == this.f14869b) {
                return null;
            }
            char c = this.f14874g[i];
            String m36624d = c != '\"' ? c != '#' ? (c == '+' || c == ',' || c == ';') ? "" : m36624d() : m36625c() : m36626b();
            if (str.equalsIgnoreCase(str2)) {
                return m36624d;
            }
            int i2 = this.f14870c;
            if (i2 >= this.f14869b) {
                return null;
            }
            char[] cArr = this.f14874g;
            if (cArr[i2] != ',' && cArr[i2] != ';' && cArr[i2] != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f14868a);
            }
            this.f14870c = i2 + 1;
            str2 = m36629a();
        } while (str2 != null);
        throw new IllegalStateException("Malformed DN: " + this.f14868a);
    }
}
