package p1727n3.p1868v;

import androidx.lifecycle.LiveData;
import p1727n3.p1746c.p1747a.p1750c.AbstractC25640a;
/* renamed from: n3.v.w0 */
/* loaded from: classes-dex2jar.jar:n3/v/w0.class */
public final class C27035w0 implements AbstractC27012l0<X> {

    /* renamed from: a */
    public LiveData<Y> f75580a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC25640a f75581b;

    /* renamed from: c */
    public final /* synthetic */ i0 f75582c;

    /* renamed from: n3.v.w0$a */
    /* loaded from: classes-dex2jar.jar:n3/v/w0$a.class */
    public class C27036a implements AbstractC27012l0<Y> {
        public C27036a() {
            C27035w0.this = r4;
        }

        @Override // p1727n3.p1868v.AbstractC27012l0
        public void onChanged(Y y) {
            C27035w0.this.f75582c.mo1000l(y);
        }
    }

    public C27035w0(AbstractC25640a abstractC25640a, i0 i0Var) {
        this.f75581b = abstractC25640a;
        this.f75582c = i0Var;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(X x) {
        LiveData<Y> liveData = (LiveData) this.f75581b.apply(x);
        LiveData<Y> liveData2 = this.f75580a;
        if (liveData2 == liveData) {
            return;
        }
        if (liveData2 != 0) {
            this.f75582c.n(liveData2);
        }
        this.f75580a = liveData;
        if (liveData == 0) {
            return;
        }
        this.f75582c.m(liveData, new C27036a());
    }
}
