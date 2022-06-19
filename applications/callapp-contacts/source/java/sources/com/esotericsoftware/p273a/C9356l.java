package com.esotericsoftware.p273a;

import okhttp3.internal.http2.Http2Connection;
/* renamed from: com.esotericsoftware.a.l */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/l.class */
public final class C9356l {

    /* renamed from: a */
    static final int[] f32071a;

    /* renamed from: b */
    C9360p f32072b;

    /* renamed from: c */
    int[] f32073c;

    /* renamed from: d */
    int[] f32074d;

    /* renamed from: e */
    int[] f32075e;

    /* renamed from: f */
    int[] f32076f;

    /* renamed from: g */
    int f32077g;

    /* renamed from: h */
    int[] f32078h;

    /* renamed from: i */
    private int f32079i;

    static {
        int[] iArr = new int[202];
        for (int i = 0; i < 202; i++) {
            iArr[i] = "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE".charAt(i) - 'E';
        }
        f32071a = iArr;
    }

    /* renamed from: a */
    private int m24583a() {
        int i = this.f32077g;
        if (i > 0) {
            int[] iArr = this.f32076f;
            int i2 = i - 1;
            this.f32077g = i2;
            return iArr[i2];
        }
        C9360p c9360p = this.f32072b;
        int i3 = c9360p.f32103d - 1;
        c9360p.f32103d = i3;
        return 50331648 | (-i3);
    }

