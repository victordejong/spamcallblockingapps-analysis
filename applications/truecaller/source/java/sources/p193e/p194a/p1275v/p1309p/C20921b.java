package p193e.p194a.p1275v.p1309p;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1187r2.AbstractC19854f;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.v.p.b */
/* loaded from: classes8-dex2jar.jar:e/a/v/p/b.class */
public final class C20921b implements AbstractC20920a {

    /* renamed from: a */
    public final a<AbstractC19854f<AbstractC17348c>> f58855a;

    @Inject
    public C20921b(a<AbstractC19854f<AbstractC17348c>> aVar) {
        l.e(aVar, "callHistoryManager");
        this.f58855a = aVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p1275v.p1309p.AbstractC20920a
    /* renamed from: a */
    public List<HistoryEvent> mo10520a(String str, Integer num) {
        l.e(str, "number");
        AbstractC17373b mo11831c = ((AbstractC17348c) ((AbstractC19854f) this.f58855a.get()).mo11854a()).mo16247a(str, num).mo11831c();
        try {
            ArrayList arrayList = new ArrayList();
            if (mo11831c != null) {
                while (mo11831c.moveToNext()) {
                    arrayList.add(mo11831c.mo16159n());
                }
            }
            C25225a.m4016G(mo11831c, null);
            return i.z(arrayList);
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p1275v.p1309p.AbstractC20920a
    /* renamed from: b */
    public List<HistoryEvent> mo10519b(Contact contact, Integer num) {
        l.e(contact, AnalyticsConstants.CONTACT);
        AbstractC17373b mo11831c = ((AbstractC17348c) ((AbstractC19854f) this.f58855a.get()).mo11854a()).mo16246b(contact, num).mo11831c();
        try {
            ArrayList arrayList = new ArrayList();
            if (mo11831c != null) {
                while (mo11831c.moveToNext()) {
                    arrayList.add(mo11831c.mo16159n());
                }
            }
            C25225a.m4016G(mo11831c, null);
            return i.z(arrayList);
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20920a
    /* renamed from: d */
    public HistoryEvent mo10518d(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return ((AbstractC17348c) ((AbstractC19854f) this.f58855a.get()).mo11854a()).mo16248D(contact).mo11831c();
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20920a
    /* renamed from: f */
    public void mo10517f(HistoryEvent historyEvent, Contact contact) {
        l.e(historyEvent, "historyEvent");
        l.e(contact, AnalyticsConstants.CONTACT);
        ((AbstractC17348c) ((AbstractC19854f) this.f58855a.get()).mo11854a()).mo16242f(historyEvent, contact).mo11828g();
    }

    @Override // p193e.p194a.p1275v.p1309p.AbstractC20920a
    /* renamed from: n */
    public void mo10516n(HistoryEvent historyEvent) {
        l.e(historyEvent, "historyEvent");
        ((AbstractC17348c) ((AbstractC19854f) this.f58855a.get()).mo11854a()).mo16234n(historyEvent);
    }
}
