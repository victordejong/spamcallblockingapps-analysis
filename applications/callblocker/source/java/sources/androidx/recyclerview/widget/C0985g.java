package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g.class */
class C0985g {

    /* renamed from: b */
    int f3381b;

    /* renamed from: c */
    int f3382c;

    /* renamed from: d */
    int f3383d;

    /* renamed from: e */
    int f3384e;

    /* renamed from: h */
    boolean f3387h;

    /* renamed from: i */
    boolean f3388i;

    /* renamed from: a */
    boolean f3380a = true;

    /* renamed from: f */
    int f3385f = 0;

    /* renamed from: g */
    int f3386g = 0;

    /* renamed from: a */
    public View m18496a(RecyclerView.C0937p c0937p) {
        View m18868c = c0937p.m18868c(this.f3382c);
        this.f3382c += this.f3383d;
        return m18868c;
    }

    /* renamed from: a */
    public boolean m18495a(RecyclerView.C0945u c0945u) {
        return this.f3382c >= 0 && this.f3382c < c0945u.m18818e();
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f3381b + ", mCurrentPosition=" + this.f3382c + ", mItemDirection=" + this.f3383d + ", mLayoutDirection=" + this.f3384e + ", mStartLine=" + this.f3385f + ", mEndLine=" + this.f3386g + '}';
    }
}
