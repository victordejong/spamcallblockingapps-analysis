package p000;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView$u;
import androidx.recyclerview.widget.RecyclerView$y;
/* renamed from: f00 */
/* loaded from: classes-dex2jar.jar:f00.class */
public class f00 {

    /* renamed from: b */
    public int f6487b;

    /* renamed from: c */
    public int f6488c;

    /* renamed from: d */
    public int f6489d;

    /* renamed from: e */
    public int f6490e;

    /* renamed from: h */
    public boolean f6493h;

    /* renamed from: i */
    public boolean f6494i;

    /* renamed from: a */
    public boolean f6486a = true;

    /* renamed from: f */
    public int f6491f = 0;

    /* renamed from: g */
    public int f6492g = 0;

    /* renamed from: a */
    public boolean m2010a(RecyclerView$y recyclerView$y) {
        int i = this.f6488c;
        return i >= 0 && i < recyclerView$y.m6114b();
    }

    /* renamed from: b */
    public View m2009b(RecyclerView$u recyclerView$u) {
        View m6133o = recyclerView$u.m6133o(this.f6488c);
        this.f6488c += this.f6489d;
        return m6133o;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f6487b + ", mCurrentPosition=" + this.f6488c + ", mItemDirection=" + this.f6489d + ", mLayoutDirection=" + this.f6490e + ", mStartLine=" + this.f6491f + ", mEndLine=" + this.f6492g + '}';
    }
}
