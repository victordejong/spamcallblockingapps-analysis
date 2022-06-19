package com.google.android.gms.internal.vision;

import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzgt.class */
public final class zzgt {
    public static final byte[] zzxc;
    private static final ByteBuffer zzxd;
    private static final zzft zzxe;
    public static final Charset UTF_8 = Charset.forName(StringConstant.UTF8);
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzxc = bArr;
        zzxd = ByteBuffer.wrap(bArr);
        zzxe = zzft.zza(bArr, 0, bArr.length, false);
    }

    public static <T> T checkNotNull(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static int hashCode(byte[] bArr) {
        int length = bArr.length;
        int zza = zza(length, bArr, 0, length);
        int i = zza;
        if (zza == 0) {
            i = 1;
        }
        return i;
    }

    public static int zza(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static <T> T zza(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static int zzab(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static Object zzb(Object obj, Object obj2) {
        return ((zzic) obj).zzgi().zza((zzic) obj2).zzgb();
    }

    public static boolean zzf(zzic zzicVar) {
        if (zzicVar instanceof zzev) {
            zzev zzevVar = (zzev) zzicVar;
            return false;
        }
        return false;
    }

    public static boolean zzg(byte[] bArr) {
        return zzjs.zzg(bArr);
    }

    public static String zzh(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static int zzm(boolean z) {
        return z ? 1231 : 1237;
    }
}
