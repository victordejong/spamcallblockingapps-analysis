package com.esotericsoftware.a;

import okhttp3.internal.http2.Http2Connection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f18908a;

    /* renamed from: b  reason: collision with root package name */
    p f18909b;

    /* renamed from: c  reason: collision with root package name */
    int[] f18910c;

    /* renamed from: d  reason: collision with root package name */
    int[] f18911d;
    int[] e;
    int[] f;
    int g;
    int[] h;
    private int i;

    static {
        int[] iArr = new int[202];
        for (int i = 0; i < 202; i++) {
            iArr[i] = "EFFFFFFFFGGFFFGGFFFEEFGFGFEEEEEEEEEEEEEEEEEEEEDEDEDDDDDCDCDEEEEEEEEEEEEEEEEEEEEBABABBBBDCFFFGGGEDCDCDCDCDCDCDCDCDCDCEEEEDDDDDDDCDCDCEFEFDDEEFFDEDEEEBDDBBDDDDDDCCCCCCCCEFEDDDCDCDEEEEEEEEEEFEEEEEEDDEEDDEE".charAt(i) - 'E';
        }
        f18908a = iArr;
    }

    private int a() {
        int i = this.g;
        if (i > 0) {
            int[] iArr = this.f;
            int i2 = i - 1;
            this.g = i2;
            return iArr[i2];
        }
        p pVar = this.f18909b;
        int i3 = pVar.f18927d - 1;
        pVar.f18927d = i3;
        return 50331648 | (-i3);
    }

    private int a(int i) {
        int[] iArr = this.e;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(g gVar, String str) {
        int indexOf = str.charAt(0) == '(' ? str.indexOf(41) + 1 : 0;
        char charAt = str.charAt(indexOf);
        int i = 16777218;
        if (charAt == 'F') {
            return 16777218;
        }
        if (charAt == 'L') {
            return gVar.d(str.substring(indexOf + 1, str.length() - 1)) | 24117248;
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
                                i = gVar.d(str.substring(i2 + 1, str.length() - 1)) | 24117248;
                                break;
                        }
                    } else {
                        i = 16777220;
                    }
                }
                return ((i2 - indexOf) << 28) | i;
        }
    }

    private void a(int i, int i2) {
        if (this.e == null) {
            this.e = new int[10];
        }
        int length = this.e.length;
        if (i >= length) {
            int[] iArr = new int[Math.max(i + 1, length * 2)];
            System.arraycopy(this.e, 0, iArr, 0, length);
            this.e = iArr;
        }
        this.e[i] = i2;
    }

    private void a(String str) {
        char charAt = str.charAt(0);
        if (charAt == '(') {
            c((t.e(str) >> 2) - 1);
        } else if (charAt == 'J' || charAt == 'D') {
            c(2);
        } else {
            c(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(g gVar, int i, int[] iArr, int i2) {
        int min;
        int i3 = iArr[i2];
        if (i3 == i) {
            return false;
        }
        int i4 = i;
        if ((268435455 & i) == 16777221) {
            if (i3 == 16777221) {
                return false;
            }
            i4 = 16777221;
        }
        if (i3 == 0) {
            iArr[i2] = i4;
            return true;
        }
        int i5 = i3 & 267386880;
        int i6 = Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        int i7 = -268435456;
        if (i5 == 24117248 || (i3 & (-268435456)) != 0) {
            if (i4 == 16777221) {
                return false;
            }
            if ((i4 & (-1048576)) != ((-1048576) & i3)) {
                int i8 = i4 & 267386880;
                if (i8 == 24117248 || (i4 & (-268435456)) != 0) {
                    int i9 = i4 & (-268435456);
                    int i10 = (i9 == 0 || i8 == 24117248) ? 0 : -268435456;
                    int i11 = i3 & (-268435456);
                    if (i11 == 0 || i5 == 24117248) {
                        i7 = 0;
                    }
                    min = Math.min(i10 + i9, i7 + i11);
                    i6 = min | 24117248 | gVar.d("java/lang/Object");
                }
            } else if (i5 == 24117248) {
                int i12 = i4 & 1048575;
                int i13 = 1048575 & i3;
                gVar.k.f18921b = 32;
                gVar.k.f18923d = i12 | (i13 << 32);
                gVar.k.h = Integer.MAX_VALUE & (i12 + 32 + i13);
                o a2 = gVar.a(gVar.k);
                o oVar = a2;
                if (a2 == null) {
                    gVar.k.f18922c = gVar.d(gVar.c(gVar.n[i12].e, gVar.n[i13].e));
                    oVar = new o(0, gVar.k);
                    gVar.b(oVar);
                }
                i6 = (i4 & (-268435456)) | 24117248 | oVar.f18922c;
            } else {
                min = (i3 & (-268435456)) - 268435456;
                i6 = min | 24117248 | gVar.d("java/lang/Object");
            }
        } else if (i3 == 16777221) {
            i6 = i4;
            if ((i4 & 267386880) != 24117248) {
                i6 = (i4 & (-268435456)) != 0 ? i4 : Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
            }
        }
        if (i3 == i6) {
            return false;
        }
        iArr[i2] = i6;
        return true;
    }

    private void b(int i) {
        if (this.f == null) {
            this.f = new int[10];
        }
        int length = this.f.length;
        int i2 = this.g;
        if (i2 >= length) {
            int[] iArr = new int[Math.max(i2 + 1, length * 2)];
            System.arraycopy(this.f, 0, iArr, 0, length);
            this.f = iArr;
        }
        int[] iArr2 = this.f;
        int i3 = this.g;
        this.g = i3 + 1;
        iArr2[i3] = i;
        int i4 = this.f18909b.f18927d + this.g;
        if (i4 > this.f18909b.e) {
            this.f18909b.e = i4;
        }
    }

    private void b(g gVar, String str) {
        int a2 = a(gVar, str);
        if (a2 != 0) {
            b(a2);
            if (a2 == 16777220 || a2 == 16777219) {
                b(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
            }
        }
    }

    private void c(int i) {
        int i2 = this.g;
        if (i2 >= i) {
            this.g = i2 - i;
            return;
        }
        this.f18909b.f18927d -= i - this.g;
        this.g = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0095 A[LOOP:0: B:10:0x0031->B:23:0x0095, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(com.esotericsoftware.a.g r6, int r7) {
        /*
            r5 = this;
            r0 = r7
            r1 = 16777222(0x1000006, float:2.3509904E-38)
            if (r0 != r1) goto L_0x0015
            r0 = r6
            java.lang.String r0 = r0.o
            r8 = r0
        L_0x000b:
            r0 = r6
            r1 = r8
            int r0 = r0.d(r1)
            r9 = r0
            goto L_0x002e
        L_0x0015:
            r0 = -1048576(0xfffffffffff00000, float:NaN)
            r1 = r7
            r0 = r0 & r1
            r1 = 25165824(0x1800000, float:4.7019774E-38)
            if (r0 != r1) goto L_0x009b
            r0 = r6
            com.esotericsoftware.a.o[] r0 = r0.n
            r1 = 1048575(0xfffff, float:1.469367E-39)
            r2 = r7
            r1 = r1 & r2
            r0 = r0[r1]
            java.lang.String r0 = r0.e
            r8 = r0
            goto L_0x000b
        L_0x002e:
            r0 = 0
            r10 = r0
        L_0x0031:
            r0 = r10
            r1 = r5
            int r1 = r1.i
            if (r0 >= r1) goto L_0x009b
            r0 = r5
            int[] r0 = r0.h
            r1 = r10
            r0 = r0[r1]
            r11 = r0
            r0 = 251658240(0xf000000, float:6.3108872E-30)
            r1 = r11
            r0 = r0 & r1
            r12 = r0
            r0 = r12
            r1 = 33554432(0x2000000, float:9.403955E-38)
            if (r0 != r1) goto L_0x006a
            r0 = r5
            int[] r0 = r0.f18910c
            r1 = r11
            r2 = 8388607(0x7fffff, float:1.1754942E-38)
            r1 = r1 & r2
            r0 = r0[r1]
            r13 = r0
        L_0x005d:
            r0 = r13
            r1 = -268435456(0xfffffffff0000000, float:-1.58456325E29)
            r2 = r11
            r1 = r1 & r2
            int r0 = r0 + r1
            r13 = r0
            goto L_0x0089
        L_0x006a:
            r0 = r11
            r13 = r0
            r0 = r12
            r1 = 50331648(0x3000000, float:3.761582E-37)
            if (r0 != r1) goto L_0x0089
            r0 = r5
            int[] r0 = r0.f18911d
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
            goto L_0x005d
        L_0x0089:
            r0 = r7
            r1 = r13
            if (r0 != r1) goto L_0x0095
            r0 = r9
            r1 = 24117248(0x1700000, float:4.4081038E-38)
            r0 = r0 | r1
            return r0
        L_0x0095:
            int r10 = r10 + 1
            goto L_0x0031
        L_0x009b:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.l.a(com.esotericsoftware.a.g, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:142:0x06b7  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x06d5  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0790  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x079d  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x07a4  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x07b1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(int r7, int r8, com.esotericsoftware.a.g r9, com.esotericsoftware.a.o r10) {
        /*
            Method dump skipped, instructions count: 1989
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.esotericsoftware.a.l.a(int, int, com.esotericsoftware.a.g, com.esotericsoftware.a.o):void");
    }
}
