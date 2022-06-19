package androidx.fragment.app;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/Fragment$b.class */
public class Fragment$b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Fragment f788a;

    public Fragment$b(Fragment fragment) {
        this.f788a = fragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f788a.callStartTransitionListener(false);
    }
}
