package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzrt.class */
public final class zzrt<V> {
    private int zza;
    private final SparseArray<V> zzb;
    private final zzec<V> zzc;

    public zzrt() {
        zzrs zzrsVar = zzrs.zza;
        throw null;
    }

    public zzrt(zzec<V> zzecVar) {
        this.zzb = new SparseArray<>();
        this.zzc = zzecVar;
        this.zza = -1;
    }

    public final V zza(int i) {
        if (this.zza == -1) {
            this.zza = 0;
        }
        while (true) {
            int i2 = this.zza;
            if (i2 > 0 && i < this.zzb.keyAt(i2)) {
                this.zza--;
            }
        }
        while (this.zza < this.zzb.size() - 1 && i >= this.zzb.keyAt(this.zza + 1)) {
            this.zza++;
        }
        return this.zzb.valueAt(this.zza);
    }

    public final V zzb() {
        SparseArray<V> sparseArray = this.zzb;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public final void zzc(int i, V v) {
        if (this.zza == -1) {
            zzdy.zzf(this.zzb.size() == 0);
            this.zza = 0;
        }
        if (this.zzb.size() > 0) {
            SparseArray<V> sparseArray = this.zzb;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            zzdy.zzd(i >= keyAt);
            if (keyAt == i) {
                SparseArray<V> sparseArray2 = this.zzb;
                zzrm.zzl((zzrk) sparseArray2.valueAt(sparseArray2.size() - 1));
            }
        }
        this.zzb.append(i, v);
    }

    public final void zzd() {
        for (int i = 0; i < this.zzb.size(); i++) {
            zzrm.zzl((zzrk) this.zzb.valueAt(i));
        }
        this.zza = -1;
        this.zzb.clear();
    }

    public final void zze(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.zzb.size() - 1) {
                int i4 = i3 + 1;
                if (i < this.zzb.keyAt(i4)) {
                    return;
                }
                zzrm.zzl((zzrk) this.zzb.valueAt(i3));
                this.zzb.removeAt(i3);
                int i5 = this.zza;
                if (i5 > 0) {
                    this.zza = i5 - 1;
                }
                i2 = i4;
            } else {
                return;
            }
        }
    }

    public final boolean zzf() {
        return this.zzb.size() == 0;
    }
}
