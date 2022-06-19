package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjo.class */
public final class zzjo extends zzv {
    private boolean zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final SparseArray<Map<zzs, zzjq>> zzf;
    private final SparseBooleanArray zzg;

    @Deprecated
    public zzjo() {
        this.zzf = new SparseArray<>();
        this.zzg = new SparseBooleanArray();
        zzt();
    }

    public zzjo(Context context) {
        super.zzk(context);
        Point zzaa = zzamq.zzaa(context);
        zzj(zzaa.x, zzaa.y, true);
        this.zzf = new SparseArray<>();
        this.zzg = new SparseBooleanArray();
        zzt();
    }

    public /* synthetic */ zzjo(zzjn zzjnVar, zzjk zzjkVar) {
        super(zzjnVar);
        SparseArray sparseArray;
        SparseBooleanArray sparseBooleanArray;
        this.zza = zzjnVar.zzD;
        this.zzb = zzjnVar.zzF;
        this.zzc = zzjnVar.zzG;
        this.zzd = zzjnVar.zzK;
        this.zze = zzjnVar.zzM;
        sparseArray = zzjnVar.zzO;
        SparseArray<Map<zzs, zzjq>> sparseArray2 = new SparseArray<>();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
        }
        this.zzf = sparseArray2;
        sparseBooleanArray = zzjnVar.zzP;
        this.zzg = sparseBooleanArray.clone();
    }

    public static /* synthetic */ boolean zzl(zzjo zzjoVar) {
        return zzjoVar.zza;
    }

    public static /* synthetic */ boolean zzm(zzjo zzjoVar) {
        return zzjoVar.zzb;
    }

    public static /* synthetic */ boolean zzn(zzjo zzjoVar) {
        return zzjoVar.zzc;
    }

    public static /* synthetic */ boolean zzo(zzjo zzjoVar) {
        return zzjoVar.zzd;
    }

    public static /* synthetic */ boolean zzp(zzjo zzjoVar) {
        return zzjoVar.zze;
    }

    public static /* synthetic */ SparseArray zzq(zzjo zzjoVar) {
        return zzjoVar.zzf;
    }

    public static /* synthetic */ SparseBooleanArray zzr(zzjo zzjoVar) {
        return zzjoVar.zzg;
    }

    private final void zzt() {
        this.zza = true;
        this.zzb = true;
        this.zzc = true;
        this.zzd = true;
        this.zze = true;
    }

    @Override // com.google.android.gms.internal.ads.zzv
    public final /* bridge */ /* synthetic */ zzv zzj(int i, int i2, boolean z) {
        super.zzj(i, i2, true);
        return this;
    }

    public final zzjo zzs(int i, boolean z) {
        if (this.zzg.get(i) == z) {
            return this;
        }
        if (z) {
            this.zzg.put(i, true);
        } else {
            this.zzg.delete(i);
        }
        return this;
    }
}
