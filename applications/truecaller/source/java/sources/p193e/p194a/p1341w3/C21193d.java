package p193e.p194a.p1341w3;

import com.tenor.android.core.constant.StringConstant;
import com.truecaller.callhistory.data.FilterType;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.log.AssertionUtil;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1041l0.AbstractC17348c;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1365y.p1382c.AbstractC21642i;
import p193e.p194a.p1365y.p1389g.C21743a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8572b0;
import s1.f0.q;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.w3.d */
/* loaded from: classes9-dex2jar.jar:e/a/w3/d.class */
public final class C21193d implements AbstractC21192c {

    /* renamed from: a */
    public final String f59378a;

    /* renamed from: b */
    public final AbstractC21642i f59379b;

    /* renamed from: c */
    public final a<AbstractC17348c> f59380c;

    /* renamed from: d */
    public final a<AbstractC8541a> f59381d;

    /* renamed from: e */
    public final Provider<AbstractC8438a> f59382e;

    @Inject
    public C21193d(String str, AbstractC21642i abstractC21642i, a<AbstractC17348c> aVar, a<AbstractC8541a> aVar2, Provider<AbstractC8438a> provider) {
        l.e(abstractC21642i, "flashPoint");
        l.e(aVar, "callHistoryManager");
        l.e(aVar2, "coreSettings");
        l.e(provider, "accountSettings");
        this.f59378a = str;
        this.f59379b = abstractC21642i;
        this.f59380c = aVar;
        this.f59381d = aVar2;
        this.f59382e = provider;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p1341w3.AbstractC21192c
    /* renamed from: a */
    public List<C21743a> mo10151a(int i) {
        AssertionUtil.notOnMainThread("Please run off the main thread!");
        s sVar = s.a;
        List<HistoryEvent> mo11831c = ((AbstractC17348c) this.f59380c.get()).mo16238j(FilterType.NONE, 20, null).mo11831c();
        s<HistoryEvent> sVar2 = mo11831c;
        if (mo11831c == null) {
            sVar2 = sVar;
        }
        ArrayList arrayList = new ArrayList(C25225a.m4004J(sVar2, 10));
        for (HistoryEvent historyEvent : sVar2) {
            l.d(historyEvent, "it");
            arrayList.add(historyEvent.f11539f);
        }
        List<C21743a> m10150b = m10150b(arrayList);
        AbstractC17373b mo11831c2 = ((AbstractC17348c) this.f59380c.get()).mo16226v(100).mo11831c();
        s sVar3 = null;
        if (mo11831c2 != null) {
            try {
                s arrayList2 = new ArrayList();
                while (mo11831c2.moveToNext()) {
                    HistoryEvent mo16159n = mo11831c2.mo16159n();
                    arrayList2.add(mo16159n != null ? mo16159n.f11539f : null);
                }
                C25225a.m4016G(mo11831c2, null);
                sVar3 = arrayList2;
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        if (sVar3 == null) {
            sVar3 = sVar;
        }
        List l0 = i.l0(i.K0(m10150b, 2), i.K0(m10150b(sVar3), i));
        HashSet hashSet = new HashSet();
        ArrayList arrayList3 = new ArrayList();
        Iterator it = ((ArrayList) l0).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (hashSet.add(((C21743a) next).f60558b)) {
                arrayList3.add(next);
            }
        }
        List<HistoryEvent> K0 = i.K0(arrayList3, i);
        if (K0.isEmpty()) {
            String string = ((AbstractC8438a) this.f59382e.get()).getString("profileNumber");
            if (string != null) {
                l.d(string, "accountSettings.get().ge…ER) ?: return emptyList()");
                String m28372g = C8572b0.m28372g(string, this.f59378a);
                l.d(m28372g, "PhoneNumberNormalizer.no…alizedNumber, countryIso)");
                if (q.j(m28372g) != null) {
                    Object obj = this.f59381d.get();
                    l.d(obj, "coreSettings.get()");
                    sVar = C25225a.m3962T1(new C21743a(C19231g0.m13813D(StringConstant.SPACE, C17422k.m16109I((AbstractC8541a) obj)), m28372g, ((AbstractC8541a) this.f59381d.get()).getString("profileAvatar")));
                }
            }
            return sVar;
        }
        sVar = K0;
        return sVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00ec A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x005c A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p193e.p194a.p1365y.p1389g.C21743a> m10150b(java.util.Collection<? extends com.truecaller.data.entity.Contact> r8) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1341w3.C21193d.m10150b(java.util.Collection):java.util.List");
    }
}
