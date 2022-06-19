package p1727n3.p1868v;

import androidx.lifecycle.LiveData;
import com.razorpay.AnalyticsConstants;
import q3.a.t0;
import q3.a.v0;
import q3.a.y2.q;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: n3.v.h0 */
/* loaded from: classes-dex2jar.jar:n3/v/h0.class */
public final class C27006h0<T> implements AbstractC27005g0<T> {

    /* renamed from: a */
    public final f f75528a;

    /* renamed from: b */
    public h<T> f75529b;

    public C27006h0(h<T> hVar, f fVar) {
        l.f(hVar, "target");
        l.f(fVar, AnalyticsConstants.CONTEXT);
        this.f75529b = hVar;
        t0 t0Var = t0.a;
        this.f75528a = fVar.plus(q.c.K0());
    }

    @Override // p1727n3.p1868v.AbstractC27005g0
    /* renamed from: a */
    public Object mo1006a(T t, d<? super s> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f75528a, new a(this, t, (d) null), dVar);
    }

    @Override // p1727n3.p1868v.AbstractC27005g0
    /* renamed from: b */
    public Object mo1005b(LiveData<T> liveData, d<? super v0> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f75528a, new b(this, liveData, (d) null), dVar);
    }
}
