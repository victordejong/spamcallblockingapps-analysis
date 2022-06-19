package p193e.p194a.p195a.p244k.p245a;

import android.content.Context;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.updatesdk.service.otaupdate.UpdateKey;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.messenger.p138v1.RegisterUser;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.AbstractC17419h;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1238t2.p1239a.p1248e.p1249a.C20458b;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p406e.AbstractC8428h;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p751f4.p752a.AbstractC13947d;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import p193e.p194a.p751f4.p753b.C13953a;
import p193e.p194a.p751f4.p753b.p754f.AbstractC13961b;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p193e.p194a.p751f4.p753b.p756h.AbstractC13973c;
import p193e.p194a.p751f4.p753b.p756h.AbstractC13981h;
import p193e.p194a.p751f4.p760e.C13991a;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import p3.a.c;
import p3.a.g;
import p3.a.g1;
import p3.a.i1;
import p3.a.n1.j1;
import p3.a.o0;
import p3.a.o1.d;
import p3.a.q1.e;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.t1 */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/t1.class */
public final class C6628t1 extends AbstractC13981h<C20458b.C20460b, C20458b.C20459a> implements AbstractC6625s1 {

    /* renamed from: o */
    public final Context f21870o;

    /* renamed from: p */
    public final AbstractC19230g f21871p;

    /* renamed from: q */
    public final AbstractC13947d f21872q;

    /* renamed from: r */
    public final AbstractC6392i0 f21873r;

    /* renamed from: s */
    public final AbstractC19462a f21874s;

    /* renamed from: t */
    public final AbstractC19321u f21875t;

    /* renamed from: u */
    public final a<AbstractC19854f<AbstractC17419h>> f21876u;

    /* renamed from: v */
    public final AbstractC6573i1 f21877v;

    /* renamed from: w */
    public final AbstractC19215b f21878w;

    /* renamed from: x */
    public final a<AbstractC19854f<AbstractC6485m>> f21879x;

