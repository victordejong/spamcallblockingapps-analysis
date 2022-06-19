package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzte.class */
public final class zzte {
    private static final byte[] zzd = {0, 0, 1};
    public int zza;
    public int zzb;
    public byte[] zzc = new byte[128];
    private boolean zze;
    private int zzf;

    public zzte(int i) {
    }

    public final void zza() {
        this.zze = false;
        this.zza = 0;
        this.zzf = 0;
    }

    public final boolean zzb(int i, int i2) {
        int i3 = this.zzf;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2) {
                    if (i3 != 3) {
                        if (i == 179 || i == 181) {
                            this.zza -= i2;
                            this.zze = false;
                            return true;
                        }
                    } else if ((i & 240) != 32) {
                        zza();
                    } else {
                        this.zzb = this.zza;
                        this.zzf = 4;
                    }
                } else if (i > 31) {
                    zza();
                } else {
                    this.zzf = 3;
                }
            } else if (i != 181) {
                zza();
            } else {
                this.zzf = 2;
            }
        } else if (i == 176) {
            this.zzf = 1;
            this.zze = true;
        }
        zzc(zzd, 0, 3);
        return false;
    }

    public final void zzc(byte[] bArr, int i, int i2) {
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
}
