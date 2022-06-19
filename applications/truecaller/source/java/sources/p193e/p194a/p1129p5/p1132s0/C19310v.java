package p193e.p194a.p1129p5.p1132s0;

import com.huawei.hms.push.constant.RemoteMessageConst;
import q3.a.b3.c;
import q3.a.b3.d;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.f;
import s1.z.b.q;
import s1.z.c.l;
/* renamed from: e.a.p5.s0.v */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/v.class */
public final class C19310v<Param> {

    /* renamed from: a */
    public final c f53744a = new d(true);

    /* renamed from: b */
    public Param f53745b;

    /* renamed from: c */
    public p1 f53746c;

    /* renamed from: d */
    public final i0 f53747d;

    /* renamed from: e */
    public final q<Param, C19310v<Param>, s1.w.d<? super s>, Object> f53748e;

    /* JADX WARN: Multi-variable type inference failed */
    public C19310v(i0 i0Var, q<? super Param, ? super C19310v<Param>, ? super s1.w.d<? super s>, ? extends Object> qVar) {
        l.e(i0Var, "scope");
        l.e(qVar, "block");
        this.f53747d = i0Var;
        this.f53748e = qVar;
        this.f53746c = s1.a.a.a.v0.f.d.w2(i0Var, (f) null, (j0) null, new C19309u(this, null), 3, (Object) null);
    }

    /* renamed from: a */
    public final void m13476a(Param param) {
        l.e(param, RemoteMessageConst.MessageBody.PARAM);
        synchronized (this.f53744a) {
            this.f53745b = param;
            if (this.f53744a.a()) {
                s1.a.a.a.v0.f.d.U3(this.f53744a, (Object) null, 1, (Object) null);
            }
        }
    }
}
