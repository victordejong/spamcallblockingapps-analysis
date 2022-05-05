package p081h.p203i.p402h.p412o.p414c;
/* renamed from: h.i.h.o.c.d */
/* loaded from: classes2-dex2jar.jar:h/i/h/o/c/d.class */
public final class C10608d {
    /* renamed from: a */
    public static int m11240a(C10605b bVar) {
        return m11239a(bVar, true) + m11239a(bVar, false);
    }

    /* renamed from: a */
    public static int m11239a(C10605b bVar, boolean z) {
        int b = z ? bVar.m11265b() : bVar.m11264c();
        int c = z ? bVar.m11264c() : bVar.m11265b();
        byte[][] a = bVar.m11270a();
        int i = 0;
        for (int i2 = 0; i2 < b; i2++) {
            int i3 = 0;
            byte b2 = -1;
            for (int i4 = 0; i4 < c; i4++) {
                byte b3 = z ? a[i2][i4] : a[i4][i2];
                if (b3 == b2) {
                    i3++;
                    b2 = b2;
                } else {
                    i = i;
                    if (i3 >= 5) {
                        i += (i3 - 5) + 3;
                    }
                    i3 = 1;
                    b2 = b3;
                }
            }
            i = i;
            if (i3 >= 5) {
                i += (i3 - 5) + 3;
            }
        }
        return i;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static boolean m11241a(int i, int i2, int i3) {
        int i4;
        int i5;
        int i6 = i2;
        int i7 = i3;
        int i8 = i3;
        switch (i) {
            case 0:
                i8 = i7 + i6;
                i4 = i8 & 1;
                break;
            case 1:
                i4 = i8 & 1;
                break;
            case 2:
                i4 = i2 % 3;
                break;
            case 3:
                i4 = (i3 + i2) % 3;
                break;
            case 4:
                i7 = i3 / 2;
                i6 = i2 / 3;
                i8 = i7 + i6;
                i4 = i8 & 1;
                break;
            case 5:
                int i9 = i3 * i2;
                i4 = (i9 & 1) + (i9 % 3);
                break;
            case 6:
                int i10 = i3 * i2;
                i5 = (i10 & 1) + (i10 % 3);
                i4 = i5 & 1;
                break;
            case 7:
                i5 = ((i3 * i2) % 3) + ((i3 + i2) & 1);
                i4 = i5 & 1;
                break;
            default:
                throw new IllegalArgumentException("Invalid mask pattern: ".concat(String.valueOf(i)));
        }
        return i4 == 0;
    }

    /* renamed from: a */
    public static boolean m11238a(byte[] bArr, int i, int i2) {
        int min = Math.min(i2, bArr.length);
        for (int max = Math.max(i, 0); max < min; max++) {
            if (bArr[max] == 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public static boolean m11237a(byte[][] bArr, int i, int i2, int i3) {
        int min = Math.min(i3, bArr.length);
        for (int max = Math.max(i2, 0); max < min; max++) {
            if (bArr[max][i] == 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static int m11236b(C10605b bVar) {
        byte[][] a = bVar.m11270a();
        int c = bVar.m11264c();
        int b = bVar.m11265b();
        int i = 0;
        for (int i2 = 0; i2 < b - 1; i2++) {
            byte[] bArr = a[i2];
            int i3 = 0;
            while (i3 < c - 1) {
                byte b2 = bArr[i3];
                int i4 = i3 + 1;
                i = i;
                if (b2 == bArr[i4]) {
                    int i5 = i2 + 1;
                    i = i;
                    if (b2 == a[i5][i3]) {
                        i = i;
                        if (b2 == a[i5][i4]) {
                            i++;
                        }
                    }
                }
                i3 = i4;
            }
        }
        return i * 3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b5, code lost:
        if (m11238a(r0, r12 + 7, r12 + 11) != false) goto L_0x00b8;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m11235c(p081h.p203i.p402h.p412o.p414c.C10605b r6) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p402h.p412o.p414c.C10608d.m11235c(h.i.h.o.c.b):int");
    }

    /* renamed from: d */
    public static int m11234d(C10605b bVar) {
        byte[][] a = bVar.m11270a();
        int c = bVar.m11264c();
        int b = bVar.m11265b();
        int i = 0;
        for (int i2 = 0; i2 < b; i2++) {
            byte[] bArr = a[i2];
            for (int i3 = 0; i3 < c; i3++) {
                i = i;
                if (bArr[i3] == 1) {
                    i++;
                }
            }
        }
        int b2 = bVar.m11265b() * bVar.m11264c();
        return ((Math.abs((i << 1) - b2) * 10) / b2) * 10;
    }
}
