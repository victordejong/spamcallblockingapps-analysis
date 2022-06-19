package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzff.class */
public final class zzff {
    public static final byte[] zzb;
    private static final ByteBuffer zzd;
    private static final zzeg zze;
    static final Charset zza = Charset.forName("UTF-8");
    private static final Charset zzc = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzb = bArr;
        zzd = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzb;
        zze = zzeg.zza(bArr2, 0, bArr2.length, false);
    }

    public static int zza(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    public static int zza(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    public static <T> T zza(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
    }

    public static Object zza(Object obj, Object obj2) {
        return ((zzgo) obj).zzbr().zza((zzgo) obj2).zzt();
    }

    public static <T> T zza(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static boolean zza(zzgo zzgoVar) {
        if (zzgoVar instanceof zzdm) {
            zzdm zzdmVar = (zzdm) zzgoVar;
            return false;
        }
        return false;
    }

    public static boolean zza(byte[] bArr) {
        return zzie.zza(bArr);
    }

    public static String zzb(byte[] bArr) {
        return new String(bArr, zza);
    }

    public static int zzc(byte[] bArr) {
        int length = bArr.length;
        int zza2 = zza(length, bArr, 0, length);
        int i = zza2;
        if (zza2 == 0) {
            i = 1;
        }
        return i;
    }
}