    /* renamed from: a */
    private int m24582a(int i) {
        int[] iArr = this.f32075e;
        if (iArr == null || i >= iArr.length) {
            return i | 33554432;
        }
        int i2 = iArr[i];
        int i3 = i2;
        if (i2 == 0) {
            i3 = i | 33554432;
            iArr[i] = i3;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m24577a(C9351g c9351g, String str) {
        int indexOf = str.charAt(0) == '(' ? str.indexOf(41) + 1 : 0;
        char charAt = str.charAt(indexOf);
        int i = 16777218;
        if (charAt != 'F') {
            if (charAt == 'L') {
                return c9351g.m24590d(str.substring(indexOf + 1, str.length() - 1)) | 24117248;
            }
            if (charAt == 'S') {
                return 16777217;
            }
            if (charAt == 'V') {
                return 0;
            }
            if (charAt == 'Z' || charAt == 'I') {
                return 16777217;
            }
            if (charAt == 'J') {
                return 16777220;
            }
            switch (charAt) {
                case 'B':
                case 'C':
                    return 16777217;
                case 'D':
                    return 16777219;
                default:
                    int i2 = indexOf + 1;
                    while (str.charAt(i2) == '[') {
                        i2++;
                    }
                    char charAt2 = str.charAt(i2);
                    if (charAt2 != 'F') {
                        if (charAt2 == 'S') {
                            i = 16777228;
                        } else if (charAt2 == 'Z') {
                            i = 16777225;
                        } else if (charAt2 == 'I') {
                            i = 16777217;
                        } else if (charAt2 != 'J') {
                            switch (charAt2) {
                                case 'B':
                                    i = 16777226;
                                    break;
                                case 'C':
                                    i = 16777227;
                                    break;
                                case 'D':
                                    i = 16777219;
                                    break;
                                default:
                                    i = c9351g.m24590d(str.substring(i2 + 1, str.length() - 1)) | 24117248;
                                    break;
                            }
                        } else {
                            i = 16777220;
                        }
                    }
                    return ((i2 - indexOf) << 28) | i;
            }
        }
        return 16777218;
    }

    /* renamed from: a */
    private void m24581a(int i, int i2) {
        if (this.f32075e == null) {
            this.f32075e = new int[10];
        }
        int length = this.f32075e.length;
        if (i >= length) {
            int[] iArr = new int[Math.max(i + 1, length * 2)];
            System.arraycopy(this.f32075e, 0, iArr, 0, length);
            this.f32075e = iArr;
        }
        this.f32075e[i] = i2;
    }

    /* renamed from: a */
    private void m24576a(String str) {
        char charAt = str.charAt(0);
        if (charAt == '(') {
            m24573c((C9364t.m24498e(str) >> 2) - 1);
        } else if (charAt == 'J' || charAt == 'D') {
            m24573c(2);
        } else {
            m24573c(1);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0191, code lost:
        if (r0 == 24117248) goto L54;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m24578a(com.esotericsoftware.p273a.C9351g r7, int r8, int[] r9, int r10) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9356l.m24578a(com.esotericsoftware.a.g, int, int[], int):boolean");
    }

    /* renamed from: b */
    private void m24575b(int i) {
        if (this.f32076f == null) {
            this.f32076f = new int[10];
        }
        int length = this.f32076f.length;
        int i2 = this.f32077g;
        if (i2 >= length) {
            int[] iArr = new int[Math.max(i2 + 1, length * 2)];
            System.arraycopy(this.f32076f, 0, iArr, 0, length);
            this.f32076f = iArr;
        }
        int[] iArr2 = this.f32076f;
        int i3 = this.f32077g;
        this.f32077g = i3 + 1;
        iArr2[i3] = i;
        int i4 = this.f32072b.f32103d + this.f32077g;
        if (i4 > this.f32072b.f32104e) {
            this.f32072b.f32104e = i4;
        }
    }

    /* renamed from: b */
    private void m24574b(C9351g c9351g, String str) {
        int m24577a = m24577a(c9351g, str);
        if (m24577a != 0) {
            m24575b(m24577a);
            if (m24577a != 16777220 && m24577a != 16777219) {
                return;
            }
            m24575b(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        }
    }

    /* renamed from: c */
    private void m24573c(int i) {
        int i2 = this.f32077g;
        if (i2 >= i) {
            this.f32077g = i2 - i;
            return;
        }
        this.f32072b.f32103d -= i - this.f32077g;
        this.f32077g = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0095 A[LOOP:0: B:10:0x0031->B:23:0x0095, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008f A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m24579a(com.esotericsoftware.p273a.C9351g r6, int r7) {
        /*
            r5 = this;
            r0 = r7
            r1 = 16777222(0x1000006, float:2.3509904E-38)
            if (r0 != r1) goto L15
            r0 = r6
            java.lang.String r0 = r0.f32023o
            r8 = r0
        Lb:
            r0 = r6
            r1 = r8
            int r0 = r0.m24590d(r1)
            r9 = r0
            goto L2e
        L15:
            r0 = -1048576(0xfffffffffff00000, float:NaN)
            r1 = r7
            r0 = r0 & r1
            r1 = 25165824(0x1800000, float:4.7019774E-38)
            if (r0 != r1) goto L9b
            r0 = r6
            com.esotericsoftware.a.o[] r0 = r0.f32022n
            r1 = 1048575(0xfffff, float:1.469367E-39)
            r2 = r7
            r1 = r1 & r2
            r0 = r0[r1]
            java.lang.String r0 = r0.f32095e
            r8 = r0
            goto Lb
        L2e:
            r0 = 0
            r10 = r0
        L31:
            r0 = r10
            r1 = r5
            int r1 = r1.f32079i
            if (r0 >= r1) goto L9b
            r0 = r5
            int[] r0 = r0.f32078h
            r1 = r10
            r0 = r0[r1]
            r11 = r0
            r0 = 251658240(0xf000000, float:6.3108872E-30)
            r1 = r11
            r0 = r0 & r1
            r12 = r0
            r0 = r12
            r1 = 33554432(0x2000000, float:9.403955E-38)
            if (r0 != r1) goto L6a
            r0 = r5
            int[] r0 = r0.f32073c
            r1 = r11
            r2 = 8388607(0x7fffff, float:1.1754942E-38)
            r1 = r1 & r2
            r0 = r0[r1]
            r13 = r0
        L5d:
            r0 = r13
            r1 = -268435456(0xfffffffff0000000, float:-1.58456325E29)
            r2 = r11
            r1 = r1 & r2
            int r0 = r0 + r1
            r13 = r0
            goto L89
        L6a:
            r0 = r11
            r13 = r0
            r0 = r12
            r1 = 50331648(0x3000000, float:3.761582E-37)
            if (r0 != r1) goto L89
            r0 = r5
            int[] r0 = r0.f32074d
            r6 = r0
            r0 = r6
            r1 = r6
            int r1 = r1.length
            r2 = r11
            r3 = 8388607(0x7fffff, float:1.1754942E-38)
            r2 = r2 & r3
            int r1 = r1 - r2
            r0 = r0[r1]
            r13 = r0
            goto L5d
        L89:
            r0 = r7
            r1 = r13
            if (r0 != r1) goto L95
            r0 = r9
            r1 = 24117248(0x1700000, float:4.4081038E-38)
            r0 = r0 | r1
            return r0
        L95:
            int r10 = r10 + 1
            goto L31
        L9b:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9356l.m24579a(com.esotericsoftware.a.g, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x06b7  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x06d5  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0790  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x079d  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x07a4  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x07b1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m24580a(int r7, int r8, com.esotericsoftware.p273a.C9351g r9, com.esotericsoftware.p273a.C9359o r10) {
        /*
            Method dump skipped, instructions count: 1989
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.p273a.C9356l.m24580a(int, int, com.esotericsoftware.a.g, com.esotericsoftware.a.o):void");
    }
}
