package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/StaggeredGridLayoutManager$a.class */
public class StaggeredGridLayoutManager$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ StaggeredGridLayoutManager f1416a;

    public StaggeredGridLayoutManager$a(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f1416a = staggeredGridLayoutManager;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1416a.g();
    }
}
