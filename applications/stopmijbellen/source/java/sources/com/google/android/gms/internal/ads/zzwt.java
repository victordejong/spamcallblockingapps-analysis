package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwt.class */
public final class zzwt {
    public static int zza(zzwq zzwqVar, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int zza;
        int i4 = 0;
        while (true) {
            i3 = i4;
            if (i3 >= i2 || (zza = zzwqVar.zza(bArr, i + i3, i2 - i3)) == -1) {
                break;
            }
            i4 = i3 + zza;
        }
        return i3;
    }

    @Pure
    public static void zzb(boolean z, String str) throws zzbj {
        if (z) {
            return;
        }
        throw zzbj.zza(str, null);
    }

    public static boolean zzc(zzwq zzwqVar, byte[] bArr, int i, int i2, boolean z) throws IOException {
        try {
            return zzwqVar.zzm(bArr, 0, i2, z);
        } catch (EOFException e) {
            if (!z) {
                throw e;
            }
            return false;
        }
    }

    public static boolean zzd(zzwq zzwqVar, byte[] bArr, int i, int i2) throws IOException {
        try {
            ((zzwk) zzwqVar).zzn(bArr, i, i2, false);
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    public static boolean zze(zzwq zzwqVar, int i) throws IOException {
        try {
            ((zzwk) zzwqVar).zzo(i, false);
            return true;
        } catch (EOFException e) {
            return false;
        }
    }
}
