package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fb.class */
public final class fb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2, int i3, gs<?> gsVar, fa faVar) {
        gm gmVar = (gm) gsVar;
        int a2 = a(bArr, i2, faVar);
        gmVar.d(faVar.f29005a);
        while (a2 < i3) {
            int a3 = a(bArr, a2, faVar);
            if (i != faVar.f29005a) {
                break;
            }
            a2 = a(bArr, a3, faVar);
            gmVar.d(faVar.f29005a);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2, int i3, in inVar, fa faVar) throws zzib {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int b2 = b(bArr, i2, faVar);
                inVar.a(i, Long.valueOf(faVar.f29006b));
                return b2;
            } else if (i5 == 1) {
                inVar.a(i, Long.valueOf(b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a2 = a(bArr, i2, faVar);
                int i6 = faVar.f29005a;
                if (i6 < 0) {
                    throw zzib.b();
                } else if (i6 <= bArr.length - a2) {
                    if (i6 == 0) {
                        inVar.a(i, fm.f29017b);
                    } else {
                        inVar.a(i, fm.a(bArr, a2, i6));
                    }
                    return a2 + i6;
                } else {
                    throw zzib.a();
                }
            } else if (i5 == 3) {
                int i7 = (i & (-8)) | 4;
                in b3 = in.b();
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a3 = a(bArr, i2, faVar);
                    i8 = faVar.f29005a;
                    if (i8 == i7) {
                        i4 = a3;
                        break;
                    }
                    i2 = a(i8, bArr, a3, i3, b3, faVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzib.e();
                }
                inVar.a(i, b3);
                return i4;
            } else if (i5 == 5) {
                inVar.a(i, Integer.valueOf(a(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzib.c();
            }
        } else {
            throw zzib.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2, fa faVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            faVar.f29005a = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            faVar.f29005a = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            faVar.f29005a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            faVar.f29005a = i9 | (b5 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] < 0) {
                i10 = i11;
            } else {
                faVar.f29005a = i9 | ((b5 & Byte.MAX_VALUE) << 28);
                return i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(ia<?> iaVar, int i, byte[] bArr, int i2, int i3, gs<?> gsVar, fa faVar) throws IOException {
        int a2 = a(iaVar, bArr, i2, i3, faVar);
        gsVar.add(faVar.f29007c);
        while (a2 < i3) {
            int a3 = a(bArr, a2, faVar);
            if (i != faVar.f29005a) {
                break;
            }
            a2 = a(iaVar, bArr, a3, i3, faVar);
            gsVar.add(faVar.f29007c);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(ia iaVar, byte[] bArr, int i, int i2, int i3, fa faVar) throws IOException {
        hr hrVar = (hr) iaVar;
        Object a2 = hrVar.a();
        int a3 = hrVar.a((hr) a2, bArr, i, i2, i3, faVar);
        hrVar.c((hr) a2);
        faVar.f29007c = a2;
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(ia iaVar, byte[] bArr, int i, int i2, fa faVar) throws IOException {
        int i3 = i + 1;
        byte b2 = bArr[i];
        int i4 = i3;
        int i5 = b2;
        if (b2 < 0) {
            i4 = a(b2, bArr, i3, faVar);
            i5 = faVar.f29005a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzib.a();
        }
        Object a2 = iaVar.a();
        int i6 = i5 + i4;
        iaVar.a(a2, bArr, i4, i6, faVar);
        iaVar.c(a2);
        faVar.f29007c = a2;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i, fa faVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return a(b2, bArr, i2, faVar);
        }
        faVar.f29005a = b2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i, gs<?> gsVar, fa faVar) throws IOException {
        gm gmVar = (gm) gsVar;
        int a2 = a(bArr, i, faVar);
        int i2 = faVar.f29005a + a2;
        while (a2 < i2) {
            a2 = a(bArr, a2, faVar);
            gmVar.d(faVar.f29005a);
        }
        if (a2 == i2) {
            return a2;
        }
        throw zzib.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i, fa faVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j < 0) {
            int i3 = i2 + 1;
            byte b2 = bArr[i2];
            long j2 = (j & 127) | ((b2 & Byte.MAX_VALUE) << 7);
            int i4 = 7;
            while (b2 < 0) {
                b2 = bArr[i3];
                i4 += 7;
                j2 |= (b2 & Byte.MAX_VALUE) << i4;
                i3++;
            }
            faVar.f29006b = j2;
            return i3;
        }
        faVar.f29006b = j;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i, fa faVar) throws zzib {
        int a2 = a(bArr, i, faVar);
        int i2 = faVar.f29005a;
        if (i2 < 0) {
            throw zzib.b();
        } else if (i2 == 0) {
            faVar.f29007c = "";
            return a2;
        } else {
            faVar.f29007c = new String(bArr, a2, i2, gt.f29065a);
            return a2 + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(byte[] bArr, int i, fa faVar) throws zzib {
        int a2 = a(bArr, i, faVar);
        int i2 = faVar.f29005a;
        if (i2 < 0) {
            throw zzib.b();
        } else if (i2 == 0) {
            faVar.f29007c = "";
            return a2;
        } else {
            faVar.f29007c = jc.b(bArr, a2, i2);
            return a2 + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(byte[] bArr, int i, fa faVar) throws zzib {
        int a2 = a(bArr, i, faVar);
        int i2 = faVar.f29005a;
        if (i2 < 0) {
            throw zzib.b();
        } else if (i2 > bArr.length - a2) {
            throw zzib.a();
        } else if (i2 == 0) {
            faVar.f29007c = fm.f29017b;
            return a2;
        } else {
            faVar.f29007c = fm.a(bArr, a2, i2);
            return a2 + i2;
        }
    }
}