    /* renamed from: y */
    public final AbstractC21396c f21880y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C6628t1(Context context, AbstractC8432l abstractC8432l, AbstractC8428h abstractC8428h, AbstractC19230g abstractC19230g, @Named("grpc_user_agent") String str, AbstractC13973c abstractC13973c, AbstractC13967b abstractC13967b, AbstractC13954b abstractC13954b, AbstractC13961b abstractC13961b, @Named("im_cross_domain_support") C13953a c13953a, AbstractC13947d abstractC13947d, AbstractC6392i0 abstractC6392i0, AbstractC19462a abstractC19462a, AbstractC19321u abstractC19321u, a<AbstractC19854f<AbstractC17419h>> aVar, AbstractC6573i1 abstractC6573i1, AbstractC19215b abstractC19215b, a<AbstractC19854f<AbstractC6485m>> aVar2, AbstractC21396c abstractC21396c) {
        super(context, KnownEndpoints.MESSENGER, abstractC8432l, abstractC8428h, abstractC19230g, 20, abstractC13973c, abstractC13967b, abstractC13954b, str, abstractC13961b, c13953a, abstractC21396c);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8428h, "temporaryAuthTokenManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(str, "userAgent");
        l.e(abstractC13973c, "channelNetworkChangesHandler");
        l.e(abstractC13967b, "edgeLocationsManager");
        l.e(abstractC13954b, "domainResolver");
        l.e(abstractC13961b, "domainFrontingResolver");
        l.e(c13953a, "crossDomainSupport");
        l.e(abstractC13947d, "credentialsChecker");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19321u, "networkUtils");
        l.e(aVar, "presenceManager");
        l.e(abstractC6573i1, "imVersionManager");
        l.e(abstractC19215b, "qaMenuSettings");
        l.e(aVar2, "imGroupManager");
        l.e(abstractC21396c, "forcedUpdateManager");
        this.f21870o = context;
        this.f21871p = abstractC19230g;
        this.f21872q = abstractC13947d;
        this.f21873r = abstractC6392i0;
        this.f21874s = abstractC19462a;
        this.f21875t = abstractC19321u;
        this.f21876u = aVar;
        this.f21877v = abstractC6573i1;
        this.f21878w = abstractC19215b;
        this.f21879x = aVar2;
        this.f21880y = abstractC21396c;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h, p193e.p194a.p751f4.p753b.p756h.AbstractC13980g
    /* renamed from: b */
    public C20458b.C20460b mo20912b(AbstractC8371e abstractC8371e) {
        C20458b.C20460b mo20912b;
        l.e(abstractC8371e, "targetDomain");
        C20458b.C20460b c20460b = null;
        if (m30636l() && (mo20912b = super.mo20912b(AbstractC8371e.C8372a.f25732a)) != null) {
            c20460b = (C20458b.C20460b) m30634n(mo20912b);
        }
        return c20460b;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h, p193e.p194a.p751f4.p753b.p756h.AbstractC13980g
    /* renamed from: c */
    public C20458b.C20459a mo20911c(AbstractC8371e abstractC8371e) {
        C20458b.C20459a mo20911c;
        l.e(abstractC8371e, "targetDomain");
        C20458b.C20459a c20459a = null;
        if (m30636l() && (mo20911c = super.mo20911c(AbstractC8371e.C8372a.f25732a)) != null) {
            c20459a = (C20458b.C20459a) m30634n(mo20911c);
        }
        return c20459a;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: e */
    public void mo20909e(d dVar) {
        l.e(dVar, "builder");
        TimeUnit timeUnit = TimeUnit.SECONDS;
        C26232y.checkArgument2(true, "keepalive time must be positive");
        long nanos = timeUnit.toNanos(45L);
        dVar.f = nanos;
        long max = Math.max(nanos, j1.l);
        dVar.f = max;
        if (max >= d.l) {
            dVar.f = RecyclerView.FOREVER_NS;
        }
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: f */
    public C20458b.C20459a mo9729f(p3.a.d dVar) {
        l.e(dVar, AppsFlyerProperties.CHANNEL);
        C20458b.C20459a c20459a = new C20458b.C20459a(dVar, c.k.f(e.b, e.f.a), null);
        l.d(c20459a, "MessengerGrpc.newBlockingStub(channel)");
        return c20459a;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: h */
    public C20458b.C20460b mo9728h(p3.a.d dVar) {
        l.e(dVar, AppsFlyerProperties.CHANNEL);
        C20458b.C20460b c20460b = new C20458b.C20460b(dVar, c.k.f(e.b, e.f.c), null);
        l.d(c20460b, "MessengerGrpc.newStub(channel)");
        return c20460b;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: j */
    public Collection<g> mo9727j() {
        ArrayList arrayList = new ArrayList();
        AbstractC13947d abstractC13947d = this.f21872q;
        AbstractC6392i0 abstractC6392i0 = this.f21873r;
        Object obj = this.f21879x.get();
        l.d(obj, "imGroupManager.get()");
        arrayList.add(new C13991a(abstractC13947d, abstractC6392i0, (AbstractC19854f) obj));
        if (C15571h.m18631t(this.f21870o)) {
            arrayList.add(new C6615r1());
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0040 A[Catch: all -> 0x0072, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0010, B:13:0x0027, B:18:0x0034, B:20:0x0040), top: B:28:0x0002 }] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m30636l() {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r4
            e.a.a.i0 r0 = r0.f21873r     // Catch: java.lang.Throwable -> L72
            java.lang.String r0 = r0.mo31078f()     // Catch: java.lang.Throwable -> L72
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L21
            r0 = r5
            int r0 = r0.length()     // Catch: java.lang.Throwable -> L72
            if (r0 != 0) goto L1c
            goto L21
        L1c:
            r0 = 0
            r6 = r0
            goto L23
        L21:
            r0 = 1
            r6 = r0
        L23:
            r0 = r6
            if (r0 == 0) goto L34
            r0 = r4
            boolean r0 = r0.m30635m()     // Catch: java.lang.Throwable -> L72
            r7 = r0
            r0 = r7
            if (r0 != 0) goto L34
            r0 = r4
            monitor-exit(r0)
            r0 = 0
            return r0
        L34:
            r0 = r4
            e.a.a.i0 r0 = r0.f21873r     // Catch: java.lang.Throwable -> L72
            boolean r0 = r0.mo31065h0()     // Catch: java.lang.Throwable -> L72
            if (r0 != 0) goto L6e
            r0 = r4
            e.a.a.i0 r0 = r0.f21873r     // Catch: java.lang.Throwable -> L72
            r1 = r4
            o3.a<e.a.r2.f<e.a.l4.h>> r1 = r1.f21876u     // Catch: java.lang.Throwable -> L72
            java.lang.Object r1 = r1.get()     // Catch: java.lang.Throwable -> L72
            e.a.r2.f r1 = (p193e.p194a.p1187r2.AbstractC19854f) r1     // Catch: java.lang.Throwable -> L72
            java.lang.Object r1 = r1.mo11854a()     // Catch: java.lang.Throwable -> L72
            e.a.l4.h r1 = (p193e.p194a.p1049l4.AbstractC17419h) r1     // Catch: java.lang.Throwable -> L72
            e.a.r2.x r1 = r1.mo16131a()     // Catch: java.lang.Throwable -> L72
            java.lang.Object r1 = r1.mo11831c()     // Catch: java.lang.Throwable -> L72
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L72
            java.lang.Boolean r2 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L72
            boolean r1 = s1.z.c.l.a(r1, r2)     // Catch: java.lang.Throwable -> L72
            r0.mo31211F1(r1)     // Catch: java.lang.Throwable -> L72
        L6e:
            r0 = r4
            monitor-exit(r0)
            r0 = 1
            return r0
        L72:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p244k.p245a.C6628t1.m30636l():boolean");
    }

    /* renamed from: m */
    public final boolean m30635m() {
        C20458b.C20459a mo20911c = super.mo20911c(AbstractC8371e.C8372a.f25732a);
        if (mo20911c != null) {
            AbstractC19462a abstractC19462a = this.f21874s;
            LinkedHashMap m8655X = C22128a.m8655X("ImRequest", "type");
            LinkedHashMap m8652Y = C22128a.m8652Y("type", AnalyticsConstants.NAME, "getPeerImId", "value", m8655X, "type", "getPeerImId");
            String mo13431b = this.f21875t.mo13429d() ? this.f21875t.mo13431b() : "no-connection";
            l.e("connectionType", AnalyticsConstants.NAME);
            l.e(mo13431b, "value");
            m8655X.put("connectionType", mo13431b);
            l.e(UpdateKey.STATUS, AnalyticsConstants.NAME);
            l.e("attempt", "value");
            m8655X.put(UpdateKey.STATUS, "attempt");
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("ImRequest");
            m15852a.m15849c(m8652Y);
            m15852a.m15848d(m8655X);
            C17697p3 build = m15852a.build();
            l.d(build, "GenericAnalyticsEvent.ne…rties(properties).build()");
            abstractC19462a.mo13275a(build);
            try {
                RegisterUser.Response m11110o = mo20911c.m11110o(RegisterUser.Request.getDefaultInstance());
                this.f21873r.mo31037l4(m11110o != null ? m11110o.getId() : null);
                this.f21873r.mo31211F1(false);
                return true;
            } catch (RuntimeException e) {
                if (e instanceof i1) {
                    AbstractC19462a abstractC19462a2 = this.f21874s;
                    LinkedHashMap m8655X2 = C22128a.m8655X("ImRequest", "type");
                    LinkedHashMap m8652Y2 = C22128a.m8652Y("type", AnalyticsConstants.NAME, "getPeerImId", "value", m8655X2, "type", "getPeerImId");
                    String str = "no-connection";
                    if (this.f21875t.mo13429d()) {
                        str = this.f21875t.mo13431b();
                    }
                    l.e("connectionType", AnalyticsConstants.NAME);
                    l.e(str, "value");
                    m8655X2.put("connectionType", str);
                    l.e(UpdateKey.STATUS, AnalyticsConstants.NAME);
                    l.e(AnalyticsConstants.FAILURE, "value");
                    m8655X2.put(UpdateKey.STATUS, AnalyticsConstants.FAILURE);
                    g1 g1Var = e.a;
                    l.d(g1Var, "error.status");
                    String name = g1Var.a.name();
                    l.e("errorCode", AnalyticsConstants.NAME);
                    l.e(name, "value");
                    m8655X2.put("errorCode", name);
                    C17697p3.C17699b m15852a2 = C17697p3.m15852a();
                    m15852a2.m15850b("ImRequest");
                    m15852a2.m15849c(m8652Y2);
                    C22128a.m8553x0(m15852a2, m8655X2, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a2);
                }
                String str2 = "Failed to register to IM: " + e;
                return false;
            }
        }
        return false;
    }

    /* renamed from: n */
    public final <S extends p3.a.q1.c<S>> S m30634n(S s) {
        o0 o0Var = new o0();
        o0.d dVar = o0.c;
        o0Var.h(o0.f.a("Version", dVar), String.valueOf(this.f21877v.mo30758b()));
        ArrayList arrayList = new ArrayList();
        if (this.f21878w.mo13875B1()) {
            arrayList.add("versioning");
        }
        if (this.f21878w.mo13837t2()) {
            arrayList.add("commands");
        }
        if (this.f21878w.mo13873E2()) {
            arrayList.add("no-user-info");
        }
        if (this.f21873r.mo31135U2() || C17422k.m16098T() || this.f21871p.mo13788i()) {
            arrayList.add("tracing");
        }
        if (!arrayList.isEmpty()) {
            o0Var.h(o0.f.a("Debug", dVar), i.O(arrayList, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (s1.z.b.l) null, 62));
        }
        S s2 = (S) s.b(new g[]{new p3.a.q1.g(o0Var)});
        l.d(s2, "MetadataUtils.attachHeaders(this, metadata)");
        return s2;
    }
}
