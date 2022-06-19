package androidx.recyclerview.widget;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$y.class */
public class RecyclerView$y {

    /* renamed from: b */
    public SparseArray<Object> f1384b;

    /* renamed from: m */
    public int f1395m;

    /* renamed from: n */
    public long f1396n;

    /* renamed from: o */
    public int f1397o;

    /* renamed from: p */
    public int f1398p;

    /* renamed from: q */
    public int f1399q;

    /* renamed from: a */
    public int f1383a = -1;

    /* renamed from: c */
    public int f1385c = 0;

    /* renamed from: d */
    public int f1386d = 0;

    /* renamed from: e */
    public int f1387e = 1;

    /* renamed from: f */
    public int f1388f = 0;

    /* renamed from: g */
    public boolean f1389g = false;

    /* renamed from: h */
    public boolean f1390h = false;

    /* renamed from: i */
    public boolean f1391i = false;

    /* renamed from: j */
    public boolean f1392j = false;

    /* renamed from: k */
    public boolean f1393k = false;

    /* renamed from: l */
    public boolean f1394l = false;

    /* renamed from: a */
    public void m6115a(int i) {
        if ((this.f1387e & i) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f1387e));
    }

    /* renamed from: b */
    public int m6114b() {
        return this.f1390h ? this.f1385c - this.f1386d : this.f1388f;
    }

    /* renamed from: c */
    public int m6113c() {
        return this.f1383a;
    }

    /* renamed from: d */
    public boolean m6112d() {
        return this.f1383a != -1;
    }

    /* renamed from: e */
    public boolean m6111e() {
        return this.f1390h;
    }

    /* renamed from: f */
    public void m6110f(RecyclerView$g recyclerView$g) {
        this.f1387e = 1;
        this.f1388f = recyclerView$g.getItemCount();
        this.f1390h = false;
        this.f1391i = false;
        this.f1392j = false;
    }

    /* renamed from: g */
    public boolean m6109g() {
        return this.f1394l;
    }

    public String toString() {
        return "State{mTargetPosition=" + this.f1383a + ", mData=" + this.f1384b + ", mItemCount=" + this.f1388f + ", mIsMeasuring=" + this.f1392j + ", mPreviousLayoutItemCount=" + this.f1385c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f1386d + ", mStructureChanged=" + this.f1389g + ", mInPreLayout=" + this.f1390h + ", mRunSimpleAnimations=" + this.f1393k + ", mRunPredictiveAnimations=" + this.f1394l + '}';
    }
}
