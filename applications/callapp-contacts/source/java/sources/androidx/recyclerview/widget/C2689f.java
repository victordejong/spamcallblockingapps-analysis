package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
final class C2689f {

    /* renamed from: b */
    int f10278b;

    /* renamed from: c */
    int f10279c;

    /* renamed from: d */
    int f10280d;

    /* renamed from: e */
    int f10281e;

    /* renamed from: h */
    boolean f10284h;

    /* renamed from: i */
    boolean f10285i;

    /* renamed from: a */
    boolean f10277a = true;

    /* renamed from: f */
    int f10282f = 0;

    /* renamed from: g */
    int f10283g = 0;

    /* renamed from: a */
    public final View m40090a(RecyclerView.C2648o c2648o) {
        View m40327b = c2648o.m40327b(this.f10279c);
        this.f10279c += this.f10280d;
        return m40327b;
    }

    /* renamed from: a */
    public final boolean m40089a(RecyclerView.C2654s c2654s) {
        int i = this.f10279c;
        return i >= 0 && i < c2654s.m40306a();
    }

    public final String toString() {
        return "LayoutState{mAvailable=" + this.f10278b + ", mCurrentPosition=" + this.f10279c + ", mItemDirection=" + this.f10280d + ", mLayoutDirection=" + this.f10281e + ", mStartLine=" + this.f10282f + ", mEndLine=" + this.f10283g + '}';
    }
}
