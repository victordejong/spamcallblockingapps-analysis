package androidx.recyclerview.widget;

import android.util.SparseArray;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t.class */
public class RecyclerView$t {

    /* renamed from: a */
    public SparseArray<C0184a> f1361a = new SparseArray<>();

    /* renamed from: b */
    public int f1362b = 0;

    /* renamed from: androidx.recyclerview.widget.RecyclerView$t$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$t$a.class */
    public static class C0184a {

        /* renamed from: a */
        public final ArrayList<RecyclerView$b0> f1363a = new ArrayList<>();

        /* renamed from: b */
        public int f1364b = 5;

        /* renamed from: c */
        public long f1365c = 0;

        /* renamed from: d */
        public long f1366d = 0;
    }

    /* renamed from: a */
    public void m6172a() {
        this.f1362b++;
    }

    /* renamed from: b */
    public void m6171b() {
        for (int i = 0; i < this.f1361a.size(); i++) {
            this.f1361a.valueAt(i).f1363a.clear();
        }
    }

    /* renamed from: c */
    public void m6170c() {
        this.f1362b--;
    }

    /* renamed from: d */
    public void m6169d(int i, long j) {
        C0184a m6166g = m6166g(i);
        m6166g.f1366d = m6163j(m6166g.f1366d, j);
    }

    /* renamed from: e */
    public void m6168e(int i, long j) {
        C0184a m6166g = m6166g(i);
        m6166g.f1365c = m6163j(m6166g.f1365c, j);
    }

    /* renamed from: f */
    public RecyclerView$b0 m6167f(int i) {
        C0184a c0184a = this.f1361a.get(i);
        if (c0184a == null || c0184a.f1363a.isEmpty()) {
            return null;
        }
        ArrayList<RecyclerView$b0> arrayList = c0184a.f1363a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (!arrayList.get(size).isAttachedToTransitionOverlay()) {
                return arrayList.remove(size);
            }
        }
        return null;
    }

    /* renamed from: g */
    public final C0184a m6166g(int i) {
        C0184a c0184a = this.f1361a.get(i);
        C0184a c0184a2 = c0184a;
        if (c0184a == null) {
            c0184a2 = new C0184a();
            this.f1361a.put(i, c0184a2);
        }
        return c0184a2;
    }

    /* renamed from: h */
    public void m6165h(RecyclerView$g recyclerView$g, RecyclerView$g recyclerView$g2, boolean z) {
        if (recyclerView$g != null) {
            m6170c();
        }
        if (!z && this.f1362b == 0) {
            m6171b();
        }
        if (recyclerView$g2 != null) {
            m6172a();
        }
    }

    /* renamed from: i */
    public void m6164i(RecyclerView$b0 recyclerView$b0) {
        int itemViewType = recyclerView$b0.getItemViewType();
        ArrayList<RecyclerView$b0> arrayList = m6166g(itemViewType).f1363a;
        if (this.f1361a.get(itemViewType).f1364b <= arrayList.size()) {
            return;
        }
        recyclerView$b0.resetInternal();
        arrayList.add(recyclerView$b0);
    }

    /* renamed from: j */
    public long m6163j(long j, long j2) {
        return j == 0 ? j2 : ((j / 4) * 3) + (j2 / 4);
    }

    /* renamed from: k */
    public boolean m6162k(int i, long j, long j2) {
        long j3 = m6166g(i).f1366d;
        return j3 == 0 || j + j3 < j2;
    }

    /* renamed from: l */
    public boolean m6161l(int i, long j, long j2) {
        long j3 = m6166g(i).f1365c;
        return j3 == 0 || j + j3 < j2;
    }
}
