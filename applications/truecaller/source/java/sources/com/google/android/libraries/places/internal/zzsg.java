package com.google.android.libraries.places.internal;

import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzsg.class */
public final class zzsg {
    public static final byte[] zzb;
    private static final ByteBuffer zzd;
    private static final zzrn zze;
    public static final Charset zza = Charset.forName(StringConstant.UTF8);
    private static final Charset zzc = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzb = bArr;
        zzd = ByteBuffer.wrap(bArr);
        zze = zzrn.zza(bArr, 0, bArr.length, false);
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
        Objects.requireNonNull(t);
        return t;
    }

    public static Object zza(Object obj, Object obj2) {
        return ((zzto) obj).zzl().zza((zzto) obj2).zzf();
    }

    public static <T> T zza(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static boolean zza(zzto zztoVar) {
        if (zztoVar instanceof zzqy) {
            zzqy zzqyVar = (zzqy) zztoVar;
            return false;
        }
        return false;
    }

    public static boolean zza(byte[] bArr) {
        return zzvf.zza(bArr);
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
