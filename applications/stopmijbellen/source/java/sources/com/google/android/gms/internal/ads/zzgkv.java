package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgkv.class */
public final class zzgkv {
    public static final Charset zza = Charset.forName("US-ASCII");
    public static final Charset zzb = Charset.forName("UTF-8");
    public static final Charset zzc = Charset.forName("ISO-8859-1");
    public static final byte[] zzd;
    public static final ByteBuffer zze;
    public static final zzgjn zzf;

    static {
        byte[] bArr = new byte[0];
        zzd = bArr;
        zze = ByteBuffer.wrap(bArr);
        zzf = zzgjn.zzH(bArr, 0, 0, false);
    }

    public static int zza(boolean z) {
        return z ? 1231 : 1237;
    }

    public static int zzb(byte[] bArr) {
        int length = bArr.length;
        int zzd2 = zzd(length, bArr, 0, length);
        int i = zzd2;
        if (zzd2 == 0) {
            i = 1;
        }
        return i;
    }

    public static int zzc(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static int zzd(int i, byte[] bArr, int i2, int i3) {
        int i4 = i;
        for (int i5 = i2; i5 < i2 + i3; i5++) {
            i4 = (i4 * 31) + bArr[i5];
        }
        return i4;
    }

    public static <T> T zze(T t) {
        Objects.requireNonNull(t);
        return t;
    }

    public static <T> T zzf(T t, String str) {
        Objects.requireNonNull(t, str);
        return t;
    }

    public static Object zzg(Object obj, Object obj2) {
        return ((zzglv) obj).zzaH().zzad((zzglv) obj2).zzaj();
    }

    public static String zzh(byte[] bArr) {
        return new String(bArr, zzb);
    }

    public static boolean zzi(byte[] bArr) {
        return zzgnu.zzi(bArr);
    }
}
