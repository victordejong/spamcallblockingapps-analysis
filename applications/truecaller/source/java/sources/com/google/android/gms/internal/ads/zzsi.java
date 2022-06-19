package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsi.class */
public final class zzsi extends zzsm {
    private static final byte[] zza = {79, 112, 117, 115, 72, 101, 97, 100};
    private boolean zzb;

    public static boolean zzd(zzamf zzamfVar) {
        if (zzamfVar.zzd() < 8) {
            return false;
        }
        byte[] bArr = new byte[8];
        zzamfVar.zzm(bArr, 0, 8);
        return Arrays.equals(bArr, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzsm
    public final void zza(boolean z) {
        super.zza(z);
        if (z) {
            this.zzb = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsm
    public final long zzb(zzamf zzamfVar) {
        int i;
        int i2;
        byte[] zzi = zzamfVar.zzi();
        int i3 = zzi[0] & 255;
        int i4 = i3 & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1) {
                i = 2;
                if (i4 != 2) {
                    i = zzi[1] & 63;
                }
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        return zzi(i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }

    @Override // com.google.android.gms.internal.ads.zzsm
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean zzc(zzamf zzamfVar, long j, zzsk zzskVar) {
        boolean z = true;
        if (this.zzb) {
            Objects.requireNonNull(zzskVar.zza);
            if (zzamfVar.zzv() != 1332770163) {
                z = false;
            }
            zzamfVar.zzh(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(zzamfVar.zzi(), zzamfVar.zze());
        byte b = copyOf[9];
        List<byte[]> zza2 = zzop.zza(copyOf);
        zzaft zzaftVar = new zzaft();
        zzaftVar.zzN("audio/opus");
        zzaftVar.zzaa(b & 255);
        zzaftVar.zzab(48000);
        zzaftVar.zzP(zza2);
        zzskVar.zza = zzaftVar.zzah();
        this.zzb = true;
        return true;
    }
}
