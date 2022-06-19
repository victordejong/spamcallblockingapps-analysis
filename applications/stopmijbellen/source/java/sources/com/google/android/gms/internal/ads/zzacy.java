package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzacy.class */
public final class zzacy extends zzadc {
    private static final byte[] zza = {79, 112, 117, 115, 72, 101, 97, 100};
    private boolean zzb;

    public static boolean zzd(zzfd zzfdVar) {
        if (zzfdVar.zza() < 8) {
            return false;
        }
        byte[] bArr = new byte[8];
        zzfdVar.zzB(bArr, 0, 8);
        return Arrays.equals(bArr, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final long zza(zzfd zzfdVar) {
        int i;
        int i2;
        byte[] zzH = zzfdVar.zzH();
        int i3 = zzH[0] & 255;
        int i4 = i3 & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1) {
                i = 2;
                if (i4 != 2) {
                    i = zzH[1] & 63;
                }
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        return zzg(i * (i5 >= 16 ? 2500 << i2 : i5 >= 12 ? 10000 << (i2 & 1) : (i5 & 3) == 3 ? 60000 : 10000 << i2));
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzb(boolean z) {
        super.zzb(z);
        if (z) {
            this.zzb = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean zzc(zzfd zzfdVar, long j, zzacz zzaczVar) {
        boolean z = true;
        if (this.zzb) {
            Objects.requireNonNull(zzaczVar.zza);
            if (zzfdVar.zze() != 1332770163) {
                z = false;
            }
            zzfdVar.zzF(0);
            return z;
        }
        byte[] copyOf = Arrays.copyOf(zzfdVar.zzH(), zzfdVar.zzd());
        byte b = copyOf[9];
        List<byte[]> zza2 = zzxl.zza(copyOf);
        zzz zzzVar = new zzz();
        zzzVar.zzS("audio/opus");
        zzzVar.zzw(b & 255);
        zzzVar.zzT(48000);
        zzzVar.zzI(zza2);
        zzaczVar.zza = zzzVar.zzY();
        this.zzb = true;
        return true;
    }
}
