package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzko.class */
public final class zzko {
    private int zzb;
    private int zzc;
    private int zzd = 0;
    private zzkb[] zze = new zzkb[100];
    private final zzkb[] zza = new zzkb[1];

    public zzko(boolean z, int i) {
    }

    public final void zza() {
        synchronized (this) {
            zzb(0);
        }
    }

    public final void zzb(int i) {
        synchronized (this) {
            int i2 = this.zzb;
            this.zzb = i;
            if (i < i2) {
                zzf();
            }
        }
    }

    public final zzkb zzc() {
        zzkb zzkbVar;
        synchronized (this) {
            this.zzc++;
            int i = this.zzd;
            if (i > 0) {
                zzkb[] zzkbVarArr = this.zze;
                int i2 = i - 1;
                this.zzd = i2;
                zzkbVar = zzkbVarArr[i2];
                Objects.requireNonNull(zzkbVar);
                zzkbVarArr[i2] = null;
            } else {
                zzkbVar = new zzkb(new byte[65536], 0);
            }
        }
        return zzkbVar;
    }

    public final void zzd(zzkb zzkbVar) {
        synchronized (this) {
            zzkb[] zzkbVarArr = this.zza;
            zzkbVarArr[0] = zzkbVar;
            zze(zzkbVarArr);
        }
    }

    public final void zze(zzkb[] zzkbVarArr) {
        synchronized (this) {
            int i = this.zzd;
            int length = zzkbVarArr.length;
            int i2 = i + length;
            zzkb[] zzkbVarArr2 = this.zze;
            int length2 = zzkbVarArr2.length;
            int i3 = 0;
            if (i2 >= length2) {
                this.zze = (zzkb[]) Arrays.copyOf(zzkbVarArr2, Math.max(length2 + length2, i2));
                i3 = 0;
            }
            while (i3 < length) {
                zzkb zzkbVar = zzkbVarArr[i3];
                zzkb[] zzkbVarArr3 = this.zze;
                int i4 = this.zzd;
                this.zzd = i4 + 1;
                zzkbVarArr3[i4] = zzkbVar;
                i3++;
            }
            this.zzc -= zzkbVarArr.length;
            notifyAll();
        }
    }

    public final void zzf() {
        synchronized (this) {
            int max = Math.max(0, zzamq.zzw(this.zzb, 65536) - this.zzc);
            int i = this.zzd;
            if (max >= i) {
                return;
            }
            Arrays.fill(this.zze, max, i, (Object) null);
            this.zzd = max;
        }
    }

    public final int zzg() {
        int i;
        synchronized (this) {
            i = this.zzc;
        }
        return i * 65536;
    }
}
