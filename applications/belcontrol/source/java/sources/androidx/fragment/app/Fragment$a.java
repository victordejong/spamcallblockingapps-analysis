package androidx.fragment.app;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$a.class */
public class Fragment$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Fragment f866a;

    public Fragment$a(Fragment fragment) {
        this.f866a = fragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f866a.startPostponedEnterTransition();
    }
}
