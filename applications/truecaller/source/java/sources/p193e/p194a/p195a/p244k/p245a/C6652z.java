package p193e.p194a.p195a.p244k.p245a;

import android.content.Context;
import android.util.Base64;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.messenger.p138v1.events.Event;
import e.a.r.t.c;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1075n3.p1076a.C18479b;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8604n;
import s1.z.c.l;
/* renamed from: e.a.a.k.a.z */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/a/z.class */
public final class C6652z implements AbstractC6648y {

    /* renamed from: a */
    public final boolean f21933a;

    /* renamed from: b */
    public final AbstractC6392i0 f21934b;

    /* renamed from: c */
    public final AbstractC8432l f21935c;

    /* renamed from: d */
    public final AbstractC6600p f21936d;

    /* renamed from: e */
    public final AbstractC6573i1 f21937e;

    @Inject
    public C6652z(Context context, AbstractC6392i0 abstractC6392i0, AbstractC8432l abstractC8432l, AbstractC6600p abstractC6600p, AbstractC6573i1 abstractC6573i1) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC6392i0, "settings");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC6600p, "imEventProcessor");
        l.e(abstractC6573i1, "imVersionManager");
        this.f21934b = abstractC6392i0;
        this.f21935c = abstractC8432l;
        this.f21936d = abstractC6600p;
        this.f21937e = abstractC6573i1;
        this.f21933a = C8604n.m28240e(context);
    }

    @Override // p193e.p194a.p195a.p244k.p245a.AbstractC6648y
    /* renamed from: a */
    public void mo30601a(Map<String, String> map) {
        String str;
        l.e(map, RemoteMessageConst.DATA);
        if (!this.f21935c.mo28580d() || !c.qa() || this.f21937e.mo30754f()) {
            return;
        }
        this.f21934b.mo31001s(true);
        Event parseFrom = Event.parseFrom(Base64.decode(map.get("payload"), 0));
        if (this.f21933a) {
            C6612q1 c6612q1 = C6612q1.f21849c;
            l.d(parseFrom, "event");
            Event m30648d = C6612q1.m30648d(parseFrom);
            if (m30648d != null) {
                String generatedMessageLite = m30648d.toString();
                l.d(generatedMessageLite, "it.toString()");
                str = C6612q1.m30651a(generatedMessageLite);
            } else {
                str = "<masked>";
            }
            C18479b.m14875a(C22128a.m8543z2("IM push ", str));
        }
        AbstractC6600p abstractC6600p = this.f21936d;
        l.d(parseFrom, "event");
        abstractC6600p.mo30683a(parseFrom, true, 0);
    }
}
