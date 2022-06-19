package androidx.databinding;

import java.lang.ref.WeakReference;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$OnStartListener.class */
public class ViewDataBinding$OnStartListener implements AbstractC26985a0 {

    /* renamed from: a */
    public final WeakReference<ViewDataBinding> f714a;

    public ViewDataBinding$OnStartListener(ViewDataBinding viewDataBinding, ViewDataBinding$a viewDataBinding$a) {
        this.f714a = new WeakReference<>(viewDataBinding);
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_START)
    public void onStart() {
        ViewDataBinding viewDataBinding = this.f714a.get();
        if (viewDataBinding != null) {
            viewDataBinding.executePendingBindings();
        }
    }
}
