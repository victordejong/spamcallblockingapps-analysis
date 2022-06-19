package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
class C1010f {

    /* renamed from: b */
    int f3188b;

    /* renamed from: c */
    int f3189c;

    /* renamed from: d */
    int f3190d;

    /* renamed from: e */
    int f3191e;

    /* renamed from: h */
    boolean f3194h;

    /* renamed from: i */
    boolean f3195i;

    /* renamed from: a */
    boolean f3187a = true;

    /* renamed from: f */
    int f3192f = 0;

    /* renamed from: g */
    int f3193g = 0;

    /* renamed from: a */
    public View m4600a(RecyclerView.C0968p c0968p) {
        View m4886c = c0968p.m4886c(this.f3189c);
        this.f3189c += this.f3190d;
        return m4886c;
    }

    /* renamed from: a */
    public boolean m4599a(RecyclerView.C0974t c0974t) {
        int i = this.f3189c;
        return i >= 0 && i < c0974t.m4843e();
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f3188b + ", mCurrentPosition=" + this.f3189c + ", mItemDirection=" + this.f3190d + ", mLayoutDirection=" + this.f3191e + ", mStartLine=" + this.f3192f + ", mEndLine=" + this.f3193g + '}';
    }
}
