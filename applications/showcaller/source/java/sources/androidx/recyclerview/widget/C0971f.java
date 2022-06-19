package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
class C0971f {

    /* renamed from: b */
    int f4352b;

    /* renamed from: c */
    int f4353c;

    /* renamed from: d */
    int f4354d;

    /* renamed from: e */
    int f4355e;

    /* renamed from: h */
    boolean f4358h;

    /* renamed from: i */
    boolean f4359i;

    /* renamed from: a */
    boolean f4351a = true;

    /* renamed from: f */
    int f4356f = 0;

    /* renamed from: g */
    int f4357g = 0;

    /* renamed from: a */
    public boolean m31423a(RecyclerView.C0938y c0938y) {
        int i = this.f4353c;
        return i >= 0 && i < c0938y.m31703b();
    }

    /* renamed from: b */
    public View m31422b(RecyclerView.C0932u c0932u) {
        View m31737o = c0932u.m31737o(this.f4353c);
        this.f4353c += this.f4354d;
        return m31737o;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f4352b + ", mCurrentPosition=" + this.f4353c + ", mItemDirection=" + this.f4354d + ", mLayoutDirection=" + this.f4355e + ", mStartLine=" + this.f4356f + ", mEndLine=" + this.f4357g + '}';
    }
}
