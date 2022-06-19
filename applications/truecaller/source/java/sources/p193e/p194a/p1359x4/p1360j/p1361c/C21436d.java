package p193e.p194a.p1359x4.p1360j.p1361c;

import android.content.Context;
import com.appsflyer.AppsFlyerProperties;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.Collection;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1238t2.p1239a.p1258h.p1259a.C20489g;
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
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.x4.j.c.d */
/* loaded from: classes13-dex2jar.jar:e/a/x4/j/c/d.class */
public final class C21436d extends AbstractC13981h<C20489g.C20491b, C20489g.C20490a> implements AbstractC21435c {

    /* renamed from: e.a.x4.j.c.d$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/j/c/d$a.class */
    public static final class C21437a extends m implements a<Boolean> {

        /* renamed from: b */
        public static final C21437a f59918b = new C21437a();

        public C21437a() {
            super(0);
        }

        public /* bridge */ /* synthetic */ Object invoke() {
            return Boolean.FALSE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C21436d(Context context, AbstractC8432l abstractC8432l, AbstractC8428h abstractC8428h, AbstractC19230g abstractC19230g, AbstractC13967b abstractC13967b, AbstractC13954b abstractC13954b, @Named("grpc_user_agent") String str, AbstractC13973c abstractC13973c, AbstractC13961b abstractC13961b, AbstractC21396c abstractC21396c) {
        super(context, KnownEndpoints.SEARCH_WARNINGS_GRPC, abstractC8432l, abstractC8428h, abstractC19230g, 10, abstractC13973c, abstractC13967b, abstractC13954b, str, abstractC13961b, new C13953a(C21437a.f59918b), abstractC21396c);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8428h, "temporaryAuthTokenManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC13967b, "edgeLocationsManager");
        l.e(abstractC13954b, "domainResolver");
        l.e(str, "userAgent");
        l.e(abstractC13973c, "channelNetworkChangesHandler");
        l.e(abstractC13961b, "domainFrontingResolver");
        l.e(abstractC21396c, "forcedUpdateManager");
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: f */
    public C20489g.C20490a mo9729f(d dVar) {
        l.e(dVar, AppsFlyerProperties.CHANNEL);
        C20489g.C20490a c20490a = new C20489g.C20490a(dVar, c.k.f(e.b, e.f.a), null);
        l.d(c20490a, "SupernovaGrpc.newBlockingStub(channel)");
        return c20490a;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: h */
    public C20489g.C20491b mo9728h(d dVar) {
        l.e(dVar, AppsFlyerProperties.CHANNEL);
        C20489g.C20491b c20491b = new C20489g.C20491b(dVar, c.k.f(e.b, e.f.c), null);
        l.d(c20491b, "SupernovaGrpc.newStub(channel)");
        return c20491b;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13981h
    /* renamed from: j */
    public Collection<g> mo9727j() {
        return s.a;
    }
}
