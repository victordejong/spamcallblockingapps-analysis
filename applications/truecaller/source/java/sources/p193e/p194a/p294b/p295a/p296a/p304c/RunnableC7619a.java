package p193e.p194a.p294b.p295a.p296a.p304c;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import p1727n3.p1744b0.p1745a.AbstractC25626y;
/* renamed from: e.a.b.a.a.c.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/c/a.class */
public final class RunnableC7619a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f23964a;

    /* renamed from: b */
    public final /* synthetic */ int f23965b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC25626y f23966c;

    public RunnableC7619a(RecyclerView recyclerView, int i, AbstractC25626y abstractC25626y) {
        this.f23964a = recyclerView;
        this.f23965b = i;
        this.f23966c = abstractC25626y;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View findViewByPosition;
        int[] m3117b;
        RecyclerView.AbstractC0329o layoutManager = this.f23964a.getLayoutManager();
        if (layoutManager == null || (findViewByPosition = layoutManager.findViewByPosition(this.f23965b)) == null || (m3117b = this.f23966c.m3117b(layoutManager, findViewByPosition)) == null) {
            return;
        }
        if (m3117b[0] == 0 && m3117b[1] == 0) {
            return;
        }
        this.f23964a.smoothScrollBy(m3117b[0], m3117b[1]);
    }
}
