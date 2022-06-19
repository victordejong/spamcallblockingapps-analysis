package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.IOException;
import org.checkerframework.dataflow.qual.Pure;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzny.class */
public final class zzny {
    @Pure
    public static void zza(boolean z, String str) throws zzaha {
        if (z) {
            return;
        }
        throw zzaha.zzb(str, null);
    }

    public static int zzb(zznv zznvVar, byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int zzf;
        int i4 = 0;
        while (true) {
            i3 = i4;
            if (i3 >= i2 || (zzf = zznvVar.zzf(bArr, i + i3, i2 - i3)) == -1) {
                break;
            }
            i4 = i3 + zzf;
        }
        return i3;
    }

    public static boolean zzc(zznv zznvVar, byte[] bArr, int i, int i2) throws IOException {
        try {
            ((zznp) zznvVar).zza(bArr, i, i2, false);
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    public static boolean zzd(zznv zznvVar, int i) throws IOException {
        try {
            ((zznp) zznvVar).zzd(i, false);
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    public static boolean zze(zznv zznvVar, byte[] bArr, int i, int i2, boolean z) throws IOException {
        try {
            return zznvVar.zzh(bArr, 0, i2, z);
        } catch (EOFException e) {
            if (!z) {
                throw e;
            }
            return false;
        }
    }
}
