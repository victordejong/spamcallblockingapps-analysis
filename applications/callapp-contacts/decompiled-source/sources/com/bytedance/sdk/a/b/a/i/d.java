package com.bytedance.sdk.a.b.a.i;

import javax.security.auth.x500.X500Principal;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/i/d.class */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private final String f8056a;

    /* renamed from: b  reason: collision with root package name */
    private final int f8057b;

    /* renamed from: c  reason: collision with root package name */
    private int f8058c;

    /* renamed from: d  reason: collision with root package name */
    private int f8059d;
    private int e;
    private int f;
    private char[] g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f8056a = name;
        this.f8057b = name.length();
    }

    private int a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 < this.f8057b) {
            char[] cArr = this.g;
            char c2 = cArr[i];
            if (c2 >= '0' && c2 <= '9') {
                i2 = c2 - '0';
            } else if (c2 >= 'a' && c2 <= 'f') {
                i2 = c2 - 'W';
            } else if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f8056a);
            } else {
                i2 = c2 - '7';
            }
            char c3 = cArr[i4];
            if (c3 >= '0' && c3 <= '9') {
                i3 = c3 - '0';
            } else if (c3 >= 'a' && c3 <= 'f') {
                i3 = c3 - 'W';
            } else if (c3 < 'A' || c3 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f8056a);
            } else {
                i3 = c3 - '7';
            }
            return (i2 << 4) + i3;
        }
        throw new IllegalStateException("Malformed DN: " + this.f8056a);
    }

    private String a() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        while (true) {
            i = this.f8058c;
            i2 = this.f8057b;
            if (i >= i2 || this.g[i] != ' ') {
                break;
            }
            this.f8058c = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.f8059d = i;
        this.f8058c = i + 1;
        while (true) {
            i3 = this.f8058c;
            i4 = this.f8057b;
            if (i3 >= i4) {
                break;
            }
            char[] cArr = this.g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.f8058c = i3 + 1;
        }
        if (i3 < i4) {
            this.e = i3;
            if (this.g[i3] == ' ') {
                while (true) {
                    i6 = this.f8058c;
                    i7 = this.f8057b;
                    if (i6 >= i7) {
                        break;
                    }
                    char[] cArr2 = this.g;
                    if (cArr2[i6] == '=' || cArr2[i6] != ' ') {
                        break;
                    }
                    this.f8058c = i6 + 1;
                }
                if (this.g[i6] != '=' || i6 == i7) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f8056a);
                }
            }
            do {
                i5 = this.f8058c + 1;
                this.f8058c = i5;
                if (i5 >= this.f8057b) {
                    break;
                }
            } while (this.g[i5] == ' ');
            int i8 = this.e;
            int i9 = this.f8059d;
            if (i8 - i9 > 4) {
                char[] cArr3 = this.g;
                if (cArr3[i9 + 3] == '.' && ((cArr3[i9] == 'O' || cArr3[i9] == 'o') && ((cArr3[i9 + 1] == 'I' || cArr3[i9 + 1] == 'i') && (cArr3[i9 + 2] == 'D' || cArr3[i9 + 2] == 'd')))) {
                    this.f8059d = i9 + 4;
                }
            }
            char[] cArr4 = this.g;
            int i10 = this.f8059d;
            return new String(cArr4, i10, this.e - i10);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f8056a);
    }

    private String b() {
        int i = this.f8058c + 1;
        this.f8058c = i;
        this.f8059d = i;
        this.e = i;
        while (true) {
            int i2 = this.f8058c;
            if (i2 != this.f8057b) {
                char[] cArr = this.g;
                if (cArr[i2] == '\"') {
                    this.f8058c = i2 + 1;
                    while (true) {
                        int i3 = this.f8058c;
                        if (i3 >= this.f8057b || this.g[i3] != ' ') {
                            break;
                        }
                        this.f8058c = i3 + 1;
                    }
                    char[] cArr2 = this.g;
                    int i4 = this.f8059d;
                    return new String(cArr2, i4, this.e - i4);
                }
                if (cArr[i2] == '\\') {
                    cArr[this.e] = e();
                } else {
                    cArr[this.e] = cArr[i2];
                }
                this.f8058c++;
                this.e++;
            } else {
                throw new IllegalStateException("Unexpected end of DN: " + this.f8056a);
            }
        }
    }

    private String c() {
        int i;
        int i2 = this.f8058c;
        if (i2 + 4 < this.f8057b) {
            this.f8059d = i2;
            this.f8058c = i2 + 1;
            while (true) {
                i = this.f8058c;
                if (i == this.f8057b) {
                    break;
                }
                char[] cArr = this.g;
                if (cArr[i] == '+' || cArr[i] == ',' || cArr[i] == ';') {
                    break;
                } else if (cArr[i] == ' ') {
                    this.e = i;
                    this.f8058c = i + 1;
                    while (true) {
                        int i3 = this.f8058c;
                        if (i3 >= this.f8057b || this.g[i3] != ' ') {
                            break;
                        }
                        this.f8058c = i3 + 1;
                    }
                } else {
                    if (cArr[i] >= 'A' && cArr[i] <= 'F') {
                        cArr[i] = (char) (cArr[i] + ' ');
                    }
                    this.f8058c = i + 1;
                }
            }
            this.e = i;
            int i4 = this.e;
            int i5 = this.f8059d;
            int i6 = i4 - i5;
            if (i6 < 5 || (i6 & 1) == 0) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f8056a);
            }
            int i7 = i6 / 2;
            byte[] bArr = new byte[i7];
            int i8 = i5 + 1;
            for (int i9 = 0; i9 < i7; i9++) {
                bArr[i9] = (byte) a(i8);
                i8 += 2;
            }
            return new String(this.g, this.f8059d, i6);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f8056a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009a, code lost:
        r0 = r7.g;
        r0 = r7.f8059d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b3, code lost:
        return new java.lang.String(r0, r0, r7.e - r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String d() {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.a.b.a.i.d.d():java.lang.String");
    }

    private char e() {
        int i = this.f8058c + 1;
        this.f8058c = i;
        if (i != this.f8057b) {
            char[] cArr = this.g;
            char c2 = cArr[i];
            if (!(c2 == ' ' || c2 == '%' || c2 == '\\' || c2 == '_' || c2 == '\"' || c2 == '#')) {
                switch (c2) {
                    case '*':
                    case '+':
                    case ',':
                        break;
                    default:
                        switch (c2) {
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                                break;
                            default:
                                return f();
                        }
                }
            }
            return cArr[i];
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f8056a);
    }

    private char f() {
        int i;
        int i2;
        int a2 = a(this.f8058c);
        this.f8058c++;
        if (a2 < 128) {
            return (char) a2;
        }
        if (a2 < 192 || a2 > 247) {
            return '?';
        }
        if (a2 <= 223) {
            i2 = a2 & 31;
            i = 1;
        } else if (a2 <= 239) {
            i = 2;
            i2 = a2 & 15;
        } else {
            i = 3;
            i2 = a2 & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.f8058c + 1;
            this.f8058c = i4;
            if (i4 == this.f8057b || this.g[i4] != '\\') {
                return '?';
            }
            int i5 = i4 + 1;
            this.f8058c = i5;
            int a3 = a(i5);
            this.f8058c++;
            if ((a3 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (a3 & 63);
        }
        return (char) i2;
    }

    public final String a(String str) {
        this.f8058c = 0;
        this.f8059d = 0;
        this.e = 0;
        this.f = 0;
        this.g = this.f8056a.toCharArray();
        String a2 = a();
        String str2 = a2;
        if (a2 == null) {
            return null;
        }
        do {
            int i = this.f8058c;
            if (i == this.f8057b) {
                return null;
            }
            char c2 = this.g[i];
            String d2 = c2 != '\"' ? c2 != '#' ? (c2 == '+' || c2 == ',' || c2 == ';') ? "" : d() : c() : b();
            if (str.equalsIgnoreCase(str2)) {
                return d2;
            }
            int i2 = this.f8058c;
            if (i2 >= this.f8057b) {
                return null;
            }
            char[] cArr = this.g;
            if (cArr[i2] == ',' || cArr[i2] == ';' || cArr[i2] == '+') {
                this.f8058c = i2 + 1;
                str2 = a();
            } else {
                throw new IllegalStateException("Malformed DN: " + this.f8056a);
            }
        } while (str2 != null);
        throw new IllegalStateException("Malformed DN: " + this.f8056a);
    }
}
