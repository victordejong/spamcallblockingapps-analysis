package androidx.recyclerview.widget;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$x.class */
public class RecyclerView$x {

    /* renamed from: b */
    private SparseArray<Object> f2276b;

    /* renamed from: m */
    int f2287m;

    /* renamed from: n */
    long f2288n;

    /* renamed from: o */
    int f2289o;

    /* renamed from: p */
    int f2290p;

    /* renamed from: q */
    int f2291q;

    /* renamed from: a */
    int f2275a = -1;

    /* renamed from: c */
    int f2277c = 0;

    /* renamed from: d */
    int f2278d = 0;

    /* renamed from: e */
    int f2279e = 1;

    /* renamed from: f */
    int f2280f = 0;

    /* renamed from: g */
    boolean f2281g = false;

    /* renamed from: h */
    boolean f2282h = false;

    /* renamed from: i */
    boolean f2283i = false;

    /* renamed from: j */
    boolean f2284j = false;

    /* renamed from: k */
    boolean f2285k = false;

    /* renamed from: l */
    boolean f2286l = false;

    /* renamed from: a */
    void m12512a(int i) {
        if ((this.f2279e & i) != 0) {
            return;
        }
        throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i) + " but it is " + Integer.toBinaryString(this.f2279e));
    }

    /* renamed from: b */
    public int m12511b() {
        return this.f2282h ? this.f2277c - this.f2278d : this.f2280f;
    }

    /* renamed from: c */
    public int m12510c() {
        return this.f2275a;
    }

    /* renamed from: d */
    public boolean m12509d() {
        return this.f2275a != -1;
    }

    /* renamed from: e */
    public boolean m12508e() {
        return this.f2282h;
    }

    /* renamed from: f */
    public void m12507f(RecyclerView$Adapter recyclerView$Adapter) {
        this.f2279e = 1;
        this.f2280f = recyclerView$Adapter.m12838f();
        this.f2282h = false;
        this.f2283i = false;
        this.f2284j = false;
    }

    /* renamed from: g */
    public boolean m12506g() {
        return this.f2286l;
    }

    public String toString() {
        return "State{mTargetPosition=" + this.f2275a + ", mData=" + this.f2276b + ", mItemCount=" + this.f2280f + ", mIsMeasuring=" + this.f2284j + ", mPreviousLayoutItemCount=" + this.f2277c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f2278d + ", mStructureChanged=" + this.f2281g + ", mInPreLayout=" + this.f2282h + ", mRunSimpleAnimations=" + this.f2285k + ", mRunPredictiveAnimations=" + this.f2286l + '}';
    }
}
