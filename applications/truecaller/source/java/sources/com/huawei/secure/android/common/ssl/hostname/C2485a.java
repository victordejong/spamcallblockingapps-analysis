package com.huawei.secure.android.common.ssl.hostname;

import javax.security.auth.x500.X500Principal;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.secure.android.common.ssl.hostname.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/hostname/a.class */
public class C2485a {

    /* renamed from: a */
    private final String f8069a;

    /* renamed from: b */
    private final int f8070b;

    /* renamed from: c */
    private int f8071c;

    /* renamed from: d */
    private int f8072d;

    /* renamed from: e */
    private int f8073e;

    /* renamed from: f */
    private int f8074f;

    /* renamed from: g */
    private char[] f8075g;

    public C2485a(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f8069a = name;
        this.f8070b = name.length();
    }

    /* renamed from: a */
    private int m37018a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f8070b) {
            StringBuilder m8728C = C22128a.m8728C("Malformed DN: ");
            m8728C.append(this.f8069a);
            throw new IllegalStateException(m8728C.toString());
        }
        char[] cArr = this.f8075g;
        char c = cArr[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else if (c < 'A' || c > 'F') {
            StringBuilder m8728C2 = C22128a.m8728C("Malformed DN: ");
            m8728C2.append(this.f8069a);
            throw new IllegalStateException(m8728C2.toString());
        } else {
            i2 = c - '7';
        }
        char c2 = cArr[i4];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else if (c2 < 'A' || c2 > 'F') {
            StringBuilder m8728C3 = C22128a.m8728C("Malformed DN: ");
            m8728C3.append(this.f8069a);
            throw new IllegalStateException(m8728C3.toString());
        } else {
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x009a, code lost:
        r0 = r7.f8075g;
        r0 = r7.f8072d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00b3, code lost:
        return new java.lang.String(r0, r0, r7.f8073e - r0);
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String m37019a() {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.secure.android.common.ssl.hostname.C2485a.m37019a():java.lang.String");
    }

    /* renamed from: b */
    private char m37016b() {
        int i = this.f8071c + 1;
        this.f8071c = i;
        if (i == this.f8070b) {
            StringBuilder m8728C = C22128a.m8728C("Unexpected end of DN: ");
            m8728C.append(this.f8069a);
            throw new IllegalStateException(m8728C.toString());
        }
        char[] cArr = this.f8075g;
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
                            return m37014c();
                    }
            }
        }
        return cArr[i];
    }

    /* renamed from: c */
    private char m37014c() {
        int i;
        int i2;
        int m37018a = m37018a(this.f8071c);
        this.f8071c++;
        if (m37018a < 128) {
            return (char) m37018a;
        }
        if (m37018a < 192 || m37018a > 247) {
            return '?';
        }
        if (m37018a <= 223) {
            i2 = m37018a & 31;
            i = 1;
        } else if (m37018a <= 239) {
            i = 2;
            i2 = m37018a & 15;
        } else {
            i = 3;
            i2 = m37018a & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.f8071c + 1;
            this.f8071c = i4;
            if (i4 == this.f8070b || this.f8075g[i4] != '\\') {
                return '?';
            }
            int i5 = i4 + 1;
            this.f8071c = i5;
            int m37018a2 = m37018a(i5);
            this.f8071c++;
            if ((m37018a2 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (m37018a2 & 63);
        }
        return (char) i2;
    }

    /* renamed from: d */
    private String m37013d() {
        int i;
        int i2 = this.f8071c;
        if (i2 + 4 >= this.f8070b) {
            StringBuilder m8728C = C22128a.m8728C("Unexpected end of DN: ");
            m8728C.append(this.f8069a);
            throw new IllegalStateException(m8728C.toString());
        }
        this.f8072d = i2;
        this.f8071c = i2 + 1;
        while (true) {
            i = this.f8071c;
            if (i == this.f8070b) {
                break;
            }
            char[] cArr = this.f8075g;
            if (cArr[i] == '+' || cArr[i] == ',' || cArr[i] == ';') {
                break;
            } else if (cArr[i] == ' ') {
                this.f8073e = i;
                this.f8071c = i + 1;
                while (true) {
                    int i3 = this.f8071c;
                    if (i3 >= this.f8070b || this.f8075g[i3] != ' ') {
                        break;
                    }
                    this.f8071c = i3 + 1;
                }
            } else {
                if (cArr[i] >= 'A' && cArr[i] <= 'F') {
                    cArr[i] = (char) (cArr[i] + ' ');
                }
                this.f8071c = i + 1;
            }
        }
        this.f8073e = i;
        int i4 = this.f8073e;
        int i5 = this.f8072d;
        int i6 = i4 - i5;
        if (i6 < 5 || (i6 & 1) == 0) {
            StringBuilder m8728C2 = C22128a.m8728C("Unexpected end of DN: ");
            m8728C2.append(this.f8069a);
            throw new IllegalStateException(m8728C2.toString());
        }
        int i7 = i6 / 2;
        byte[] bArr = new byte[i7];
        int i8 = i5 + 1;
        for (int i9 = 0; i9 < i7; i9++) {
            bArr[i9] = (byte) m37018a(i8);
            i8 += 2;
        }
        return new String(this.f8075g, this.f8072d, i6);
    }

    /* renamed from: e */
    private String m37012e() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        while (true) {
            i = this.f8071c;
            i2 = this.f8070b;
            if (i >= i2 || this.f8075g[i] != ' ') {
                break;
            }
            this.f8071c = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.f8072d = i;
        this.f8071c = i + 1;
        while (true) {
            i3 = this.f8071c;
            i4 = this.f8070b;
            if (i3 >= i4) {
                break;
            }
            char[] cArr = this.f8075g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.f8071c = i3 + 1;
        }
        if (i3 >= i4) {
            StringBuilder m8728C = C22128a.m8728C("Unexpected end of DN: ");
            m8728C.append(this.f8069a);
            throw new IllegalStateException(m8728C.toString());
        }
        this.f8073e = i3;
        if (this.f8075g[i3] == ' ') {
            while (true) {
                i5 = this.f8071c;
                i6 = this.f8070b;
                if (i5 >= i6) {
                    break;
                }
                char[] cArr2 = this.f8075g;
                if (cArr2[i5] == '=' || cArr2[i5] != ' ') {
                    break;
                }
                this.f8071c = i5 + 1;
            }
            if (this.f8075g[i5] != '=' || i5 == i6) {
                StringBuilder m8728C2 = C22128a.m8728C("Unexpected end of DN: ");
                m8728C2.append(this.f8069a);
                throw new IllegalStateException(m8728C2.toString());
            }
        }
        this.f8071c++;
        while (true) {
            int i7 = this.f8071c;
            if (i7 >= this.f8070b || this.f8075g[i7] != ' ') {
                break;
            }
            this.f8071c = i7 + 1;
        }
        int i8 = this.f8073e;
        int i9 = this.f8072d;
        if (i8 - i9 > 4) {
            char[] cArr3 = this.f8075g;
            if (cArr3[i9 + 3] == '.' && (cArr3[i9] == 'O' || cArr3[i9] == 'o')) {
                int i10 = i9 + 1;
                if (cArr3[i10] == 'I' || cArr3[i10] == 'i') {
                    int i11 = i9 + 2;
                    if (cArr3[i11] == 'D' || cArr3[i11] == 'd') {
                        this.f8072d = i9 + 4;
                    }
                }
            }
        }
        char[] cArr4 = this.f8075g;
        int i12 = this.f8072d;
        return new String(cArr4, i12, this.f8073e - i12);
    }

    /* renamed from: f */
    private String m37011f() {
        int i = this.f8071c + 1;
        this.f8071c = i;
        this.f8072d = i;
        this.f8073e = i;
        while (true) {
            int i2 = this.f8071c;
            if (i2 == this.f8070b) {
                StringBuilder m8728C = C22128a.m8728C("Unexpected end of DN: ");
                m8728C.append(this.f8069a);
                throw new IllegalStateException(m8728C.toString());
            }
            char[] cArr = this.f8075g;
            if (cArr[i2] == '\"') {
                this.f8071c = i2 + 1;
                while (true) {
                    int i3 = this.f8071c;
                    if (i3 >= this.f8070b || this.f8075g[i3] != ' ') {
                        break;
                    }
                    this.f8071c = i3 + 1;
                }
                char[] cArr2 = this.f8075g;
                int i4 = this.f8072d;
                return new String(cArr2, i4, this.f8073e - i4);
            }
            if (cArr[i2] == '\\') {
                cArr[this.f8073e] = m37016b();
            } else {
                cArr[this.f8073e] = cArr[i2];
            }
            this.f8071c++;
            this.f8073e++;
        }
    }

    /* renamed from: a */
    public String m37017a(String str) {
        this.f8071c = 0;
        this.f8072d = 0;
        this.f8073e = 0;
        this.f8074f = 0;
        this.f8075g = this.f8069a.toCharArray();
        String m37012e = m37012e();
        String str2 = m37012e;
        if (m37012e == null) {
            return null;
        }
        do {
            int i = this.f8071c;
            if (i == this.f8070b) {
                return null;
            }
            char c = this.f8075g[i];
            String m37019a = c != '\"' ? c != '#' ? (c == '+' || c == ',' || c == ';') ? "" : m37019a() : m37013d() : m37011f();
            if (str.equalsIgnoreCase(str2)) {
                return m37019a;
            }
            int i2 = this.f8071c;
            if (i2 >= this.f8070b) {
                return null;
            }
            char[] cArr = this.f8075g;
            if (cArr[i2] != ',' && cArr[i2] != ';' && cArr[i2] != '+') {
                StringBuilder m8728C = C22128a.m8728C("Malformed DN: ");
                m8728C.append(this.f8069a);
                throw new IllegalStateException(m8728C.toString());
            }
            this.f8071c = i2 + 1;
            str2 = m37012e();
        } while (str2 != null);
        StringBuilder m8728C2 = C22128a.m8728C("Malformed DN: ");
        m8728C2.append(this.f8069a);
        throw new IllegalStateException(m8728C2.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0142, code lost:
        return r7;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> m37015b(java.lang.String r5) {
        /*
            Method dump skipped, instructions count: 323
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.secure.android.common.ssl.hostname.C2485a.m37015b(java.lang.String):java.util.List");
    }
}
