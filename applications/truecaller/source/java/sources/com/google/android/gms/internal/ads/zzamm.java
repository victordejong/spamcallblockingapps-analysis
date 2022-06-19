package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzamm.class */
public final class zzamm<V> {
    private long[] zza;
    private V[] zzb;
    private int zzc;
    private int zzd;

    public zzamm() {
        this(10);
    }

    public zzamm(int i) {
        this.zza = new long[10];
        this.zzb = (V[]) new Object[10];
    }

    private final V zzf() {
        zzakt.zzd(this.zzd > 0);
        V[] vArr = this.zzb;
        int i = this.zzc;
        V v = vArr[i];
        vArr[i] = null;
        this.zzc = (i + 1) % vArr.length;
        this.zzd--;
        return v;
    }

    public final void zza(long j, V v) {
        synchronized (this) {
            int i = this.zzd;
            if (i > 0) {
                int i2 = this.zzc;
                if (j <= this.zza[((i2 + i) - 1) % this.zzb.length]) {
                    zzb();
                }
            }
            int length = this.zzb.length;
            if (this.zzd >= length) {
                int i3 = length + length;
                long[] jArr = new long[i3];
                V[] vArr = (V[]) new Object[i3];
                int i4 = this.zzc;
                int i5 = length - i4;
                System.arraycopy(this.zza, i4, jArr, 0, i5);
                System.arraycopy(this.zzb, this.zzc, vArr, 0, i5);
                int i6 = this.zzc;
                if (i6 > 0) {
                    System.arraycopy(this.zza, 0, jArr, i5, i6);
                    System.arraycopy(this.zzb, 0, vArr, i5, this.zzc);
                }
                this.zza = jArr;
                this.zzb = vArr;
                this.zzc = 0;
            }
            int i7 = this.zzc;
            int i8 = this.zzd;
            V[] vArr2 = this.zzb;
            int length2 = (i7 + i8) % vArr2.length;
            this.zza[length2] = j;
            vArr2[length2] = v;
            this.zzd = i8 + 1;
        }
    }

    public final void zzb() {
        synchronized (this) {
            this.zzc = 0;
            this.zzd = 0;
            Arrays.fill(this.zzb, (Object) null);
        }
    }

    public final int zzc() {
        int i;
        synchronized (this) {
            i = this.zzd;
        }
        return i;
    }

    public final V zzd() {
        synchronized (this) {
            if (this.zzd == 0) {
                return null;
            }
            return zzf();
        }
    }

    public final V zze(long j) {
        V v;
        synchronized (this) {
            v = null;
            while (this.zzd > 0 && j - this.zza[this.zzc] >= 0) {
                v = zzf();
            }
        }
        return v;
    }
}
