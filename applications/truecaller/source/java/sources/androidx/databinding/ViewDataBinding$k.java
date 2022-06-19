package androidx.databinding;

import androidx.lifecycle.LiveData;
import p1727n3.p1868v.AbstractC26992b0;
import p1727n3.p1868v.AbstractC27012l0;
/* loaded from: classes-dex2jar.jar:androidx/databinding/ViewDataBinding$k.class */
public class ViewDataBinding$k implements AbstractC27012l0, ViewDataBinding$l<LiveData<?>> {

    /* renamed from: a */
    public final ViewDataBinding$o<LiveData<?>> f717a;

    /* renamed from: b */
    public AbstractC26992b0 f718b;

    public ViewDataBinding$k(ViewDataBinding viewDataBinding, int i) {
        this.f717a = new ViewDataBinding$o<>(viewDataBinding, i, this);
    }

    @Override // androidx.databinding.ViewDataBinding$l
    /* renamed from: b */
    public void mo42983b(AbstractC26992b0 abstractC26992b0) {
        LiveData<?> liveData = this.f717a.f722c;
        if (liveData != null) {
            if (this.f718b != null) {
                liveData.m42865k(this);
            }
            if (abstractC26992b0 != null) {
                liveData.m42867f(abstractC26992b0, this);
            }
        }
        this.f718b = abstractC26992b0;
    }

    @Override // androidx.databinding.ViewDataBinding$l
    /* renamed from: c */
    public void mo42982c(LiveData<?> liveData) {
        liveData.m42865k(this);
    }

    @Override // androidx.databinding.ViewDataBinding$l
    /* renamed from: d */
    public void mo42981d(LiveData<?> liveData) {
        LiveData<?> liveData2 = liveData;
        AbstractC26992b0 abstractC26992b0 = this.f718b;
        if (abstractC26992b0 != null) {
            liveData2.m42867f(abstractC26992b0, this);
        }
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(Object obj) {
        ViewDataBinding$o<LiveData<?>> viewDataBinding$o = this.f717a;
        ViewDataBinding viewDataBinding = viewDataBinding$o.get();
        if (viewDataBinding == null) {
            viewDataBinding$o.m42984a();
        }
        if (viewDataBinding != null) {
            ViewDataBinding$o<LiveData<?>> viewDataBinding$o2 = this.f717a;
            ViewDataBinding.access$800(viewDataBinding, viewDataBinding$o2.f721b, viewDataBinding$o2.f722c, 0);
        }
    }
}
