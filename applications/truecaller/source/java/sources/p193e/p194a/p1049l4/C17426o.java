package p193e.p194a.p1049l4;

import android.content.Context;
import com.appsflyer.AppsFlyerProperties;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.Collection;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1238t2.p1239a.p1253f.p1254a.C20473b;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p372b0.p406e.AbstractC8428h;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import p193e.p194a.p751f4.p753b.C13953a;
import p193e.p194a.p751f4.p753b.p754f.AbstractC13961b;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p193e.p194a.p751f4.p753b.p756h.AbstractC13973c;
import p193e.p194a.p751f4.p753b.p756h.AbstractC13981h;
import p3.a.c;
import p3.a.d;
import p3.a.g;
import p3.a.q1.e;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.l4.o */
/* loaded from: classes12-dex2jar.jar:e/a/l4/o.class */
public final class C17426o extends AbstractC13981h<C20473b.C20475b, C20473b.C20474a> implements AbstractC17425n {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C17426o(Context context, AbstractC8432l abstractC8432l, AbstractC8428h abstractC8428h, AbstractC19230g abstractC19230g, AbstractC13967b abstractC13967b, AbstractC13954b abstractC13954b, @Named("grpc_user_agent") String str, AbstractC13973c abstractC13973c, AbstractC13961b abstractC13961b, @Named("presence_cross_domain_support") C13953a c13953a, AbstractC21396c abstractC21396c) {
        super(context, KnownEndpoints.PRESENCE_GRPC, abstractC8432l, abstractC8428h, abstractC19230g, 10, abstractC13973c, abstractC13967b, abstractC13954b, str, abstractC13961b, c13953a, abstractC21396c);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8428h, "temporaryAuthTokenManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC13967b, "edgeLocationsManager");
        l.e(abstractC13954b, "domainResolver");
        l.e(str, "userAgent");
        l.e(abstractC13973c, "channelNetworkChangesHandler");
        l.e(abstractC13961b, "domainFrontingResolver");
        l.e(c13953a, "crossDomainSupport");
        l.e(abstractC21396c, "forcedUpdateManager");
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: f */
    public C20473b.C20474a mo9729f(d dVar) {
        l.e(dVar, AppsFlyerProperties.CHANNEL);
        C20473b.C20474a c20474a = new C20473b.C20474a(dVar, c.k.f(e.b, e.f.a), null);
        l.d(c20474a, "PresenceGrpc.newBlockingStub(channel)");
        return c20474a;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: h */
    public C20473b.C20475b mo9728h(d dVar) {
        l.e(dVar, AppsFlyerProperties.CHANNEL);
        C20473b.C20475b c20475b = new C20473b.C20475b(dVar, c.k.f(e.b, e.f.c), null);
        l.d(c20475b, "PresenceGrpc.newStub(channel)");
        return c20475b;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: j */
    public Collection<g> mo9727j() {
        return s.a;
    }
}
