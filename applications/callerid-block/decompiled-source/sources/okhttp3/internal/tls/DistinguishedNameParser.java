package okhttp3.internal.tls;

import javax.security.auth.x500.X500Principal;
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/tls/DistinguishedNameParser.class */
final class DistinguishedNameParser {
    private int beg;
    private char[] chars;
    private int cur;

    /* renamed from: dn */
    private final String f13031dn;
    private int end;
    private final int length;
    private int pos;

    DistinguishedNameParser(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f13031dn = name;
        this.length = name.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0095, code lost:
        r0 = r7.chars;
        r0 = r7.beg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00ae, code lost:
        return new java.lang.String(r0, r0, r7.end - r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String escapedAV() {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.tls.DistinguishedNameParser.escapedAV():java.lang.String");
    }

    private int getByte(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 < this.length) {
            char[] cArr = this.chars;
            char c = cArr[i];
            if (c >= '0' && c <= '9') {
                i2 = c - '0';
            } else if (c >= 'a' && c <= 'f') {
                i2 = c - 'W';
            } else if (c < 'A' || c > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f13031dn);
            } else {
                i2 = c - '7';
            }
            char c2 = cArr[i4];
            if (c2 >= '0' && c2 <= '9') {
                i3 = c2 - '0';
            } else if (c2 >= 'a' && c2 <= 'f') {
                i3 = c2 - 'W';
            } else if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f13031dn);
            } else {
                i3 = c2 - '7';
            }
            return (i2 << 4) + i3;
        }
        throw new IllegalStateException("Malformed DN: " + this.f13031dn);
    }

    private char getEscaped() {
        int i = this.pos + 1;
        this.pos = i;
        if (i != this.length) {
            char[] cArr = this.chars;
            char c = cArr[i];
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
                                return getUTF8();
                        }
                }
            }
            return cArr[i];
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f13031dn);
    }

    private char getUTF8() {
        int i;
        int i2;
        int i3 = getByte(this.pos);
        this.pos++;
        if (i3 < 128) {
            return (char) i3;
        }
        if (i3 < 192 || i3 > 247) {
            return '?';
        }
        if (i3 <= 223) {
            i2 = i3 & 31;
            i = 1;
        } else if (i3 <= 239) {
            i = 2;
            i2 = i3 & 15;
        } else {
            i = 3;
            i2 = i3 & 7;
        }
        for (int i4 = 0; i4 < i; i4++) {
            int i5 = this.pos + 1;
            this.pos = i5;
            if (i5 == this.length || this.chars[i5] != '\\') {
                return '?';
            }
            int i6 = i5 + 1;
            this.pos = i6;
            int i7 = getByte(i6);
            this.pos++;
            if ((i7 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (i7 & 63);
        }
        return (char) i2;
    }

    private String hexAV() {
        int i;
        int i2 = this.pos;
        if (i2 + 4 < this.length) {
            this.beg = i2;
            while (true) {
                this.pos = i2 + 1;
                i = this.pos;
                if (i == this.length) {
                    break;
                }
                char[] cArr = this.chars;
                if (cArr[i] == '+' || cArr[i] == ',' || cArr[i] == ';') {
                    break;
                } else if (cArr[i] == ' ') {
                    this.end = i;
                    do {
                        this.pos = i + 1;
                        i = this.pos;
                        if (i >= this.length) {
                            break;
                        }
                    } while (this.chars[i] == ' ');
                } else {
                    i2 = i;
                    if (cArr[i] >= 'A') {
                        i2 = i;
                        if (cArr[i] <= 'F') {
                            cArr[i] = (char) (cArr[i] + ' ');
                            i2 = i;
                        }
                    }
                }
            }
            this.end = i;
            int i3 = this.end;
            int i4 = this.beg;
            int i5 = i3 - i4;
            if (i5 < 5 || (i5 & 1) == 0) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f13031dn);
            }
            int i6 = i5 / 2;
            byte[] bArr = new byte[i6];
            int i7 = i4 + 1;
            for (int i8 = 0; i8 < i6; i8++) {
                bArr[i8] = (byte) getByte(i7);
                i7 += 2;
            }
            return new String(this.chars, this.beg, i5);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f13031dn);
    }

    private String nextAT() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        char[] cArr;
        while (true) {
            i = this.pos;
            i2 = this.length;
            if (i >= i2 || this.chars[i] != ' ') {
                break;
            }
            this.pos = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.beg = i;
        do {
            this.pos = i + 1;
            i = this.pos;
            i3 = this.length;
            if (i >= i3) {
                break;
            }
            cArr = this.chars;
            if (cArr[i] == '=') {
                break;
            }
        } while (cArr[i] != ' ');
        if (i < i3) {
            this.end = i;
            if (this.chars[i] == ' ') {
                while (true) {
                    i4 = this.pos;
                    i5 = this.length;
                    if (i4 >= i5) {
                        break;
                    }
                    char[] cArr2 = this.chars;
                    if (cArr2[i4] == '=' || cArr2[i4] != ' ') {
                        break;
                    }
                    this.pos = i4 + 1;
                }
                if (this.chars[i4] != '=' || i4 == i5) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f13031dn);
                }
            }
            int i6 = this.pos;
            do {
                this.pos = i6 + 1;
                i6 = this.pos;
                if (i6 >= this.length) {
                    break;
                }
            } while (this.chars[i6] == ' ');
            int i7 = this.end;
            int i8 = this.beg;
            if (i7 - i8 > 4) {
                char[] cArr3 = this.chars;
                if (cArr3[i8 + 3] == '.' && ((cArr3[i8] == 'O' || cArr3[i8] == 'o') && ((cArr3[i8 + 1] == 'I' || cArr3[i8 + 1] == 'i') && (cArr3[i8 + 2] == 'D' || cArr3[i8 + 2] == 'd')))) {
                    this.beg = i8 + 4;
                }
            }
            char[] cArr4 = this.chars;
            int i9 = this.beg;
            return new String(cArr4, i9, this.end - i9);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f13031dn);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004c, code lost:
        if (r7.chars[r8] != ' ') goto L_0x0052;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0052, code lost:
        r0 = r7.chars;
        r0 = r7.beg;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x006b, code lost:
        return new java.lang.String(r0, r0, r7.end - r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0030, code lost:
        r7.pos = r8 + 1;
        r8 = r7.pos;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
        if (r8 >= r7.length) goto L_0x0052;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String quotedAV() {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.tls.DistinguishedNameParser.quotedAV():java.lang.String");
    }

    public String findMostSpecific(String str) {
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.f13031dn.toCharArray();
        String nextAT = nextAT();
        String str2 = nextAT;
        if (nextAT == null) {
            return null;
        }
        do {
            int i = this.pos;
            if (i == this.length) {
                return null;
            }
            char c = this.chars[i];
            String escapedAV = c != '\"' ? c != '#' ? (c == '+' || c == ',' || c == ';') ? "" : escapedAV() : hexAV() : quotedAV();
            if (str.equalsIgnoreCase(str2)) {
                return escapedAV;
            }
            int i2 = this.pos;
            if (i2 >= this.length) {
                return null;
            }
            char[] cArr = this.chars;
            if (cArr[i2] == ',' || cArr[i2] == ';' || cArr[i2] == '+') {
                this.pos = i2 + 1;
                str2 = nextAT();
            } else {
                throw new IllegalStateException("Malformed DN: " + this.f13031dn);
            }
        } while (str2 != null);
        throw new IllegalStateException("Malformed DN: " + this.f13031dn);
    }
}
