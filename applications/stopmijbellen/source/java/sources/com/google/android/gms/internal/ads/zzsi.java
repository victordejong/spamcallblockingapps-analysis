package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsi.class */
public final class zzsi extends zzcn {
    public static final zzsi zzB;
    @Deprecated
    public static final zzsi zzC;
    public static final zzj<zzsi> zzD = zzsg.zza;
    public final int zzE;
    public final boolean zzF;
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    private final SparseArray<Map<zzch, zzsm>> zzP;
    private final SparseBooleanArray zzQ;

    static {
        zzsi zzsiVar = new zzsi(new zzsk());
        zzB = zzsiVar;
        zzC = zzsiVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzsi(zzsk zzskVar) {
        super(zzskVar);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        SparseArray<Map<zzch, zzsm>> sparseArray;
        SparseBooleanArray sparseBooleanArray;
        z = zzskVar.zza;
        this.zzF = z;
        this.zzG = false;
        z2 = zzskVar.zzb;
        this.zzH = z2;
        z3 = zzskVar.zzc;
        this.zzI = z3;
        this.zzJ = false;
        this.zzK = false;
        this.zzL = false;
        this.zzE = 0;
        z4 = zzskVar.zzd;
        this.zzM = z4;
        this.zzN = false;
        z5 = zzskVar.zze;
        this.zzO = z5;
        sparseArray = zzskVar.zzf;
        this.zzP = sparseArray;
        sparseBooleanArray = zzskVar.zzg;
        this.zzQ = sparseBooleanArray;
    }

    public static zzsi zzc(Context context) {
        return new zzsi(new zzsk(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0109  */
    @Override // com.google.android.gms.internal.ads.zzcn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsi.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final int hashCode() {
        return ((((((((((super.hashCode() + 31) * 31) + (this.zzF ? 1 : 0)) * 961) + (this.zzH ? 1 : 0)) * 31) + (this.zzI ? 1 : 0)) * 28629151) + (this.zzM ? 1 : 0)) * 961) + (this.zzO ? 1 : 0);
    }

    public final zzsk zzd() {
        return new zzsk(this, null);
    }

    public final zzsm zze(int i, zzch zzchVar) {
        Map<zzch, zzsm> map = this.zzP.get(i);
        if (map != null) {
            return map.get(zzchVar);
        }
        return null;
    }

    public final boolean zzf(int i) {
        return this.zzQ.get(i);
    }

    public final boolean zzg(int i, zzch zzchVar) {
        Map<zzch, zzsm> map = this.zzP.get(i);
        return map != null && map.containsKey(zzchVar);
    }
}
