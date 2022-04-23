package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s.class */
public class RecyclerView$s {

    /* renamed from: a */
    SparseArray<C0416a> f2245a = new SparseArray<>();

    /* renamed from: b */
    private int f2246b = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.RecyclerView$s$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$s$a.class */
    public static class C0416a {

        /* renamed from: a */
        final ArrayList<RecyclerView$a0> f2247a = new ArrayList<>();

        /* renamed from: b */
        int f2248b = 5;

        /* renamed from: c */
        long f2249c = 0;

        /* renamed from: d */
        long f2250d = 0;

        C0416a() {
        }
    }

    /* renamed from: g */
    private C0416a m12582g(int i) {
        C0416a aVar = this.f2245a.get(i);
        C0416a aVar2 = aVar;
        if (aVar == null) {
            aVar2 = new C0416a();
            this.f2245a.put(i, aVar2);
        }
        return aVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m12588a() {
        this.f2246b++;
    }

    /* renamed from: b */
    public void m12587b() {
        for (int i = 0; i < this.f2245a.size(); i++) {
            this.f2245a.valueAt(i).f2247a.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m12586c() {
        this.f2246b--;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m12585d(int i, long j) {
        C0416a g = m12582g(i);
        g.f2250d = m12579j(g.f2250d, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m12584e(int i, long j) {
        C0416a g = m12582g(i);
        g.f2249c = m12579j(g.f2249c, j);
    }

    /* renamed from: f */
    public RecyclerView$a0 m12583f(int i) {
        C0416a aVar = this.f2245a.get(i);
        if (aVar == null || aVar.f2247a.isEmpty()) {
            return null;
        }
        ArrayList<RecyclerView$a0> arrayList = aVar.f2247a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!arrayList.get(size).m12784r()) {
                return arrayList.remove(size);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m12581h(RecyclerView$Adapter recyclerView$Adapter, RecyclerView$Adapter recyclerView$Adapter2, boolean z) {
        if (recyclerView$Adapter != null) {
            m12586c();
        }
        if (!z && this.f2246b == 0) {
            m12587b();
        }
        if (recyclerView$Adapter2 != null) {
            m12588a();
        }
    }

    /* renamed from: i */
    public void m12580i(RecyclerView$a0 recyclerView$a0) {
        int l = recyclerView$a0.m12790l();
        ArrayList<RecyclerView$a0> arrayList = m12582g(l).f2247a;
        if (this.f2245a.get(l).f2248b > arrayList.size()) {
            recyclerView$a0.m12810D();
            arrayList.add(recyclerView$a0);
        }
    }

    /* renamed from: j */
    long m12579j(long j, long j2) {
        return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public boolean m12578k(int i, long j, long j2) {
        long j3 = m12582g(i).f2250d;
        return j3 == 0 || j + j3 < j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public boolean m12577l(int i, long j, long j2) {
        long j3 = m12582g(i).f2249c;
        return j3 == 0 || j + j3 < j2;
    }
}
