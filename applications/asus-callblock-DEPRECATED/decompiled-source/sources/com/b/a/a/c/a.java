package com.b.a.a.c;

import javax.security.auth.x500.X500Principal;
/* loaded from: classes-dex2jar.jar:com/b/a/a/c/a.class */
final class a {

    /* renamed from: a  reason: collision with root package name */
    final String f3286a;

    /* renamed from: b  reason: collision with root package name */
    final int f3287b;
    int c;
    int d;
    int e;
    int f;
    char[] g;

    public a(X500Principal x500Principal) {
        this.f3286a = x500Principal.getName("RFC2253");
        this.f3287b = this.f3286a.length();
    }

    private int a(int i) {
        int i2;
        int i3;
        if (i + 1 >= this.f3287b) {
            throw new IllegalStateException("Malformed DN: " + this.f3286a);
        }
        char c = this.g[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else if (c < 'A' || c > 'F') {
            throw new IllegalStateException("Malformed DN: " + this.f3286a);
        } else {
            i2 = c - '7';
        }
        char c2 = this.g[i + 1];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else if (c2 < 'A' || c2 > 'F') {
            throw new IllegalStateException("Malformed DN: " + this.f3286a);
        } else {
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    private char e() {
        char c;
        int i;
        int i2;
        int a2 = a(this.c);
        this.c++;
        if (a2 < 128) {
            c = (char) a2;
        } else if (a2 < 192 || a2 > 247) {
            c = '?';
        } else {
            if (a2 <= 223) {
                i = 1;
                i2 = a2 & 31;
            } else if (a2 <= 239) {
                i = 2;
                i2 = a2 & 15;
            } else {
                i = 3;
                i2 = a2 & 7;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= i) {
                    c = (char) i2;
                    break;
                }
                this.c++;
                if (this.c == this.f3287b || this.g[this.c] != '\\') {
                    break;
                }
                this.c++;
                int a3 = a(this.c);
                this.c++;
                if ((a3 & 192) != 128) {
                    c = '?';
                    break;
                }
                i2 = (i2 << 6) + (a3 & 63);
                i3++;
            }
            c = '?';
        }
        return c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        String str;
        while (this.c < this.f3287b && this.g[this.c] == ' ') {
            this.c++;
        }
        if (this.c == this.f3287b) {
            str = null;
        } else {
            this.d = this.c;
            this.c++;
            while (this.c < this.f3287b && this.g[this.c] != '=' && this.g[this.c] != ' ') {
                this.c++;
            }
            if (this.c >= this.f3287b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f3286a);
            }
            this.e = this.c;
            if (this.g[this.c] == ' ') {
                while (this.c < this.f3287b && this.g[this.c] != '=' && this.g[this.c] == ' ') {
                    this.c++;
                }
                if (this.g[this.c] != '=' || this.c == this.f3287b) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f3286a);
                }
            }
            do {
                this.c++;
                if (this.c >= this.f3287b) {
                    break;
                }
            } while (this.g[this.c] == ' ');
            if (this.e - this.d > 4 && this.g[this.d + 3] == '.' && ((this.g[this.d] == 'O' || this.g[this.d] == 'o') && ((this.g[this.d + 1] == 'I' || this.g[this.d + 1] == 'i') && (this.g[this.d + 2] == 'D' || this.g[this.d + 2] == 'd')))) {
                this.d += 4;
            }
            str = new String(this.g, this.d, this.e - this.d);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        int i;
        char[] cArr;
        int i2;
        if (this.c + 4 >= this.f3287b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f3286a);
        }
        this.d = this.c;
        this.c++;
        while (this.c != this.f3287b && this.g[this.c] != '+' && this.g[this.c] != ',' && this.g[this.c] != ';') {
            if (this.g[this.c] == ' ') {
                this.e = this.c;
                this.c++;
                while (this.c < this.f3287b && this.g[this.c] == ' ') {
                    this.c++;
                }
                i = this.e - this.d;
                if (i >= 5 || (i & 1) == 0) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f3286a);
                }
                byte[] bArr = new byte[i / 2];
                int i3 = this.d + 1;
                for (int i4 = 0; i4 < bArr.length; i4++) {
                    bArr[i4] = (byte) a(i3);
                    i3 += 2;
                }
                return new String(this.g, this.d, i);
            }
            if (this.g[this.c] >= 'A' && this.g[this.c] <= 'F') {
                this.g[this.c] = (char) (cArr[i2] + ' ');
            }
            this.c++;
        }
        this.e = this.c;
        i = this.e - this.d;
        if (i >= 5) {
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f3286a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String c() {
        String str;
        this.d = this.c;
        this.e = this.c;
        while (true) {
            if (this.c < this.f3287b) {
                switch (this.g[this.c]) {
                    case ' ':
                        this.f = this.e;
                        this.c++;
                        char[] cArr = this.g;
                        int i = this.e;
                        this.e = i + 1;
                        cArr[i] = (char) 32;
                        while (this.c < this.f3287b && this.g[this.c] == ' ') {
                            char[] cArr2 = this.g;
                            int i2 = this.e;
                            this.e = i2 + 1;
                            cArr2[i2] = (char) 32;
                            this.c++;
                        }
                        if (this.c != this.f3287b && this.g[this.c] != ',' && this.g[this.c] != '+' && this.g[this.c] != ';') {
                            break;
                        }
                        break;
                    case '+':
                    case ',':
                    case ';':
                        str = new String(this.g, this.d, this.e - this.d);
                        break;
                    case '\\':
                        char[] cArr3 = this.g;
                        int i3 = this.e;
                        this.e = i3 + 1;
                        cArr3[i3] = d();
                        this.c++;
                        break;
                    default:
                        char[] cArr4 = this.g;
                        int i4 = this.e;
                        this.e = i4 + 1;
                        cArr4[i4] = this.g[this.c];
                        this.c++;
                        break;
                }
            } else {
                str = new String(this.g, this.d, this.e - this.d);
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final char d() {
        char c;
        this.c++;
        if (this.c == this.f3287b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f3286a);
        }
        switch (this.g[this.c]) {
            case ' ':
            case '\"':
            case '#':
            case '%':
            case '*':
            case '+':
            case ',':
            case ';':
            case '<':
            case '=':
            case '>':
            case '\\':
            case '_':
                c = this.g[this.c];
                break;
            default:
                c = e();
                break;
        }
        return c;
    }
}
