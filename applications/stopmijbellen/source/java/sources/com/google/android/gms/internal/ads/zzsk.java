package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsk.class */
public final class zzsk extends zzck {
    private boolean zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private final SparseArray<Map<zzch, zzsm>> zzf;
    private final SparseBooleanArray zzg;

    @Deprecated
    public zzsk() {
        this.zzf = new SparseArray<>();
        this.zzg = new SparseBooleanArray();
        zzu();
    }

    public zzsk(Context context) {
        super.zzd(context);
        Point zzx = zzfn.zzx(context);
        zze(zzx.x, zzx.y, true);
        this.zzf = new SparseArray<>();
        this.zzg = new SparseBooleanArray();
        zzu();
    }

    public /* synthetic */ zzsk(zzsi zzsiVar, zzsj zzsjVar) {
        super(zzsiVar);
        SparseArray sparseArray;
        SparseBooleanArray sparseBooleanArray;
        this.zza = zzsiVar.zzF;
        this.zzb = zzsiVar.zzH;
        this.zzc = zzsiVar.zzI;
        this.zzd = zzsiVar.zzM;
        this.zze = zzsiVar.zzO;
        sparseArray = zzsiVar.zzP;
        SparseArray<Map<zzch, zzsm>> sparseArray2 = new SparseArray<>();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
        }
        this.zzf = sparseArray2;
        sparseBooleanArray = zzsiVar.zzQ;
        this.zzg = sparseBooleanArray.clone();
    }

    public static /* bridge */ /* synthetic */ SparseArray zzm(zzsk zzskVar) {
        return zzskVar.zzf;
    }

    public static /* bridge */ /* synthetic */ SparseBooleanArray zzn(zzsk zzskVar) {
        return zzskVar.zzg;
    }

    public static /* bridge */ /* synthetic */ boolean zzp(zzsk zzskVar) {
        return zzskVar.zze;
    }

    public static /* bridge */ /* synthetic */ boolean zzq(zzsk zzskVar) {
        return zzskVar.zzb;
    }

    public static /* bridge */ /* synthetic */ boolean zzr(zzsk zzskVar) {
        return zzskVar.zzc;
    }

    public static /* bridge */ /* synthetic */ boolean zzs(zzsk zzskVar) {
        return zzskVar.zzd;
    }

    public static /* bridge */ /* synthetic */ boolean zzt(zzsk zzskVar) {
        return zzskVar.zza;
    }

    private final void zzu() {
        this.zza = true;
        this.zzb = true;
        this.zzc = true;
        this.zzd = true;
        this.zze = true;
    }

    @Override // com.google.android.gms.internal.ads.zzck
    public final /* synthetic */ zzck zze(int i, int i2, boolean z) {
        super.zze(i, i2, true);
        return this;
    }

    public final zzsk zzo(int i, boolean z) {
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
