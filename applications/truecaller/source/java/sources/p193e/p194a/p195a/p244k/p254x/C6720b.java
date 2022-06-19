package p193e.p194a.p195a.p244k.p254x;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import java.util.List;
import java.util.Set;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p231g.C6110d0;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6139g0;
import p193e.p194a.p195a.p244k.AbstractC6679g;
import p193e.p194a.p195a.p244k.AbstractC6691j;
import p193e.p194a.p195a.p244k.AbstractC6694m;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p712e4.AbstractC13497p;
import s1.u.i;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.e0.e;
/* renamed from: e.a.a.k.x.b */
/* loaded from: classes11-dex2jar.jar:e/a/a/k/x/b.class */
public final class C6720b extends AbstractC6679g<HistoryTransportInfo, C6719a> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6720b(Context context, AbstractC13497p abstractC13497p, C20592g c20592g) {
        super(context, abstractC13497p, c20592g);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC13497p, "multiSimManager");
        l.e(c20592g, "featuresRegistry");
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: c */
    public Set<Participant> mo30501c(long j, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, Participant participant, boolean z) {
        l.e(abstractC6691j, "threadInfoCache");
        l.e(abstractC6694m, "participantCache");
        l.e(participant, "participant");
        return i.f0(new Participant[]{participant});
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: d */
    public C6719a mo30500d(ContentResolver contentResolver, AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, b bVar, b bVar2, boolean z) {
        C6719a c6719a;
        l.e(contentResolver, "resolver");
        l.e(abstractC6691j, "threadInfoCache");
        l.e(abstractC6694m, "participantCache");
        l.e(bVar, "timeTo");
        l.e(bVar2, "timeFrom");
        Cursor query = contentResolver.query(C17891a1.C17901j.m15699b(), C6721c.f22129a, "timestamp >=? AND timestamp <=? AND type IN (1, 2, 3) AND (subscription_component_name != 'com.truecaller.voip.manager.GROUP_VOIP' OR subscription_component_name IS NULL)", new String[]{String.valueOf(((e) bVar).a), String.valueOf(((e) bVar2).a)}, "timestamp DESC, _id DESC");
        if (query != null) {
            l.d(query, "it");
            c6719a = new C6719a(query, abstractC6694m);
        } else {
            c6719a = null;
        }
        return c6719a;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: f */
    public ContentValues mo30499f(AbstractC6691j abstractC6691j, HistoryTransportInfo historyTransportInfo, int i) {
        HistoryTransportInfo historyTransportInfo2 = historyTransportInfo;
        l.e(abstractC6691j, "threadInfoCache");
        l.e(historyTransportInfo2, "info");
        ContentValues m26038O0 = C10480a.m26038O0(historyTransportInfo2);
        l.d(m26038O0, "ContentProviderUtils.getTransportInfoValues(info)");
        return m26038O0;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: g */
    public boolean mo30498g(AbstractC6139g0 abstractC6139g0, C6719a c6719a) {
        l.e(abstractC6139g0, "localData");
        l.e(c6719a, "remoteData");
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: h */
    public boolean mo30497h(AbstractC6139g0 abstractC6139g0, C6719a c6719a) {
        boolean z;
        C6719a c6719a2 = c6719a;
        l.e(abstractC6139g0, "localData");
        l.e(c6719a2, "remoteData");
        C6110d0 c6110d0 = (C6110d0) abstractC6139g0;
        if (c6110d0.m31796k() != 1) {
            z = true;
            if (c6110d0.m31802X0() == c6719a2.mo30515X0()) {
                if (c6110d0.m31801Y() != c6719a2.mo30514Y()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: i */
    public boolean mo30496i(int i) {
        return false;
    }

    @Override // p193e.p194a.p195a.p244k.AbstractC6679g
    /* renamed from: k */
    public boolean mo30494k(AbstractC6691j abstractC6691j, AbstractC6694m abstractC6694m, List list, AbstractC6139g0 abstractC6139g0, C6719a c6719a, boolean z) {
        C6719a c6719a2 = c6719a;
        l.e(abstractC6691j, "threadInfoCache");
        l.e(abstractC6694m, "participantCache");
        l.e(list, "operations");
        l.e(abstractC6139g0, "localData");
        l.e(c6719a2, "remoteData");
        Message.C4209b m35024b = c6719a2.getMessage().m35024b();
        m35024b.f13421a = ((C6110d0) abstractC6139g0).m31794u();
        Message m35012a = m35024b.m35012a();
        l.d(m35012a, "remoteData\n             …\n                .build()");
        C10480a.m25877w3(list, m35012a, -1);
        return true;
    }
}
