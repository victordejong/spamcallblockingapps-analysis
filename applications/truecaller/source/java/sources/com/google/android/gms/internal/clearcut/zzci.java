package com.google.android.gms.internal.clearcut;

import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzci.class */
public final class zzci {
    public static final byte[] zzkt;
    private static final ByteBuffer zzku;
    private static final zzbk zzkv;
    public static final Charset UTF_8 = Charset.forName(StringConstant.UTF8);
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzkt = bArr;
        zzku = ByteBuffer.wrap(bArr);
        zzkv = zzbk.zza(bArr, 0, bArr.length, false);
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

    public static Object zza(Object obj, Object obj2) {
        return ((zzdo) obj).zzbc().zza((zzdo) obj2).zzbi();
    }

    public static <T> T zza(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static int zzc(boolean z) {
        return z ? 1231 : 1237;
    }

    public static boolean zze(byte[] bArr) {
        return zzff.zze(bArr);
    }

    public static String zzf(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static boolean zzf(zzdo zzdoVar) {
        return false;
    }

    public static int zzl(long j) {
        return (int) (j ^ (j >>> 32));
    }
}
