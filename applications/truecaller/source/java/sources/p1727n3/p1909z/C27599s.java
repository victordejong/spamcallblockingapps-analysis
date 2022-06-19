package p1727n3.p1909z;

import com.huawei.hms.push.constant.RemoteMessageConst;
import q3.a.x2.a1;
import q3.a.x2.f;
import q3.a.x2.k1;
import s1.k;
import s1.z.c.l;
/* renamed from: n3.z.s */
/* loaded from: classes-dex2jar.jar:n3/z/s.class */
public final class C27599s<T> {

    /* renamed from: a */
    public final a1<k<Integer, T>> f77787a;

    /* renamed from: b */
    public final f<T> f77788b;

    public C27599s(Object obj, int i) {
        a1<k<Integer, T>> a = k1.a(new k(Integer.MIN_VALUE, (Object) null));
        this.f77787a = a;
        this.f77788b = new r(a);
    }

    /* renamed from: a */
    public final void m31a(T t) {
        l.e(t, RemoteMessageConst.DATA);
        a1<k<Integer, T>> a1Var = this.f77787a;
        a1Var.setValue(new k(Integer.valueOf(((Number) ((k) a1Var.getValue()).a).intValue() + 1), t));
    }
}
