package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
class RecyclerView$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ RecyclerView f2193b;

    RecyclerView$a(RecyclerView recyclerView) {
        this.f2193b = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView$k recyclerView$k = this.f2193b.N;
        if (recyclerView$k != null) {
            recyclerView$k.m12750u();
        }
        this.f2193b.o0 = false;
    }
}
