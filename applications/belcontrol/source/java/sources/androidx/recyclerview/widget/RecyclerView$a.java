package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/RecyclerView$a.class */
public class RecyclerView$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f1340a;

    public RecyclerView$a(RecyclerView recyclerView) {
        this.f1340a = recyclerView;
    }

    @Override // java.lang.Runnable
    public void run() {
        RecyclerView recyclerView = this.f1340a;
        if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
            return;
        }
        RecyclerView recyclerView2 = this.f1340a;
        if (!recyclerView2.mIsAttached) {
            recyclerView2.requestLayout();
        } else if (recyclerView2.mLayoutSuppressed) {
            recyclerView2.mLayoutWasDefered = true;
        } else {
            recyclerView2.consumePendingUpdateOperations();
        }
    }
}
