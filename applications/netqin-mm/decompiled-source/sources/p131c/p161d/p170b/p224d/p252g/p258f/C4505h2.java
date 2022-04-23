package p131c.p161d.p170b.p224d.p252g.p258f;

import com.google.android.gms.internal.measurement.zzgp;
import com.google.android.gms.internal.measurement.zzia;
import com.google.android.gms.internal.measurement.zzig;
import com.google.android.gms.internal.measurement.zzij;
import com.google.android.gms.internal.measurement.zzks;
import java.io.IOException;
/* renamed from: c.d.b.d.g.f.h2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/h2.class */
public final class C4505h2 {
    /* renamed from: a */
    public static int m25470a(int i, byte[] bArr, int i2, int i3, C4530k2 k2Var) throws zzij {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                return m25459b(bArr, i2, k2Var);
            }
            if (i5 == 1) {
                return i2 + 8;
            }
            if (i5 == 2) {
                return m25462a(bArr, i2, k2Var) + k2Var.f16800a;
            }
            if (i5 == 3) {
                int i6 = (i & (-8)) | 4;
                int i7 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a = m25462a(bArr, i2, k2Var);
                    i7 = k2Var.f16800a;
                    i7 = i7;
                    i4 = a;
                    if (i7 == i6) {
                        break;
                    }
                    i2 = m25470a(i7, bArr, a, i3, k2Var);
                }
                if (i4 <= i3 && i7 == i6) {
                    return i4;
                }
                throw zzij.zzg();
            } else if (i5 == 5) {
                return i2 + 4;
            } else {
                throw zzij.zzd();
            }
        } else {
            throw zzij.zzd();
        }
    }

    /* renamed from: a */
    public static int m25469a(int i, byte[] bArr, int i2, int i3, zzig<?> zzigVar, C4530k2 k2Var) {
        C4513i3 i3Var = (C4513i3) zzigVar;
        int a = m25462a(bArr, i2, k2Var);
        i3Var.m25449a(k2Var.f16800a);
        while (a < i3) {
            int a2 = m25462a(bArr, a, k2Var);
            if (i != k2Var.f16800a) {
                break;
            }
            a = m25462a(bArr, a2, k2Var);
            i3Var.m25449a(k2Var.f16800a);
        }
        return a;
    }

    /* renamed from: a */
    public static int m25468a(int i, byte[] bArr, int i2, int i3, zzks zzksVar, C4530k2 k2Var) throws zzij {
        int i4;
        if ((i >>> 3) != 0) {
            int i5 = i & 7;
            if (i5 == 0) {
                int b = m25459b(bArr, i2, k2Var);
                zzksVar.m9608a(i, Long.valueOf(k2Var.f16801b));
                return b;
            } else if (i5 == 1) {
                zzksVar.m9608a(i, Long.valueOf(m25460b(bArr, i2)));
                return i2 + 8;
            } else if (i5 == 2) {
                int a = m25462a(bArr, i2, k2Var);
                int i6 = k2Var.f16800a;
                if (i6 < 0) {
                    throw zzij.zzb();
                } else if (i6 <= bArr.length - a) {
                    if (i6 == 0) {
                        zzksVar.m9608a(i, zzgp.zza);
                    } else {
                        zzksVar.m9608a(i, zzgp.zza(bArr, a, i6));
                    }
                    return a + i6;
                } else {
                    throw zzij.zza();
                }
            } else if (i5 == 3) {
                zzks e = zzks.m9599e();
                int i7 = (i & (-8)) | 4;
                int i8 = 0;
                while (true) {
                    i4 = i2;
                    if (i2 >= i3) {
                        break;
                    }
                    int a2 = m25462a(bArr, i2, k2Var);
                    i8 = k2Var.f16800a;
                    if (i8 == i7) {
                        i4 = a2;
                        i8 = i8;
                        break;
                    }
                    i2 = m25468a(i8, bArr, a2, i3, e, k2Var);
                }
                if (i4 > i3 || i8 != i7) {
                    throw zzij.zzg();
                }
                zzksVar.m9608a(i, e);
                return i4;
            } else if (i5 == 5) {
                zzksVar.m9608a(i, Integer.valueOf(m25463a(bArr, i2)));
                return i2 + 4;
            } else {
                throw zzij.zzd();
            }
        } else {
            throw zzij.zzd();
        }
    }

    /* renamed from: a */
    public static int m25467a(int i, byte[] bArr, int i2, C4530k2 k2Var) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            k2Var.f16800a = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            k2Var.f16800a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            k2Var.f16800a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            k2Var.f16800a = i9 | (b4 << 28);
            return i10;
        }
        while (true) {
            int i11 = i10 + 1;
            if (bArr[i10] >= 0) {
                k2Var.f16800a = i9 | ((b4 & Byte.MAX_VALUE) << 28);
                return i11;
            }
            i10 = i11;
        }
    }

    /* renamed from: a */
    public static int m25466a(AbstractC4560o4<?> o4Var, int i, byte[] bArr, int i2, int i3, zzig<?> zzigVar, C4530k2 k2Var) throws IOException {
        int a = m25464a(o4Var, bArr, i2, i3, k2Var);
        zzigVar.add(k2Var.f16802c);
        while (a < i3) {
            int a2 = m25462a(bArr, a, k2Var);
            if (i != k2Var.f16800a) {
                break;
            }
            a = m25464a(o4Var, bArr, a2, i3, k2Var);
            zzigVar.add(k2Var.f16802c);
        }
        return a;
    }

    /* renamed from: a */
    public static int m25465a(AbstractC4560o4 o4Var, byte[] bArr, int i, int i2, int i3, C4530k2 k2Var) throws IOException {
        C4472c4 c4Var = (C4472c4) o4Var;
        Object zza = c4Var.zza();
        int a = c4Var.m25540a((C4472c4) zza, bArr, i, i2, i3, k2Var);
        c4Var.mo25351a((C4472c4) zza);
        k2Var.f16802c = zza;
        return a;
    }

    /* renamed from: a */
    public static int m25464a(AbstractC4560o4 o4Var, byte[] bArr, int i, int i2, C4530k2 k2Var) throws IOException {
        int i3 = i + 1;
        byte b = bArr[i];
        int i4 = i3;
        int i5 = b;
        if (b < 0) {
            i4 = m25467a(b, bArr, i3, k2Var);
            i5 = k2Var.f16800a;
        }
        if (i5 < 0 || i5 > i2 - i4) {
            throw zzij.zza();
        }
        Object zza = o4Var.zza();
        int i6 = i5 + i4;
        o4Var.mo25347a(zza, bArr, i4, i6, k2Var);
        o4Var.mo25351a(zza);
        k2Var.f16802c = zza;
        return i6;
    }

    /* renamed from: a */
    public static int m25463a(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    /* renamed from: a */
    public static int m25462a(byte[] bArr, int i, C4530k2 k2Var) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return m25467a(b, bArr, i2, k2Var);
        }
        k2Var.f16800a = b;
        return i2;
    }

    /* renamed from: a */
    public static int m25461a(byte[] bArr, int i, zzig<?> zzigVar, C4530k2 k2Var) throws IOException {
        C4513i3 i3Var = (C4513i3) zzigVar;
        int a = m25462a(bArr, i, k2Var);
        int i2 = k2Var.f16800a + a;
        while (a < i2) {
            a = m25462a(bArr, a, k2Var);
            i3Var.m25449a(k2Var.f16800a);
        }
        if (a == i2) {
            return a;
        }
        throw zzij.zza();
    }

    /* renamed from: b */
    public static int m25459b(byte[] bArr, int i, C4530k2 k2Var) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            k2Var.f16801b = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            b = bArr[i3];
            i4 += 7;
            j2 |= (b & Byte.MAX_VALUE) << i4;
            i3++;
        }
        k2Var.f16801b = j2;
        return i3;
    }

    /* renamed from: b */
    public static long m25460b(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* renamed from: c */
    public static double m25458c(byte[] bArr, int i) {
        return Double.longBitsToDouble(m25460b(bArr, i));
    }

    /* renamed from: c */
    public static int m25457c(byte[] bArr, int i, C4530k2 k2Var) throws zzij {
        int a = m25462a(bArr, i, k2Var);
        int i2 = k2Var.f16800a;
        if (i2 < 0) {
            throw zzij.zzb();
        } else if (i2 == 0) {
            k2Var.f16802c = "";
            return a;
        } else {
            k2Var.f16802c = new String(bArr, a, i2, zzia.f29511a);
            return a + i2;
        }
    }

    /* renamed from: d */
    public static float m25456d(byte[] bArr, int i) {
        return Float.intBitsToFloat(m25463a(bArr, i));
    }

    /* renamed from: d */
    public static int m25455d(byte[] bArr, int i, C4530k2 k2Var) throws zzij {
        int a = m25462a(bArr, i, k2Var);
        int i2 = k2Var.f16800a;
        if (i2 < 0) {
            throw zzij.zzb();
        } else if (i2 == 0) {
            k2Var.f16802c = "";
            return a;
        } else {
            k2Var.f16802c = C4547m5.m25358b(bArr, a, i2);
            return a + i2;
        }
    }

    /* renamed from: e */
    public static int m25454e(byte[] bArr, int i, C4530k2 k2Var) throws zzij {
        int a = m25462a(bArr, i, k2Var);
        int i2 = k2Var.f16800a;
        if (i2 < 0) {
            throw zzij.zzb();
        } else if (i2 > bArr.length - a) {
            throw zzij.zza();
        } else if (i2 == 0) {
            k2Var.f16802c = zzgp.zza;
            return a;
        } else {
            k2Var.f16802c = zzgp.zza(bArr, a, i2);
            return a + i2;
        }
    }
}
