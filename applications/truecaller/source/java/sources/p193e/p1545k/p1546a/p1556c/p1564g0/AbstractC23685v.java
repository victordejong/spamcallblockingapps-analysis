package p193e.p1545k.p1546a.p1556c.p1564g0;

import java.io.Serializable;
import java.util.List;
import p193e.p1545k.p1546a.p1547a.AbstractC23311k;
import p193e.p1545k.p1546a.p1547a.AbstractC23331r;
import p193e.p1545k.p1546a.p1556c.AbstractC23426b;
import p193e.p1545k.p1546a.p1556c.AbstractC23462d;
import p193e.p1545k.p1546a.p1556c.C23949u;
import p193e.p1545k.p1546a.p1556c.C23951v;
import p193e.p1545k.p1546a.p1556c.p1558c0.AbstractC23458k;
/* renamed from: e.k.a.c.g0.v */
/* loaded from: classes2-dex2jar.jar:e/k/a/c/g0/v.class */
public abstract class AbstractC23685v implements AbstractC23462d, Serializable {

    /* renamed from: a */
    public final C23949u f65667a;

    /* renamed from: b */
    public transient List<C23951v> f65668b;

    public AbstractC23685v(AbstractC23685v abstractC23685v) {
        this.f65667a = abstractC23685v.f65667a;
    }

    public AbstractC23685v(C23949u c23949u) {
        this.f65667a = c23949u == null ? C23949u.f66292j : c23949u;
    }

    /* renamed from: a */
    public boolean m6331a() {
        Boolean bool = this.f65667a.f66293a;
        return bool != null && bool.booleanValue();
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: e */
    public AbstractC23311k.C23315d mo6330e(AbstractC23458k<?> abstractC23458k, Class<?> cls) {
        AbstractC23663i mo6108c;
        AbstractC23311k.C23315d mo6856h = abstractC23458k.mo6856h(cls);
        AbstractC23426b m6864e = abstractC23458k.m6864e();
        AbstractC23311k.C23315d mo6271n = (m6864e == null || (mo6108c = mo6108c()) == null) ? null : m6864e.mo6271n(mo6108c);
        if (mo6856h != null) {
            return mo6271n == null ? mo6856h : mo6856h.m7282f(mo6271n);
        }
        AbstractC23311k.C23315d c23315d = mo6271n;
        if (mo6271n == null) {
            c23315d = AbstractC23462d.f65086I;
        }
        return c23315d;
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
    /* renamed from: f */
    public AbstractC23331r.C23333b mo6329f(AbstractC23458k<?> abstractC23458k, Class<?> cls) {
        AbstractC23426b m6864e = abstractC23458k.m6864e();
        AbstractC23663i mo6108c = mo6108c();
        if (mo6108c == null) {
            return abstractC23458k.mo6855i(cls);
        }
        AbstractC23331r.C23333b mo6857g = abstractC23458k.mo6857g(cls, mo6108c.mo6378d());
        if (m6864e == null) {
            return mo6857g;
        }
        AbstractC23331r.C23333b mo6313J = m6864e.mo6313J(mo6108c);
        return mo6857g == null ? mo6313J : mo6857g.m7270a(mo6313J);
    }

    @Override // p193e.p1545k.p1546a.p1556c.AbstractC23462d
    public C23949u getMetadata() {
        return this.f65667a;
    }
}
