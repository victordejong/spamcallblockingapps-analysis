package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zztk.class */
public final class zztk {
    private int zzb;
    private int zzc;
    private int zzd = 0;
    private zzsx[] zze = new zzsx[100];
    private final zzsx[] zza = new zzsx[1];

    public zztk(boolean z, int i) {
    }

    public final int zza() {
        int i;
        synchronized (this) {
            i = this.zzc;
        }
        return i * 65536;
    }

    public final zzsx zzb() {
        zzsx zzsxVar;
        synchronized (this) {
            this.zzc++;
            int i = this.zzd;
            if (i > 0) {
                zzsx[] zzsxVarArr = this.zze;
                int i2 = i - 1;
                this.zzd = i2;
                zzsxVar = zzsxVarArr[i2];
                Objects.requireNonNull(zzsxVar);
                zzsxVarArr[i2] = null;
            } else {
                zzsxVar = new zzsx(new byte[65536], 0);
            }
        }
        return zzsxVar;
    }

    public final void zzc(zzsx zzsxVar) {
        synchronized (this) {
            zzsx[] zzsxVarArr = this.zza;
            zzsxVarArr[0] = zzsxVar;
            zzd(zzsxVarArr);
        }
    }

    public final void zzd(zzsx[] zzsxVarArr) {
        synchronized (this) {
            int i = this.zzd;
            int length = zzsxVarArr.length;
            int i2 = i + length;
            zzsx[] zzsxVarArr2 = this.zze;
            int length2 = zzsxVarArr2.length;
            int i3 = 0;
            if (i2 >= length2) {
                this.zze = (zzsx[]) Arrays.copyOf(zzsxVarArr2, Math.max(length2 + length2, i2));
                i3 = 0;
            }
            while (i3 < length) {
                zzsx zzsxVar = zzsxVarArr[i3];
                zzsx[] zzsxVarArr3 = this.zze;
                int i4 = this.zzd;
                this.zzd = i4 + 1;
                zzsxVarArr3[i4] = zzsxVar;
                i3++;
            }
            this.zzc -= zzsxVarArr.length;
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
            int max = Math.max(0, zzfn.zze(this.zzb, 65536) - this.zzc);
            int i = this.zzd;
            if (max >= i) {
                return;
            }
            Arrays.fill(this.zze, max, i, (Object) null);
            this.zzd = max;
        }
    }
}
