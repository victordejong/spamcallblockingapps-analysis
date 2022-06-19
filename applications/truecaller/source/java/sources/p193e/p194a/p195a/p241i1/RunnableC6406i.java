package p193e.p194a.p195a.p241i1;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: e.a.a.i1.i */
/* loaded from: classes11-dex2jar.jar:e/a/a/i1/i.class */
public final class RunnableC6406i implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f21325a;

    /* renamed from: b */
    public final /* synthetic */ int f21326b;

    public RunnableC6406i(RecyclerView recyclerView, int i) {
        this.f21325a = recyclerView;
        this.f21326b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f21325a.smoothScrollToPosition(this.f21326b);
    }
}
