package androidx.fragment.app;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
public class Fragment$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Fragment f867a;

    public Fragment$b(Fragment fragment) {
        this.f867a = fragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f867a.callStartTransitionListener();
    }
}
