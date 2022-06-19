package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauc.class */
public final class zzauc {
    private int zzb;
    private int zzc;
    private int zzd = 0;
    private zzatw[] zze = new zzatw[100];
    private final zzatw[] zza = new zzatw[1];

    public zzauc(boolean z, int i) {
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

    public final zzatw zzc() {
        zzatw zzatwVar;
        synchronized (this) {
            this.zzc++;
            int i = this.zzd;
            if (i > 0) {
                zzatw[] zzatwVarArr = this.zze;
                int i2 = i - 1;
                this.zzd = i2;
                zzatwVar = zzatwVarArr[i2];
                zzatwVarArr[i2] = null;
            } else {
                zzatwVar = new zzatw(new byte[65536], 0);
            }
        }
        return zzatwVar;
    }

    public final void zzd(zzatw zzatwVar) {
        synchronized (this) {
            zzatw[] zzatwVarArr = this.zza;
            zzatwVarArr[0] = zzatwVar;
            zze(zzatwVarArr);
        }
    }

    public final void zze(zzatw[] zzatwVarArr) {
        synchronized (this) {
            int i = this.zzd;
            int length = zzatwVarArr.length;
            int i2 = i + length;
            zzatw[] zzatwVarArr2 = this.zze;
            int length2 = zzatwVarArr2.length;
            int i3 = 0;
            if (i2 >= length2) {
                this.zze = (zzatw[]) Arrays.copyOf(zzatwVarArr2, Math.max(length2 + length2, i2));
                i3 = 0;
            }
            while (i3 < length) {
                zzatw zzatwVar = zzatwVarArr[i3];
                byte[] bArr = zzatwVar.zza;
                zzatw[] zzatwVarArr3 = this.zze;
                int i4 = this.zzd;
                this.zzd = i4 + 1;
                zzatwVarArr3[i4] = zzatwVar;
                i3++;
            }
            this.zzc -= zzatwVarArr.length;
            notifyAll();
        }
    }

    public final void zzf() {
        synchronized (this) {
            int max = Math.max(0, zzave.zze(this.zzb, 65536) - this.zzc);
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
