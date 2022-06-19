package com.google.android.gms.internal.firebase_remote_config;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhm.class */
public final class zzhm {
    public static final byte[] zzua;
    private static final ByteBuffer zzub;
    private static final zzgj zzuc;
    static final Charset UTF_8 = Charset.forName("UTF-8");
    private static final Charset ISO_8859_1 = Charset.forName("ISO-8859-1");

    static {
        byte[] bArr = new byte[0];
        zzua = bArr;
        zzub = ByteBuffer.wrap(bArr);
        byte[] bArr2 = zzua;
        zzuc = zzgj.zza(bArr2, 0, bArr2.length, false);
    }

    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException();
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
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    public static <T> T zza(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public static Object zzc(Object obj, Object obj2) {
        return ((zziq) obj).zzgu().zza((zziq) obj2).zzha();
    }

    public static boolean zze(byte[] bArr) {
        return zzkg.zze(bArr);
    }

    public static int zzf(boolean z) {
        return z ? 1231 : 1237;
    }

    public static String zzf(byte[] bArr) {
        return new String(bArr, UTF_8);
    }

    public static boolean zzf(zziq zziqVar) {
        return false;
    }

    public static int zzo(long j) {
        return (int) (j ^ (j >>> 32));
    }
}
