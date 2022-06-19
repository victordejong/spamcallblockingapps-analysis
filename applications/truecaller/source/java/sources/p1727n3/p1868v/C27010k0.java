package p1727n3.p1868v;

import androidx.lifecycle.LiveData;
/* renamed from: n3.v.k0 */
/* loaded from: classes-dex2jar.jar:n3/v/k0.class */
public class C27010k0<T> extends LiveData<T> {
    public C27010k0() {
    }

    public C27010k0(T t) {
        super(t);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: j */
    public void mo1001j(T t) {
        super.mo1001j(t);
    }

    @Override // androidx.lifecycle.LiveData
    /* renamed from: l */
    public void mo1000l(T t) {
        LiveData.m42872a("setValue");
        this.f916g++;
        this.f914e = t;
        m42870c(null);
    }
}
