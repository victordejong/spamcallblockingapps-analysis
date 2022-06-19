package com.google.android.gms.internal.mlkit_translate;

import com.tenor.android.core.constant.StringConstant;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzkf.class */
public final class zzkf {
    public static final byte[] zzb;
    private static final ByteBuffer zzd;
    private static final zzjk zze;
    public static final Charset zza = Charset.forName(StringConstant.UTF8);
    private static final Charset zzc = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzb = bArr;
        zzd = ByteBuffer.wrap(bArr);
        zze = zzjk.zza(bArr, 0, bArr.length, false);
    }

    public static int zza(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
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
        return ((zzlk) obj).zzm().zza((zzlk) obj2).zzg();
    }

    public static <T> T zza(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static boolean zza(zzlk zzlkVar) {
        if (zzlkVar instanceof zziv) {
            zziv zzivVar = (zziv) zzlkVar;
            return false;
        }
        return false;
    }

    public static boolean zza(byte[] bArr) {
        return zznb.zza(bArr);
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
