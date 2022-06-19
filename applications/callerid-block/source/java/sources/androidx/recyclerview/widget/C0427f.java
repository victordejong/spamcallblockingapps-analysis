package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
class C0427f {

    /* renamed from: b */
    int f2393b;

    /* renamed from: c */
    int f2394c;

    /* renamed from: d */
    int f2395d;

    /* renamed from: e */
    int f2396e;

    /* renamed from: h */
    boolean f2399h;

    /* renamed from: i */
    boolean f2400i;

    /* renamed from: a */
    boolean f2392a = true;

    /* renamed from: f */
    int f2397f = 0;

    /* renamed from: g */
    int f2398g = 0;

    C0427f() {
    }

    /* renamed from: a */
    boolean m12390a(RecyclerView$x recyclerView$x) {
        int i = this.f2394c;
        return i >= 0 && i < recyclerView$x.m12511b();
    }

    /* renamed from: b */
    View m12389b(RecyclerView$t recyclerView$t) {
        View m12549o = recyclerView$t.m12549o(this.f2394c);
        this.f2394c += this.f2395d;
        return m12549o;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f2393b + ", mCurrentPosition=" + this.f2394c + ", mItemDirection=" + this.f2395d + ", mLayoutDirection=" + this.f2396e + ", mStartLine=" + this.f2397f + ", mEndLine=" + this.f2398g + '}';
    }
}
