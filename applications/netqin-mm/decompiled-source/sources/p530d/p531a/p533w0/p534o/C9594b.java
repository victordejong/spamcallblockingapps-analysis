package p530d.p531a.p533w0.p534o;

import javax.security.auth.x500.X500Principal;
/* renamed from: d.a.w0.o.b */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/b.class */
public final class C9594b {

    /* renamed from: a */
    public final String f36616a;

    /* renamed from: b */
    public final int f36617b;

    /* renamed from: c */
    public int f36618c;

    /* renamed from: d */
    public int f36619d;

    /* renamed from: e */
    public int f36620e;

    /* renamed from: f */
    public int f36621f;

    /* renamed from: g */
    public char[] f36622g;

    public C9594b(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f36616a = name;
        this.f36617b = name.length();
    }

    /* renamed from: a */
    public final int m2301a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 < this.f36617b) {
            char c = this.f36622g[i];
            if (c >= '0' && c <= '9') {
                i2 = c - '0';
            } else if (c >= 'a' && c <= 'f') {
                i2 = c - 'W';
            } else if (c < 'A' || c > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f36616a);
            } else {
                i2 = c - '7';
            }
            char c2 = this.f36622g[i4];
            if (c2 >= '0' && c2 <= '9') {
                i3 = c2 - '0';
            } else if (c2 >= 'a' && c2 <= 'f') {
                i3 = c2 - 'W';
            } else if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f36616a);
            } else {
                i3 = c2 - '7';
            }
            return (i2 << 4) + i3;
        }
        throw new IllegalStateException("Malformed DN: " + this.f36616a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009a, code lost:
        r0 = r7.f36622g;
        r0 = r7.f36619d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b3, code lost:
        return new java.lang.String(r0, r0, r7.f36620e - r0);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m2302a() {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p533w0.p534o.C9594b.m2302a():java.lang.String");
    }

    /* renamed from: a */
    public String m2300a(String str) {
        this.f36618c = 0;
        this.f36619d = 0;
        this.f36620e = 0;
        this.f36621f = 0;
        this.f36622g = this.f36616a.toCharArray();
        String e = m2296e();
        String str2 = e;
        if (e == null) {
            return null;
        }
        do {
            int i = this.f36618c;
            if (i == this.f36617b) {
                return null;
            }
            char c = this.f36622g[i];
            String a = c != '\"' ? c != '#' ? (c == '+' || c == ',' || c == ';') ? "" : m2302a() : m2297d() : m2295f();
            if (str.equalsIgnoreCase(str2)) {
                return a;
            }
            int i2 = this.f36618c;
            if (i2 >= this.f36617b) {
                return null;
            }
            char[] cArr = this.f36622g;
            if (cArr[i2] == ',' || cArr[i2] == ';' || cArr[i2] == '+') {
                this.f36618c++;
                str2 = m2296e();
            } else {
                throw new IllegalStateException("Malformed DN: " + this.f36616a);
            }
        } while (str2 != null);
        throw new IllegalStateException("Malformed DN: " + this.f36616a);
    }

    /* renamed from: b */
    public final char m2299b() {
        int i = this.f36618c + 1;
        this.f36618c = i;
        if (i != this.f36617b) {
            char c = this.f36622g[i];
            if (!(c == ' ' || c == '%' || c == '\\' || c == '_' || c == '\"' || c == '#')) {
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
                                return m2298c();
                        }
                }
            }
            return this.f36622g[this.f36618c];
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f36616a);
    }

    /* renamed from: c */
    public final char m2298c() {
        int i;
        int i2;
        int a = m2301a(this.f36618c);
        this.f36618c++;
        if (a < 128) {
            return (char) a;
        }
        if (a < 192 || a > 247) {
            return '?';
        }
        if (a <= 223) {
            i2 = a & 31;
            i = 1;
        } else if (a <= 239) {
            i = 2;
            i2 = a & 15;
        } else {
            i = 3;
            i2 = a & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.f36618c + 1;
            this.f36618c = i4;
            if (i4 == this.f36617b || this.f36622g[i4] != '\\') {
                return '?';
            }
            int i5 = i4 + 1;
            this.f36618c = i5;
            int a2 = m2301a(i5);
            this.f36618c++;
            if ((a2 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (a2 & 63);
        }
        return (char) i2;
    }

    /* renamed from: d */
    public final String m2297d() {
        int i = this.f36618c;
        if (i + 4 < this.f36617b) {
            this.f36619d = i;
            this.f36618c = i + 1;
            while (true) {
                int i2 = this.f36618c;
                if (i2 == this.f36617b) {
                    break;
                }
                char[] cArr = this.f36622g;
                if (cArr[i2] == '+' || cArr[i2] == ',' || cArr[i2] == ';') {
                    break;
                } else if (cArr[i2] == ' ') {
                    this.f36620e = i2;
                    this.f36618c = i2 + 1;
                    while (true) {
                        int i3 = this.f36618c;
                        if (i3 >= this.f36617b || this.f36622g[i3] != ' ') {
                            break;
                        }
                        this.f36618c = i3 + 1;
                    }
                } else {
                    if (cArr[i2] >= 'A' && cArr[i2] <= 'F') {
                        cArr[i2] = (char) (cArr[i2] + ' ');
                    }
                    this.f36618c++;
                }
            }
            this.f36620e = this.f36618c;
            int i4 = this.f36620e;
            int i5 = this.f36619d;
            int i6 = i4 - i5;
            if (i6 < 5 || (i6 & 1) == 0) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f36616a);
            }
            int i7 = i6 / 2;
            byte[] bArr = new byte[i7];
            int i8 = i5 + 1;
            for (int i9 = 0; i9 < i7; i9++) {
                bArr[i9] = (byte) m2301a(i8);
                i8 += 2;
            }
            return new String(this.f36622g, this.f36619d, i6);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f36616a);
    }

    /* renamed from: e */
    public final String m2296e() {
        while (true) {
            int i = this.f36618c;
            if (i >= this.f36617b || this.f36622g[i] != ' ') {
                break;
            }
            this.f36618c = i + 1;
        }
        int i2 = this.f36618c;
        if (i2 == this.f36617b) {
            return null;
        }
        this.f36619d = i2;
        this.f36618c = i2 + 1;
        while (true) {
            int i3 = this.f36618c;
            if (i3 >= this.f36617b) {
                break;
            }
            char[] cArr = this.f36622g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.f36618c = i3 + 1;
        }
        int i4 = this.f36618c;
        if (i4 < this.f36617b) {
            this.f36620e = i4;
            if (this.f36622g[i4] == ' ') {
                while (true) {
                    int i5 = this.f36618c;
                    if (i5 >= this.f36617b) {
                        break;
                    }
                    char[] cArr2 = this.f36622g;
                    if (cArr2[i5] == '=' || cArr2[i5] != ' ') {
                        break;
                    }
                    this.f36618c = i5 + 1;
                }
                char[] cArr3 = this.f36622g;
                int i6 = this.f36618c;
                if (cArr3[i6] != '=' || i6 == this.f36617b) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f36616a);
                }
            }
            this.f36618c++;
            while (true) {
                int i7 = this.f36618c;
                if (i7 >= this.f36617b || this.f36622g[i7] != ' ') {
                    break;
                }
                this.f36618c = i7 + 1;
            }
            int i8 = this.f36620e;
            int i9 = this.f36619d;
            if (i8 - i9 > 4) {
                char[] cArr4 = this.f36622g;
                if (cArr4[i9 + 3] == '.' && (cArr4[i9] == 'O' || cArr4[i9] == 'o')) {
                    char[] cArr5 = this.f36622g;
                    int i10 = this.f36619d;
                    if (cArr5[i10 + 1] == 'I' || cArr5[i10 + 1] == 'i') {
                        char[] cArr6 = this.f36622g;
                        int i11 = this.f36619d;
                        if (cArr6[i11 + 2] == 'D' || cArr6[i11 + 2] == 'd') {
                            this.f36619d += 4;
                        }
                    }
                }
            }
            char[] cArr7 = this.f36622g;
            int i12 = this.f36619d;
            return new String(cArr7, i12, this.f36620e - i12);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f36616a);
    }

    /* renamed from: f */
    public final String m2295f() {
        int i = this.f36618c + 1;
        this.f36618c = i;
        this.f36619d = i;
        this.f36620e = i;
        while (true) {
            int i2 = this.f36618c;
            if (i2 != this.f36617b) {
                char[] cArr = this.f36622g;
                if (cArr[i2] == '\"') {
                    this.f36618c = i2 + 1;
                    while (true) {
                        int i3 = this.f36618c;
                        if (i3 >= this.f36617b || this.f36622g[i3] != ' ') {
                            break;
                        }
                        this.f36618c = i3 + 1;
                    }
                    char[] cArr2 = this.f36622g;
                    int i4 = this.f36619d;
                    return new String(cArr2, i4, this.f36620e - i4);
                }
                if (cArr[i2] == '\\') {
                    cArr[this.f36620e] = m2299b();
                } else {
                    cArr[this.f36620e] = cArr[i2];
                }
                this.f36618c++;
                this.f36620e++;
            } else {
                throw new IllegalStateException("Unexpected end of DN: " + this.f36616a);
            }
        }
    }
}
