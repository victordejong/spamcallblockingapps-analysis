package p193e.p194a.p1146q2.p1154x0;

import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19562a;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19563b;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19565d;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19566e;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19567f;
import s1.z.c.l;
/* renamed from: e.a.q2.x0.e */
/* loaded from: classes5-dex2jar.jar:e/a/q2/x0/e.class */
public final class C19594e implements AbstractC19567f {

    /* renamed from: a */
    public final Provider<C19592d> f54458a;

    /* renamed from: b */
    public final Provider<C19586a> f54459b;

    /* renamed from: c */
    public final Provider<C19588b> f54460c;

    /* renamed from: d */
    public final Provider<C19591c> f54461d;

    @Inject
    public C19594e(Provider<C19592d> provider, Provider<C19586a> provider2, Provider<C19588b> provider3, Provider<C19591c> provider4) {
        l.e(provider, "numberNormalizerProvider");
        l.e(provider2, "acsHelperProvider");
        l.e(provider3, "contactSourceHelperProvider");
        l.e(provider4, "contextCallHelperProvider");
        this.f54458a = provider;
        this.f54459b = provider2;
        this.f54460c = provider3;
        this.f54461d = provider4;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19567f
    /* renamed from: a */
    public AbstractC19563b mo13123a() {
        Object obj = this.f54460c.get();
        l.d(obj, "contactSourceHelperProvider.get()");
        return (AbstractC19563b) obj;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19567f
    /* renamed from: b */
    public AbstractC19562a mo13122b() {
        Object obj = this.f54459b.get();
        l.d(obj, "acsHelperProvider.get()");
        return (AbstractC19562a) obj;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19567f
    /* renamed from: c */
    public AbstractC19566e mo13121c() {
        Object obj = this.f54458a.get();
        l.d(obj, "numberNormalizerProvider.get()");
        return (AbstractC19566e) obj;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19567f
    /* renamed from: d */
    public AbstractC19565d mo13120d() {
        Object obj = this.f54461d.get();
        l.d(obj, "contextCallHelperProvider.get()");
        return (AbstractC19565d) obj;
    }
}
