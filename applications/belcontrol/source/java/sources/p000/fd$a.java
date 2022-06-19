package p000;
/* renamed from: fd$a */
/* loaded from: classes-dex2jar.jar:fd$a.class */
public class fd$a implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ fd f6608a;

    public fd$a(fd fdVar) {
        this.f6608a = fdVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        fd fdVar = this.f6608a;
        fdVar.mOnDismissListener.onDismiss(fdVar.mDialog);
    }
}
