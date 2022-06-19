package androidx.databinding;

import p1727n3.p1849n.AbstractC26868i;
import p1727n3.p1868v.AbstractC26992b0;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$q.class */
public class ViewDataBinding$q extends AbstractC26868i.AbstractC26869a implements ViewDataBinding$l<AbstractC26868i> {

    /* renamed from: a */
    public final ViewDataBinding$o<AbstractC26868i> f724a;

    public ViewDataBinding$q(ViewDataBinding viewDataBinding, int i) {
        this.f724a = new ViewDataBinding$o<>(viewDataBinding, i, this);
    }

    @Override // androidx.databinding.ViewDataBinding$l
    /* renamed from: b */
    public void mo42983b(AbstractC26992b0 abstractC26992b0) {
    }

    @Override // androidx.databinding.ViewDataBinding$l
    /* renamed from: c */
    public void mo42982c(AbstractC26868i abstractC26868i) {
        abstractC26868i.removeOnPropertyChangedCallback(this);
    }

    @Override // androidx.databinding.ViewDataBinding$l
    /* renamed from: d */
    public void mo42981d(AbstractC26868i abstractC26868i) {
        abstractC26868i.addOnPropertyChangedCallback(this);
    }

    @Override // p1727n3.p1849n.AbstractC26868i.AbstractC26869a
    /* renamed from: e */
    public void mo1248e(AbstractC26868i abstractC26868i, int i) {
        ViewDataBinding$o<AbstractC26868i> viewDataBinding$o = this.f724a;
        ViewDataBinding viewDataBinding = viewDataBinding$o.get();
        if (viewDataBinding == null) {
            viewDataBinding$o.m42984a();
        }
        if (viewDataBinding == null) {
            return;
        }
        ViewDataBinding$o<AbstractC26868i> viewDataBinding$o2 = this.f724a;
        if (viewDataBinding$o2.f722c != abstractC26868i) {
            return;
        }
        ViewDataBinding.access$800(viewDataBinding, viewDataBinding$o2.f721b, abstractC26868i, i);
    }
}
