package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzjn.class */
public final class zzjn extends zzw {
    public static final zzjn zzA;
    @Deprecated
    public static final zzjn zzB;
    public static final zzadw<zzjn> zzN = zzjm.zza;
    public final int zzC;
    public final boolean zzD;
    public final boolean zzE;
    public final boolean zzF;
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    private final SparseArray<Map<zzs, zzjq>> zzO;
    private final SparseBooleanArray zzP;

    static {
        zzjn zzjnVar = new zzjn(new zzjo());
        zzA = zzjnVar;
        zzB = zzjnVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzjn(zzjo zzjoVar) {
        super(zzjoVar);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        SparseArray<Map<zzs, zzjq>> sparseArray;
        SparseBooleanArray sparseBooleanArray;
        z = zzjoVar.zza;
        this.zzD = z;
        this.zzE = false;
        z2 = zzjoVar.zzb;
        this.zzF = z2;
        z3 = zzjoVar.zzc;
        this.zzG = z3;
        this.zzH = false;
        this.zzI = false;
        this.zzJ = false;
        this.zzC = 0;
        z4 = zzjoVar.zzd;
        this.zzK = z4;
        this.zzL = false;
        z5 = zzjoVar.zze;
        this.zzM = z5;
        sparseArray = zzjoVar.zzf;
        this.zzO = sparseArray;
        sparseBooleanArray = zzjoVar.zzg;
        this.zzP = sparseBooleanArray;
    }

    public static zzjn zzc(Context context) {
        return new zzjn(new zzjo(context));
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0109  */
    @Override // com.google.android.gms.internal.ads.zzw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjn.equals(java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzw
    public final int hashCode() {
        return ((((((((((super.hashCode() + 31) * 31) + (this.zzD ? 1 : 0)) * 961) + (this.zzF ? 1 : 0)) * 31) + (this.zzG ? 1 : 0)) * 28629151) + (this.zzK ? 1 : 0)) * 961) + (this.zzM ? 1 : 0);
    }

    public final boolean zzd(int i) {
        return this.zzP.get(i);
    }

    public final boolean zze(int i, zzs zzsVar) {
        Map<zzs, zzjq> map = this.zzO.get(i);
        return map != null && map.containsKey(zzsVar);
    }

    public final zzjq zzf(int i, zzs zzsVar) {
        Map<zzs, zzjq> map = this.zzO.get(i);
        if (map != null) {
            return map.get(zzsVar);
        }
        return null;
    }

    public final zzjo zzg() {
        return new zzjo(this, null);
    }
}
