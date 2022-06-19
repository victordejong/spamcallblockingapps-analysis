package p193e.p194a.p195a.p269n;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.messaging.data.types.Conversation;
import java.util.ArrayList;
import java.util.Collection;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19510i0;
import p193e.p194a.p1146q2.C19497e0;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.n.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/c.class */
public final class C6997c {

    /* renamed from: a */
    public final AbstractC19462a f22592a;

    /* renamed from: b */
    public final AbstractC19510i0 f22593b;

    @Inject
    public C6997c(AbstractC19462a abstractC19462a, AbstractC19510i0 abstractC19510i0) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC19510i0, "messageAnalytics");
        this.f22592a = abstractC19462a;
        this.f22593b = abstractC19510i0;
    }

    /* renamed from: a */
    public final C19497e0 m30323a(String str, Conversation conversation) {
        C19497e0 c19497e0 = new C19497e0(str);
        c19497e0.m13279c("peer", C10480a.m25919o1(conversation) ? "group" : "121");
        return c19497e0;
    }

    /* renamed from: b */
    public void m30322b(boolean z, Collection<C6227c> collection) {
        l.e(collection, "mediaAttachments");
        AbstractC19510i0 abstractC19510i0 = this.f22593b;
        ArrayList arrayList = new ArrayList(C25225a.m4004J(collection, 10));
        for (C6227c c6227c : collection) {
            arrayList.add(Integer.valueOf(c6227c.f20874d));
        }
        abstractC19510i0.mo13206t(z, arrayList, collection.size(), "mediaViewer", null);
    }
}
