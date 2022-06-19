package androidx.appcompat.app;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/AppCompatDelegateImpl$b.class */
class AppCompatDelegateImpl$b implements Runnable {

    /* renamed from: b */
    final /* synthetic */ AppCompatDelegateImpl f263b;

    AppCompatDelegateImpl$b(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.f263b = appCompatDelegateImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.f263b;
        if ((appCompatDelegateImpl.V & 1) != 0) {
            appCompatDelegateImpl.W(0);
        }
        AppCompatDelegateImpl appCompatDelegateImpl2 = this.f263b;
        if ((appCompatDelegateImpl2.V & 4096) != 0) {
            appCompatDelegateImpl2.W(108);
        }
        AppCompatDelegateImpl appCompatDelegateImpl3 = this.f263b;
        appCompatDelegateImpl3.U = false;
        appCompatDelegateImpl3.V = 0;
    }
}
