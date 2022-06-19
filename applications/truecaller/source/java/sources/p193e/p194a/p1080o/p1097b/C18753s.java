package p193e.p194a.p1080o.p1097b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p372b0.p406e.AbstractC8428h;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p677d3.C12593k;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import p193e.p194a.p751f4.p753b.p754f.AbstractC13961b;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p193e.p194a.p751f4.p753b.p756h.AbstractC13973c;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.o.b.s */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/s.class */
public final class C18753s extends C12593k implements AbstractC18751q {

    /* renamed from: o */
    public final f f52688o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18753s(Context context, @Named("IO") f fVar, AbstractC8432l abstractC8432l, AbstractC8428h abstractC8428h, AbstractC19230g abstractC19230g, AbstractC13967b abstractC13967b, AbstractC13954b abstractC13954b, @Named("grpc_user_agent") String str, AbstractC13973c abstractC13973c, AbstractC13961b abstractC13961b, AbstractC21396c abstractC21396c) {
        super(context, abstractC8432l, abstractC8428h, abstractC19230g, abstractC13967b, abstractC13954b, str, abstractC13973c, abstractC13961b, abstractC21396c);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(fVar, "ioContext");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8428h, "temporaryAuthTokenManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC13967b, "edgeLocationsManager");
        l.e(abstractC13954b, "domainResolver");
        l.e(str, "userAgent");
        l.e(abstractC13973c, "channelNetworkChangesHandler");
        l.e(abstractC13961b, "domainFrontingResolver");
        l.e(abstractC21396c, "forcedUpdateManager");
        this.f52688o = fVar;
    }
}
