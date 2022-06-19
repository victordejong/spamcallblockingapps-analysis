package androidx.databinding;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$g.class */
public class ViewDataBinding$g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ ViewDataBinding f715a;

    public ViewDataBinding$g(ViewDataBinding viewDataBinding) {
        this.f715a = viewDataBinding;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            ViewDataBinding.access$202(this.f715a, false);
        }
        ViewDataBinding.access$300();
        if (ViewDataBinding.access$400(this.f715a).isAttachedToWindow()) {
            this.f715a.executePendingBindings();
            return;
        }
        ViewDataBinding.access$400(this.f715a).removeOnAttachStateChangeListener(ViewDataBinding.access$500());
        ViewDataBinding.access$400(this.f715a).addOnAttachStateChangeListener(ViewDataBinding.access$500());
    }
}
