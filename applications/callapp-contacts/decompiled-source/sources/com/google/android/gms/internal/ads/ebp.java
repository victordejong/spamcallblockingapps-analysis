package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ebp.class */
public abstract class ebp extends ebv {

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<Map<ebi, ebr>> f27589b = new SparseArray<>();

    /* renamed from: c  reason: collision with root package name */
    private final SparseBooleanArray f27590c = new SparseBooleanArray();

    /* renamed from: d  reason: collision with root package name */
    private int f27591d = 0;
    private ebs e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [int[][], int[][][]] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.google.android.gms.internal.ads.ebv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.ebx a(com.google.android.gms.internal.ads.dwc[] r9, com.google.android.gms.internal.ads.ebi r10) throws com.google.android.gms.internal.ads.zzhe {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ebp.a(com.google.android.gms.internal.ads.dwc[], com.google.android.gms.internal.ads.ebi):com.google.android.gms.internal.ads.ebx");
    }

    public final void a(int i, boolean z) {
        if (this.f27590c.get(i) != z) {
            this.f27590c.put(i, z);
            if (this.f27598a != null) {
                this.f27598a.b();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ebv
    public final void a(Object obj) {
        this.e = (ebs) obj;
    }

    protected abstract ebu[] a(dwc[] dwcVarArr, ebi[] ebiVarArr, int[][][] iArr) throws zzhe;
}
