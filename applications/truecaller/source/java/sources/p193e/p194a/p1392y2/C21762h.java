package p193e.p194a.p1392y2;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.background_work.TrackedWorker;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p1727n3.p1834m0.AbstractC26858z;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.C26851u;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.a.c;
import s1.k;
import s1.z.c.l;
import w3.b.a.e0.f;
import w3.b.a.i;
/* renamed from: e.a.y2.h */
/* loaded from: classes5-dex2jar.jar:e/a/y2/h.class */
public final class C21762h {

    /* renamed from: a */
    public i f60600a;

    /* renamed from: b */
    public C26829f f60601b;

    /* renamed from: c */
    public final C26825d.C26826a f60602c;

    /* renamed from: d */
    public k<? extends EnumC26674a, i> f60603d;

    /* renamed from: e */
    public final c<? extends TrackedWorker> f60604e;

    /* renamed from: f */
    public final i f60605f;

    public C21762h(c<? extends TrackedWorker> cVar, i iVar) {
        l.e(cVar, "workerClass");
        this.f60604e = cVar;
        this.f60605f = iVar;
        this.f60602c = new C26825d.C26826a();
    }

    public /* synthetic */ C21762h(c cVar, i iVar, int i) {
        this(cVar, null);
    }

    /* renamed from: a */
    public final C26842r m9113a() {
        C26842r.C26843a c26843a = new C26842r.C26843a(C25225a.m3983O0(this.f60604e));
        m9111c(c26843a);
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…t) }\n            .build()");
        return m1272b;
    }

    /* renamed from: b */
    public final C26851u m9112b() {
        C26851u.C26852a c26852a;
        if (this.f60605f != null) {
            i iVar = this.f60600a;
            if (iVar == null) {
                c26852a = new C26851u.C26852a(C25225a.m3983O0(this.f60604e), ((f) this.f60605f).a, TimeUnit.MILLISECONDS);
            } else {
                Class m3983O0 = C25225a.m3983O0(this.f60604e);
                long j = ((f) this.f60605f).a;
                TimeUnit timeUnit = TimeUnit.MILLISECONDS;
                c26852a = new C26851u.C26852a(m3983O0, j, timeUnit, ((f) iVar).a, timeUnit);
            }
            m9111c(c26852a);
            Object m1272b = c26852a.m1272b();
            l.d(m1272b, "when (val flex: Duration…t) }\n            .build()");
            return (C26851u) m1272b;
        }
        throw new IllegalStateException("Interval of a periodic request can not be null".toString());
    }

    /* renamed from: c */
    public final void m9111c(AbstractC26858z.AbstractC26859a<?, ?> abstractC26859a) {
        C26825d.C26826a c26826a = this.f60602c;
        Objects.requireNonNull(c26826a);
        abstractC26859a.f75127c.f74911j = new C26825d(c26826a);
        abstractC26859a.mo1270d();
        k<? extends EnumC26674a, i> kVar = this.f60603d;
        if (kVar != null) {
            abstractC26859a.m1269e((EnumC26674a) kVar.a, ((f) ((i) kVar.b)).a, TimeUnit.MILLISECONDS);
        }
        C26829f c26829f = this.f60601b;
        if (c26829f != null) {
            abstractC26859a.f75127c.f74906e = c26829f;
            abstractC26859a.mo1270d();
        }
    }

    /* renamed from: d */
    public final C21762h m9110d(EnumC26674a enumC26674a, i iVar) {
        l.e(enumC26674a, "backoffPolicy");
        l.e(iVar, "backoffDelay");
        this.f60603d = new k<>(enumC26674a, iVar);
        return this;
    }

    /* renamed from: e */
    public final C21762h m9109e(C26829f c26829f) {
        l.e(c26829f, RemoteMessageConst.DATA);
        this.f60601b = c26829f;
        return this;
    }

    /* renamed from: f */
    public final C21762h m9108f(EnumC26841q enumC26841q) {
        l.e(enumC26841q, "networkType");
        this.f60602c.f75068c = enumC26841q;
        return this;
    }
}
