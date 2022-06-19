package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$b.class */
public class RecyclerView$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f1348a;

    public RecyclerView$b(RecyclerView recyclerView) {
        this.f1348a = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView$l recyclerView$l = this.f1348a.mItemAnimator;
        if (recyclerView$l != null) {
            recyclerView$l.m6185u();
        }
        this.f1348a.mPostedAnimatorRunner = false;
    }
}
