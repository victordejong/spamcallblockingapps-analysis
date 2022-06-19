package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzavz.class */
public final class zzavz {
    private int zzb;
    private int zzc;
    private int zzd = 0;
    private zzavt[] zze = new zzavt[100];
    private final zzavt[] zza = new zzavt[1];

    public zzavz(boolean z, int i) {
    }

    public final int zza() {
        int i;
        synchronized (this) {
            i = this.zzc;
        }
        return i * 65536;
    }

    public final zzavt zzb() {
        zzavt zzavtVar;
        synchronized (this) {
            this.zzc++;
            int i = this.zzd;
            if (i > 0) {
                zzavt[] zzavtVarArr = this.zze;
                int i2 = i - 1;
                this.zzd = i2;
                zzavtVar = zzavtVarArr[i2];
                zzavtVarArr[i2] = null;
            } else {
                zzavtVar = new zzavt(new byte[65536], 0);
            }
        }
        return zzavtVar;
    }

    public final void zzc(zzavt zzavtVar) {
        synchronized (this) {
            zzavt[] zzavtVarArr = this.zza;
            zzavtVarArr[0] = zzavtVar;
            zzd(zzavtVarArr);
        }
    }

    public final void zzd(zzavt[] zzavtVarArr) {
        synchronized (this) {
            int i = this.zzd;
            int length = zzavtVarArr.length;
            int i2 = i + length;
            zzavt[] zzavtVarArr2 = this.zze;
            int length2 = zzavtVarArr2.length;
            int i3 = 0;
            if (i2 >= length2) {
                this.zze = (zzavt[]) Arrays.copyOf(zzavtVarArr2, Math.max(length2 + length2, i2));
                i3 = 0;
            }
            while (i3 < length) {
                zzavt zzavtVar = zzavtVarArr[i3];
                byte[] bArr = zzavtVar.zza;
                zzavt[] zzavtVarArr3 = this.zze;
                int i4 = this.zzd;
                this.zzd = i4 + 1;
                zzavtVarArr3[i4] = zzavtVar;
                i3++;
            }
            this.zzc -= zzavtVarArr.length;
            notifyAll();
        }
    }

    public final void zze() {
        synchronized (this) {
            zzf(0);
        }
    }

    public final void zzf(int i) {
        synchronized (this) {
            int i2 = this.zzb;
            this.zzb = i;
            if (i < i2) {
                zzg();
            }
        }
    }

    public final void zzg() {
        synchronized (this) {
            int max = Math.max(0, zzaxb.zzd(this.zzb, 65536) - this.zzc);
            int i = this.zzd;
            if (max >= i) {
                return;
            }
            Arrays.fill(this.zze, max, i, (Object) null);
            this.zzd = max;
        }
    }
}
