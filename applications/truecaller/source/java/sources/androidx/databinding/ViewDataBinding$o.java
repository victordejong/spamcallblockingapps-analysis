package androidx.databinding;

import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$o.class */
public class ViewDataBinding$o<T> extends WeakReference<ViewDataBinding> {

    /* renamed from: a */
    public final ViewDataBinding$l<T> f720a;

    /* renamed from: b */
    public final int f721b;

    /* renamed from: c */
    public T f722c;

    public ViewDataBinding$o(ViewDataBinding viewDataBinding, int i, ViewDataBinding$l<T> viewDataBinding$l) {
        super(viewDataBinding, ViewDataBinding.access$700());
        this.f721b = i;
        this.f720a = viewDataBinding$l;
    }

    /* renamed from: a */
    public boolean m42984a() {
        boolean z;
        T t = this.f722c;
        if (t != null) {
            this.f720a.mo42982c(t);
            z = true;
        } else {
            z = false;
        }
        this.f722c = null;
        return z;
    }
}
