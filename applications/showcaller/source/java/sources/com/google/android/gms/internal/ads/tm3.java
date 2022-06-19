package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tm3.class */
public final class tm3 extends az3 {

    /* renamed from: A */
    public static final tm3 f30065A;
    @Deprecated

    /* renamed from: B */
    public static final tm3 f30066B;

    /* renamed from: C */
    public static final AbstractC7093w2<tm3> f30067C = sm3.f29582a;

    /* renamed from: D */
    public final int f30068D;

    /* renamed from: E */
    public final boolean f30069E;

    /* renamed from: F */
    public final boolean f30070F;

    /* renamed from: G */
    public final boolean f30071G;

    /* renamed from: H */
    public final boolean f30072H;

    /* renamed from: I */
    public final boolean f30073I;

    /* renamed from: J */
    public final boolean f30074J;

    /* renamed from: K */
    public final boolean f30075K;

    /* renamed from: L */
    public final boolean f30076L;

    /* renamed from: M */
    public final boolean f30077M;

    /* renamed from: N */
    public final boolean f30078N;

    /* renamed from: O */
    private final SparseArray<Map<dv3, wm3>> f30079O;

    /* renamed from: P */
    private final SparseBooleanArray f30080P;

    static {
        tm3 tm3Var = new tm3(new um3());
        f30065A = tm3Var;
        f30066B = tm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public tm3(um3 um3Var) {
        super(um3Var);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        SparseArray<Map<dv3, wm3>> sparseArray;
        SparseBooleanArray sparseBooleanArray;
        z = um3Var.f30671j;
        this.f30069E = z;
        this.f30070F = false;
        z2 = um3Var.f30672k;
        this.f30071G = z2;
        z3 = um3Var.f30673l;
        this.f30072H = z3;
        this.f30073I = false;
        this.f30074J = false;
        this.f30075K = false;
        this.f30068D = 0;
        z4 = um3Var.f30674m;
        this.f30076L = z4;
        this.f30077M = false;
        z5 = um3Var.f30675n;
        this.f30078N = z5;
        sparseArray = um3Var.f30676o;
        this.f30079O = sparseArray;
        sparseBooleanArray = um3Var.f30677p;
        this.f30080P = sparseBooleanArray;
    }

    /* renamed from: c */
    public static tm3 m10610c(Context context) {
        return new tm3(new um3(context));
    }

    /* renamed from: d */
    public final boolean m10609d(int i) {
        return this.f30080P.get(i);
    }

    /* renamed from: e */
    public final boolean m10608e(int i, dv3 dv3Var) {
        Map<dv3, wm3> map = this.f30079O.get(i);
        return map != null && map.containsKey(dv3Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0109  */
    @Override // com.google.android.gms.internal.ads.az3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r5) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.tm3.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final wm3 m10607f(int i, dv3 dv3Var) {
        Map<dv3, wm3> map = this.f30079O.get(i);
        if (map != null) {
            return map.get(dv3Var);
        }
        return null;
    }

    /* renamed from: g */
    public final um3 m10606g() {
        return new um3(this, null);
    }

    @Override // com.google.android.gms.internal.ads.az3
    public final int hashCode() {
        return ((((((((((super.hashCode() + 31) * 31) + (this.f30069E ? 1 : 0)) * 961) + (this.f30071G ? 1 : 0)) * 31) + (this.f30072H ? 1 : 0)) * 28629151) + (this.f30076L ? 1 : 0)) * 961) + (this.f30078N ? 1 : 0);
    }
}
