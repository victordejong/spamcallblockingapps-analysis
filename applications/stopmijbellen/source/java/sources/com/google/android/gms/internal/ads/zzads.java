package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzads.class */
final class zzads {
    private static final byte[] zzd = {0, 0, 1};
    public int zza;
    public int zzb;
    public byte[] zzc = new byte[128];
    private boolean zze;

    public zzads(int i) {
    }

    public final void zza(byte[] bArr, int i, int i2) {
        if (!this.zze) {
            return;
        }
        int i3 = i2 - i;
        byte[] bArr2 = this.zzc;
        int length = bArr2.length;
        int i4 = this.zza + i3;
        if (length < i4) {
            this.zzc = Arrays.copyOf(bArr2, i4 + i4);
        }
        System.arraycopy(bArr, i, this.zzc, this.zza, i3);
        this.zza += i3;
    }

    public final void zzb() {
        this.zze = false;
        this.zza = 0;
        this.zzb = 0;
    }

    public final boolean zzc(int i, int i2) {
        if (this.zze) {
            int i3 = this.zza - i2;
            this.zza = i3;
            if (this.zzb != 0 || i != 181) {
                this.zze = false;
                return true;
            }
            this.zzb = i3;
        } else if (i == 179) {
            this.zze = true;
        }
        zza(zzd, 0, 3);
        return false;
    }
}
