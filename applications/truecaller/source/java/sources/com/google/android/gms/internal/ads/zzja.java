package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzja.class */
public final class zzja<V> {
    private int zza;
    private final SparseArray<V> zzb;
    private final zzakx<V> zzc;

    public zzja() {
        zzakx zzakxVar = zziz.zza;
        throw null;
    }

    public zzja(zzakx<V> zzakxVar) {
        this.zzb = new SparseArray<>();
        this.zzc = zzakxVar;
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

    public final void zzb(int i, V v) {
        if (this.zza == -1) {
            zzakt.zzd(this.zzb.size() == 0);
            this.zza = 0;
        }
        if (this.zzb.size() > 0) {
            SparseArray<V> sparseArray = this.zzb;
            int keyAt = sparseArray.keyAt(sparseArray.size() - 1);
            zzakt.zza(i >= keyAt);
            if (keyAt == i) {
                SparseArray<V> sparseArray2 = this.zzb;
                ((zzir) sparseArray2.valueAt(sparseArray2.size() - 1)).zzb;
            }
        }
        this.zzb.append(i, v);
    }

    public final V zzc() {
        SparseArray<V> sparseArray = this.zzb;
        return sparseArray.valueAt(sparseArray.size() - 1);
    }

    public final void zzd(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.zzb.size() - 1) {
                int i4 = i3 + 1;
                if (i < this.zzb.keyAt(i4)) {
                    return;
                }
                ((zzir) this.zzb.valueAt(i3)).zzb;
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

    public final void zze() {
        for (int i = 0; i < this.zzb.size(); i++) {
            ((zzir) this.zzb.valueAt(i)).zzb;
        }
        this.zza = -1;
        this.zzb.clear();
    }

    public final boolean zzf() {
        return this.zzb.size() == 0;
    }
}
