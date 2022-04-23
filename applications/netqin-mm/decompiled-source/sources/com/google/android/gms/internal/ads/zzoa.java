package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzoa.class */
public abstract class zzoa extends zzog {

    /* renamed from: b */
    public final SparseArray<Map<zznp, zzoc>> f28707b = new SparseArray<>();

    /* renamed from: c */
    public final SparseBooleanArray f28708c = new SparseBooleanArray();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.zzog
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzoi mo11734a(com.google.android.gms.internal.ads.zzhw[] r9, com.google.android.gms.internal.ads.zznp r10) throws com.google.android.gms.internal.ads.zzhd {
        /*
            Method dump skipped, instructions count: 673
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoa.mo11734a(com.google.android.gms.internal.ads.zzhw[], com.google.android.gms.internal.ads.zznp):com.google.android.gms.internal.ads.zzoi");
    }

    /* renamed from: a */
    public final void m11745a(int i, boolean z) {
        if (this.f28708c.get(i) != z) {
            this.f28708c.put(i, z);
            m11737a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzog
    /* renamed from: a */
    public final void mo11735a(Object obj) {
        zznz zznzVar = (zznz) obj;
    }

    /* renamed from: a */
    public abstract zzob[] mo11744a(zzhw[] zzhwVarArr, zznp[] zznpVarArr, int[][][] iArr) throws zzhd;
}
