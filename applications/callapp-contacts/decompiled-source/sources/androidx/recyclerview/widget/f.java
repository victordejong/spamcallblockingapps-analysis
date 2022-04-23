package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/f.class */
final class f {

    /* renamed from: b  reason: collision with root package name */
    int f5471b;

    /* renamed from: c  reason: collision with root package name */
    int f5472c;

    /* renamed from: d  reason: collision with root package name */
    int f5473d;
    int e;
    boolean h;
    boolean i;

    /* renamed from: a  reason: collision with root package name */
    boolean f5470a = true;
    int f = 0;
    int g = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final View a(RecyclerView.o oVar) {
        View b2 = oVar.b(this.f5472c);
        this.f5472c += this.f5473d;
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(RecyclerView.s sVar) {
        int i = this.f5472c;
        return i >= 0 && i < sVar.a();
    }

    public final String toString() {
        return "LayoutState{mAvailable=" + this.f5471b + ", mCurrentPosition=" + this.f5472c + ", mItemDirection=" + this.f5473d + ", mLayoutDirection=" + this.e + ", mStartLine=" + this.f + ", mEndLine=" + this.g + '}';
    }
}
