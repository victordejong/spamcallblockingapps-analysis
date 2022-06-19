package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/um3.class */
public final class um3 extends gy3 {

    /* renamed from: j */
    private boolean f30671j;

    /* renamed from: k */
    private boolean f30672k;

    /* renamed from: l */
    private boolean f30673l;

    /* renamed from: m */
    private boolean f30674m;

    /* renamed from: n */
    private boolean f30675n;

    /* renamed from: o */
    private final SparseArray<Map<dv3, wm3>> f30676o;

    /* renamed from: p */
    private final SparseBooleanArray f30677p;

    @Deprecated
    public um3() {
        this.f30676o = new SparseArray<>();
        this.f30677p = new SparseBooleanArray();
        m10291t();
    }

    public um3(Context context) {
        super.m14775k(context);
        Point m9726B = C7101wa.m9726B(context);
        mo10300j(m9726B.x, m9726B.y, true);
        this.f30676o = new SparseArray<>();
        this.f30677p = new SparseBooleanArray();
        m10291t();
    }

    public /* synthetic */ um3(tm3 tm3Var, qm3 qm3Var) {
        super(tm3Var);
        SparseArray sparseArray;
        SparseBooleanArray sparseBooleanArray;
        this.f30671j = tm3Var.f30069E;
        this.f30672k = tm3Var.f30071G;
        this.f30673l = tm3Var.f30072H;
        this.f30674m = tm3Var.f30076L;
        this.f30675n = tm3Var.f30078N;
        sparseArray = tm3Var.f30079O;
        SparseArray<Map<dv3, wm3>> sparseArray2 = new SparseArray<>();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap((Map) sparseArray.valueAt(i)));
        }
        this.f30676o = sparseArray2;
        sparseBooleanArray = tm3Var.f30080P;
        this.f30677p = sparseBooleanArray.clone();
    }

    /* renamed from: l */
    public static /* synthetic */ boolean m10299l(um3 um3Var) {
        return um3Var.f30671j;
    }

    /* renamed from: m */
    public static /* synthetic */ boolean m10298m(um3 um3Var) {
        return um3Var.f30672k;
    }

    /* renamed from: n */
    public static /* synthetic */ boolean m10297n(um3 um3Var) {
        return um3Var.f30673l;
    }

    /* renamed from: o */
    public static /* synthetic */ boolean m10296o(um3 um3Var) {
        return um3Var.f30674m;
    }

    /* renamed from: p */
    public static /* synthetic */ boolean m10295p(um3 um3Var) {
        return um3Var.f30675n;
    }

    /* renamed from: q */
    public static /* synthetic */ SparseArray m10294q(um3 um3Var) {
        return um3Var.f30676o;
    }

    /* renamed from: r */
    public static /* synthetic */ SparseBooleanArray m10293r(um3 um3Var) {
        return um3Var.f30677p;
    }

    /* renamed from: t */
    private final void m10291t() {
        this.f30671j = true;
        this.f30672k = true;
        this.f30673l = true;
        this.f30674m = true;
        this.f30675n = true;
    }

    @Override // com.google.android.gms.internal.ads.gy3
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ gy3 mo10300j(int i, int i2, boolean z) {
        super.mo10300j(i, i2, true);
        return this;
    }

    /* renamed from: s */
    public final um3 m10292s(int i, boolean z) {
        if (this.f30677p.get(i) == z) {
            return this;
        }
        if (z) {
            this.f30677p.put(i, true);
        } else {
            this.f30677p.delete(i);
        }
        return this;
    }
}
