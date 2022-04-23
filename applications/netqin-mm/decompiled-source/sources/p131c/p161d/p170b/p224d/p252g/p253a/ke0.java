package p131c.p161d.p170b.p224d.p252g.p253a;

import android.util.SparseArray;
import com.google.android.gms.internal.ads.zznh;
/* renamed from: c.d.b.d.g.a.ke0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ke0.class */
public final class ke0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ le0 f13877a;

    /* renamed from: b */
    public final /* synthetic */ ge0 f13878b;

    public ke0(ge0 ge0Var, le0 le0Var) {
        this.f13878b = ge0Var;
        this.f13877a = le0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        this.f13877a.m26692a();
        sparseArray = this.f13878b.f13190p;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            sparseArray2 = this.f13878b.f13190p;
            ((zznh) sparseArray2.valueAt(i)).m11787a();
        }
    }
}
