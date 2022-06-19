package p193e.p194a.p1146q2;

import android.content.ContentResolver;
import android.database.Cursor;
import androidx.work.ListenableWorker;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.data.entity.messaging.Participant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import javax.inject.Inject;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8582g0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.q2.q0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/q0.class */
public final class C19538q0 extends AbstractC21765k {

    /* renamed from: b */
    public final String f54287b = "MessageReceivedStatsWorkAction";

    /* renamed from: c */
    public final a<AbstractC19462a> f54288c;

    /* renamed from: d */
    public final AbstractC8432l f54289d;

    /* renamed from: e */
    public final ContentResolver f54290e;

    /* renamed from: f */
    public final AbstractC6115g f54291f;

    /* renamed from: g */
    public final AbstractC6392i0 f54292g;

    /* renamed from: h */
    public final AbstractC19222c f54293h;

    @Inject
    public C19538q0(a<AbstractC19462a> aVar, AbstractC8432l abstractC8432l, ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC6392i0 abstractC6392i0, AbstractC19222c abstractC19222c) {
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC8432l, "accountManager");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19222c, "clock");
        this.f54288c = aVar;
        this.f54289d = abstractC8432l;
        this.f54290e = contentResolver;
        this.f54291f = abstractC6115g;
        this.f54292g = abstractC6392i0;
        this.f54293h = abstractC19222c;
    }

    /* JADX WARN: Type inference failed for: r0v73, types: [double] */
    /* JADX WARN: Type inference failed for: r0v76, types: [double] */
    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        StringBuilder m8692L = C22128a.m8692L("transport IN (2, 0, 4, 1, 7)", " AND ", "(status & 1)=0");
        long mo31177M0 = this.f54292g.mo31177M0();
        if (mo31177M0 > 0) {
            m8692L.append(" AND date > " + mo31177M0);
        }
        String sb = m8692L.toString();
        l.d(sb, "StringBuilder().apply(builderAction).toString()");
        Cursor query = this.f54290e.query(C8582g0.m28294z(), null, sb, null, null);
        AbstractC6149q mo31783i = query != null ? this.f54291f.mo31783i(query) : null;
        if (mo31783i != null) {
            try {
                int count = mo31783i.getCount();
                if (count >= 1) {
                    LinkedHashSet<Participant> linkedHashSet = new LinkedHashSet();
                    int i = 0;
                    int i2 = 0;
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    int i6 = 0;
                    while (mo31783i.moveToNext()) {
                        Participant participant = mo31783i.getMessage().f13382c;
                        l.d(participant, "it.message.participant");
                        linkedHashSet.add(participant);
                        if (participant.m35447m()) {
                            i2++;
                        } else {
                            int i7 = participant.f11576i;
                            if (i7 == 2) {
                                i3++;
                            } else if (i7 == 1) {
                                i4++;
                            } else if (participant.f11577j) {
                                i5++;
                            } else if (participant.m35445o()) {
                                i6++;
                            }
                        }
                    }
                    int size = linkedHashSet.size();
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(linkedHashSet, 10));
                    for (Participant participant2 : linkedHashSet) {
                        arrayList.add(Integer.valueOf(participant2.f11583p));
                    }
                    l.e(arrayList, "$this$average");
                    Iterator it = arrayList.iterator();
                    char c = 0;
                    while (it.hasNext()) {
                        c += ((Number) it.next()).intValue();
                        i++;
                        if (i < 0) {
                            i.M0();
                            throw null;
                        }
                    }
                    int i8 = i == 0 ? (char) 0 : c / i;
                    AbstractC19462a abstractC19462a = (AbstractC19462a) this.f54288c.get();
                    C19497e0 c19497e0 = new C19497e0("MessageReceived");
                    c19497e0.m13280b("inPhonebook", i2);
                    c19497e0.m13280b("inTopSpammerList", i5);
                    c19497e0.m13280b("inUserSpammerList", i4);
                    c19497e0.m13280b("inUserWhiteList", i3);
                    c19497e0.m13280b("spammerFromServer", i6);
                    c19497e0.m13280b("avgSpamScore", i8);
                    c19497e0.m13280b("numSenders", size);
                    c19497e0.m13280b("all", count);
                    abstractC19462a.mo13275a(c19497e0.m13281a());
                }
                C25225a.m4016G(mo31783i, null);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        this.f54292g.mo30983v2(this.f54293h.mo13819c());
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f54287b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f54289d.mo28580d();
    }
}
