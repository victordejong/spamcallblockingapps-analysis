package com.google.android.gms.internal.measurement;

import com.pubmatic.sdk.common.POBCommonConstants;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzia.class */
public final class zzia {
    static final Charset zza = Charset.forName(POBCommonConstants.URL_ENCODING);
    static final Charset zzb = Charset.forName("ISO-8859-1");
    public static final byte[] zzc;
    public static final ByteBuffer zzd;
    public static final zzgv zze;

    static {
        byte[] bArr = new byte[0];
        zzc = bArr;
        zzd = ByteBuffer.wrap(bArr);
        zzgu zzguVar = new zzgu(bArr, 0, 0, false, null);
        try {
            zzguVar.zza(0);
            zze = zzguVar;
        } catch (zzic e) {
            throw new IllegalArgumentException(e);
        }
    }

    public static <T> T zza(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T zzb(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static boolean zzc(byte[] bArr) {
        return zzkn.zza(bArr);
    }

    public static String zzd(byte[] bArr) {
        return new String(bArr, zza);
    }

    public static int zze(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int zzf(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int zzg(byte[] bArr) {
        int length = bArr.length;
        int zzh = zzh(length, bArr, 0, length);
        int i = zzh;
        if (zzh == 0) {
            i = 1;
        }
        return i;
    }

    public static int zzh(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    public static Object zzi(Object obj, Object obj2) {
        return ((zzix) obj).zzbG().zzau((zzix) obj2).zzaD();
    }
}
