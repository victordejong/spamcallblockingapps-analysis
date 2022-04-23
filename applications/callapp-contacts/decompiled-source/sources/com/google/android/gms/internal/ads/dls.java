package com.google.android.gms.internal.ads;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dls.class */
public final class dls {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2, int i3, dlr dlrVar) throws zzenn {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return b(bArr, i2, dlrVar);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return a(bArr, i2, dlrVar) + dlrVar.f26931a;
            }
            if (i5 == 3) {
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a2 = a(bArr, i2, dlrVar);
                    int i8 = dlrVar.f26931a;
                    i7 = i8;
                    i4 = a2;
                    if (i8 == i6) {
                        break;
                    }
                    i2 = a(i8, bArr, a2, i3, dlrVar);
                    i7 = i8;
                }
                if (i4 <= i3 && i7 == i6) {
                    return i4;
                }
                throw zzenn.h();
            } else if (i5 == 5) {
                return i2 + 4;
            } else {
                throw zzenn.d();
            }
        } else {
            throw zzenn.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2, int i3, dnr<?> dnrVar, dlr dlrVar) {
        dnk dnkVar = (dnk) dnrVar;
        int a2 = a(bArr, i2, dlrVar);
        dnkVar.d(dlrVar.f26931a);
        while (a2 < i3) {
            int a3 = a(bArr, a2, dlrVar);
            if (i != dlrVar.f26931a) {
                break;
            }
            a2 = a(bArr, a3, dlrVar);
            dnkVar.d(dlrVar.f26931a);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2, int i3, dqj dqjVar, dlr dlrVar) throws zzenn {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int b2 = b(bArr, i2, dlrVar);
                dqjVar.a(i, Long.valueOf(dlrVar.f26932b));
                return b2;
            } else if (i5 == 1) {
                dqjVar.a(i, Long.valueOf(b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a2 = a(bArr, i2, dlrVar);
                int i6 = dlrVar.f26931a;
                if (i6 < 0) {
                    throw zzenn.b();
                } else if (i6 <= bArr.length - a2) {
                    if (i6 == 0) {
                        dqjVar.a(i, dlw.f26941a);
                    } else {
                        dqjVar.a(i, dlw.a(bArr, a2, i6));
                    }
                    return a2 + i6;
                } else {
                    throw zzenn.a();
                }
            } else if (i5 == 3) {
                dqj b3 = dqj.b();
                int i7 = (i & (-8)) | 4;
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a3 = a(bArr, i2, dlrVar);
                    i8 = dlrVar.f26931a;
                    if (i8 == i7) {
                        i4 = a3;
                        i8 = i8;
                        break;
                    }
                    i2 = a(i8, bArr, a3, i3, b3, dlrVar);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzenn.h();
                }
                dqjVar.a(i, b3);
                return i4;
            } else if (i5 == 5) {
                dqjVar.a(i, Integer.valueOf(a(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzenn.d();
            }
        } else {
            throw zzenn.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, byte[] bArr, int i2, dlr dlrVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            dlrVar.f26931a = i3 | (b2 << 7);
            return i4;
        }
        int i5 = i3 | ((b2 & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b3 = bArr[i4];
        if (b3 >= 0) {
            dlrVar.f26931a = i5 | (b3 << 14);
            return i6;
        }
        int i7 = i5 | ((b3 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b4 = bArr[i6];
        if (b4 >= 0) {
            dlrVar.f26931a = i7 | (b4 << 21);
            return i8;
        }
        int i9 = i7 | ((b4 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b5 = bArr[i8];
        if (b5 >= 0) {
            dlrVar.f26931a = i9 | (b5 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                dlrVar.f26931a = i9 | ((b5 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(dpp<?> dppVar, int i, byte[] bArr, int i2, int i3, dnr<?> dnrVar, dlr dlrVar) throws IOException {
        int a2 = a(dppVar, bArr, i2, i3, dlrVar);
        dnrVar.add(dlrVar.f26933c);
        while (a2 < i3) {
            int a3 = a(bArr, a2, dlrVar);
            if (i != dlrVar.f26931a) {
                break;
            }
            a2 = a(dppVar, bArr, a3, i3, dlrVar);
            dnrVar.add(dlrVar.f26933c);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(dpp dppVar, byte[] bArr, int i, int i2, int i3, dlr dlrVar) throws IOException {
        dox doxVar = (dox) dppVar;
        Object a2 = doxVar.a();
        int a3 = doxVar.a((dox) a2, bArr, i, i2, i3, dlrVar);
        doxVar.c((dox) a2);
        dlrVar.f26933c = a2;
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(dpp dppVar, byte[] bArr, int i, int i2, dlr dlrVar) throws IOException {
        int i3 = i + 1;
        byte b2 = bArr[i];
        int i4 = i3;
        int i5 = b2;
        if (b2 < 0) {
            i4 = a(b2, bArr, i3, dlrVar);
            i5 = dlrVar.f26931a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzenn.a();
        }
        Object a2 = dppVar.a();
        int i6 = i5 + i4;
        dppVar.a(a2, bArr, i4, i6, dlrVar);
        dppVar.c(a2);
        dlrVar.f26933c = a2;
        return i6;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i, dlr dlrVar) {
        int i2 = i + 1;
        byte b2 = bArr[i];
        if (b2 < 0) {
            return a(b2, bArr, i2, dlrVar);
        }
        dlrVar.f26931a = b2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i, dnr<?> dnrVar, dlr dlrVar) throws IOException {
        dnk dnkVar = (dnk) dnrVar;
        int a2 = a(bArr, i, dlrVar);
        int i2 = dlrVar.f26931a + a2;
        while (a2 < i2) {
            a2 = a(bArr, a2, dlrVar);
            dnkVar.d(dlrVar.f26931a);
        }
        if (a2 == i2) {
            return a2;
        }
        throw zzenn.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i, dlr dlrVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            dlrVar.f26932b = j;
            return i2;
        }
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
        dlrVar.f26932b = j2;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double c(byte[] bArr, int i) {
        return Double.longBitsToDouble(b(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i, dlr dlrVar) throws zzenn {
        int a2 = a(bArr, i, dlrVar);
        int i2 = dlrVar.f26931a;
        if (i2 < 0) {
            throw zzenn.b();
        } else if (i2 == 0) {
            dlrVar.f26933c = "";
            return a2;
        } else {
            dlrVar.f26933c = new String(bArr, a2, i2, dnj.f27001a);
            return a2 + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(byte[] bArr, int i) {
        return Float.intBitsToFloat(a(bArr, i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(byte[] bArr, int i, dlr dlrVar) throws zzenn {
        int a2 = a(bArr, i, dlrVar);
        int i2 = dlrVar.f26931a;
        if (i2 < 0) {
            throw zzenn.b();
        } else if (i2 == 0) {
            dlrVar.f26933c = "";
            return a2;
        } else {
            dlrVar.f26933c = dqp.b(bArr, a2, i2);
            return a2 + i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(byte[] bArr, int i, dlr dlrVar) throws zzenn {
        int a2 = a(bArr, i, dlrVar);
        int i2 = dlrVar.f26931a;
        if (i2 < 0) {
            throw zzenn.b();
        } else if (i2 > bArr.length - a2) {
            throw zzenn.a();
        } else if (i2 == 0) {
            dlrVar.f26933c = dlw.f26941a;
            return a2;
        } else {
            dlrVar.f26933c = dlw.a(bArr, a2, i2);
            return a2 + i2;
        }
    }
}
