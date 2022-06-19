package p193e.p194a.p1193r5;

import android.database.Cursor;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.clevertap.CleverTapManager;
import com.truecaller.log.AssertionUtil;
import com.truecaller.whoviewedme.ProfileViewSource;
import com.truecaller.whoviewedme.ProfileViewType;
import com.truecaller.whoviewedme.WhoViewedMeLaunchContext;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8601l0;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.s;
import s1.u.t;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.r5.j0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/j0.class */
public final class C19956j0 implements AbstractC19954i0 {

    /* renamed from: a */
    public final C20592g f56432a;

    /* renamed from: b */
    public final AbstractC19022f0 f56433b;

    /* renamed from: c */
    public final AbstractC21881d f56434c;

    /* renamed from: d */
    public final AbstractC8541a f56435d;

    /* renamed from: e */
    public final AbstractC19955j f56436e;

    /* renamed from: f */
    public final AbstractC17197v0 f56437f;

    /* renamed from: g */
    public final AbstractC19462a f56438g;

    /* renamed from: h */
    public final CleverTapManager f56439h;

    /* renamed from: i */
    public final C8601l0 f56440i;

    /* renamed from: j */
    public final AbstractC19972p0 f56441j;

    /* renamed from: k */
    public final f f56442k;

    @e(c = "com.truecaller.whoviewedme.WhoViewedMeManagerImpl$isRevealProfileViewConditionSatisfied$2", f = "WhoViewedMeManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.r5.j0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/j0$a.class */
    public static final class C19957a extends i implements p<i0, d<? super Boolean>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19957a(d dVar) {
            super(2, dVar);
            C19956j0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m11743i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19957a(dVar);
        }

        /* renamed from: k */
        public final Object m11742k(Object obj, Object obj2) {
            Boolean bool;
            int mo11751l;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19956j0 c19956j0 = C19956j0.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            C20592g c20592g = c19956j0.f56432a;
            C20592g.C20593a c20593a = c20592g.f58054x;
            s1.a.l<?>[] lVarArr = C20592g.f57695p6;
            if (!c20593a.m10941a(c20592g, lVarArr[20]).isEnabled()) {
                bool = Boolean.FALSE;
            } else {
                mo11751l = c19956j0.mo11751l(0L, null);
                C20592g c20592g2 = c19956j0.f56432a;
                bool = Boolean.valueOf(mo11751l >= ((AbstractC20597i) c20592g2.f58005q.m10941a(c20592g2, lVarArr[13])).getInt(4));
            }
            return bool;
        }

        /* renamed from: s */
        public final Object m11741s(Object obj) {
            int mo11751l;
            C25225a.m3932a3(obj);
            C20592g c20592g = C19956j0.this.f56432a;
            C20592g.C20593a c20593a = c20592g.f58054x;
            s1.a.l<?>[] lVarArr = C20592g.f57695p6;
            if (!c20593a.m10941a(c20592g, lVarArr[20]).isEnabled()) {
                return Boolean.FALSE;
            }
            mo11751l = C19956j0.this.mo11751l(0L, null);
            C20592g c20592g2 = C19956j0.this.f56432a;
            return Boolean.valueOf(mo11751l >= ((AbstractC20597i) c20592g2.f58005q.m10941a(c20592g2, lVarArr[13])).getInt(4));
        }
    }

    @Inject
    public C19956j0(C20592g c20592g, AbstractC19022f0 abstractC19022f0, AbstractC21881d abstractC21881d, AbstractC8541a abstractC8541a, AbstractC19955j abstractC19955j, AbstractC17197v0 abstractC17197v0, AbstractC19462a abstractC19462a, CleverTapManager cleverTapManager, C8601l0 c8601l0, AbstractC19972p0 abstractC19972p0, @Named("IO") f fVar) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19955j, "profileViewDao");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(cleverTapManager, "cleverTapManager");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC19972p0, "whoViewedMeSettings");
        l.e(fVar, "asyncContext");
        this.f56432a = c20592g;
        this.f56433b = abstractC19022f0;
        this.f56434c = abstractC21881d;
        this.f56435d = abstractC8541a;
        this.f56436e = abstractC19955j;
        this.f56437f = abstractC17197v0;
        this.f56438g = abstractC19462a;
        this.f56439h = cleverTapManager;
        this.f56440i = c8601l0;
        this.f56441j = abstractC19972p0;
        this.f56442k = fVar;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: a */
    public C19969o mo11762a(List<C19969o> list) {
        C19969o c19969o;
        Object next;
        l.e(list, "profileViewEvents");
        if (!m11744s()) {
            C20592g c20592g = this.f56432a;
            int i = ((AbstractC20597i) c20592g.f58005q.m10941a(c20592g, C20592g.f57695p6[13])).getInt(4);
            long mo11721F0 = this.f56441j.mo11721F0();
            Iterator<C19969o> it = list.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = -1;
                    break;
                }
                if (it.next().f56474a == mo11721F0) {
                    break;
                }
                i2++;
            }
            c19969o = (i2 == -1 || i2 >= i || mo11721F0 == 0) ? (C19969o) s1.u.i.B(list) : list.get(i2);
        } else {
            long mo11721F02 = this.f56441j.mo11721F0();
            if (mo11721F02 != 0) {
                try {
                    Iterator<T> it2 = list.iterator();
                    do {
                        if (!it2.hasNext()) {
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                        next = it2.next();
                    } while (!(((C19969o) next).f56474a == mo11721F02));
                    c19969o = (C19969o) next;
                } catch (NoSuchElementException e) {
                    AssertionUtil.reportThrowableButNeverCrash(e);
                    c19969o = (C19969o) s1.u.i.B(list);
                }
            } else {
                c19969o = (C19969o) s1.u.i.B(list);
            }
        }
        return c19969o;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: b */
    public boolean mo11761b() {
        boolean z;
        if (this.f56433b.mo14245a()) {
            C20592g c20592g = this.f56432a;
            if (c20592g.f57759J.m10941a(c20592g, C20592g.f57695p6[32]).isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: c */
    public Object mo11760c(Set<Long> set, d<? super Integer> dVar) {
        C19965n c19965n = (C19965n) this.f56436e;
        return s1.a.a.a.v0.f.d.a4(c19965n.f56463e, new C19960l(c19965n, set, null), dVar);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: d */
    public Object mo11759d(ProfileViewSource profileViewSource, long j, d<? super List<C19969o>> dVar) {
        C19965n c19965n = (C19965n) this.f56436e;
        return s1.a.a.a.v0.f.d.a4(c19965n.f56463e, new C19962m(c19965n, profileViewSource, j, null), dVar);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: e */
    public void mo11758e() {
        this.f56434c.putLong("whoViewedMeLastVisitTimestamp", System.currentTimeMillis());
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: f */
    public void mo11757f(boolean z) {
        this.f56435d.putBoolean("whoViewedMeIncognitoEnabled", z);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: g */
    public Object mo11756g(d<? super Boolean> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f56442k, new C19957a(null), dVar);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: h */
    public boolean mo11755h() {
        boolean z = true;
        if (!this.f56437f.mo16408H() || !this.f56435d.getBoolean("whoViewedMeIncognitoEnabled", true)) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: i */
    public int mo11754i() {
        int m11727a;
        m11727a = ((C19965n) this.f56436e).m11727a(mo11745r(), null);
        return m11727a;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: j */
    public boolean mo11753j() {
        boolean z;
        int m11727a;
        long j = this.f56434c.getLong("whoViewedMePromoTimestamp", 0L);
        if (!this.f56437f.mo16408H() && mo11761b() && mo11754i() > 0) {
            m11727a = ((C19965n) this.f56436e).m11727a(j, null);
            if (m11727a >= this.f56435d.getLong("featureWhoViewedMeShowNotificationAfterXLookups", 5L) || this.f56440i.m28260a(j, this.f56435d.getLong("featureWhoViewedMeShowNotificationAfterXDays", 5L), TimeUnit.DAYS)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: k */
    public void mo11752k(C19969o c19969o) {
        l.e(c19969o, "profileViewEvent");
        if (!m11744s()) {
            this.f56441j.mo11717z2(c19969o.f56474a);
            AbstractC19972p0 abstractC19972p0 = this.f56441j;
            b bVar = new b();
            l.d(bVar, "DateTime.now()");
            abstractC19972p0.mo11720d2(((w3.b.a.e0.e) bVar).a);
        }
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: l */
    public int mo11751l(long j, ProfileViewSource profileViewSource) {
        return ((C19965n) this.f56436e).m11727a(j, profileViewSource);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: m */
    public boolean mo11750m() {
        int m11727a;
        long j = this.f56434c.getLong("whoViewedMeNotificationTimestamp", 0L);
        m11727a = ((C19965n) this.f56436e).m11727a(j, null);
        return ((long) m11727a) >= this.f56435d.getLong("featureWhoViewedMeShowNotificationAfterXLookups", 5L) || this.f56440i.m28260a(j, this.f56435d.getLong("featureWhoViewedMeShowNotificationAfterXDays", 5L), TimeUnit.DAYS);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v45 */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r0v50 */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r23v0 */
    /* JADX WARN: Type inference failed for: r23v1 */
    /* JADX WARN: Type inference failed for: r23v2 */
    /* JADX WARN: Type inference failed for: r25v0 */
    /* JADX WARN: Type inference failed for: r25v1 */
    /* JADX WARN: Type inference failed for: r25v2 */
    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: n */
    public boolean mo11749n(String str, int i, boolean z, boolean z2) {
        l.e(str, "tcId");
        boolean mo11761b = mo11761b();
        ?? r11 = i != 21;
        ?? r16 = str.length() > 0;
        ?? r17 = this.f56435d.getBoolean("whoViewedMePBContactEnabled", false) || !z2;
        boolean mo11755h = mo11755h();
        long currentTimeMillis = System.currentTimeMillis();
        C19965n c19965n = (C19965n) this.f56436e;
        Objects.requireNonNull(c19965n);
        l.e(str, "tcId");
        Cursor query = c19965n.f56461c.query(c19965n.f56459a, new String[]{"max(timestamp) as timestamp"}, "tc_id = ? AND type = ?", new String[]{str, ProfileViewType.OUTGOING.name()}, null);
        try {
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList.add(Long.valueOf(C19291g.m13632E0(query, "timestamp")));
                }
            }
            C25225a.m4016G(query, null);
            Long l = (Long) s1.u.i.D(arrayList);
            return mo11761b && r11 == true && r16 == true && z && r17 == true && (mo11755h ^ true) && (((currentTimeMillis - ((l != null ? l.longValue() : false) == true ? 1L : 0L)) > TimeUnit.DAYS.toMillis(this.f56435d.getLong("featureWhoViewedMeNewViewIntervalInDays", 5L)) ? 1 : ((currentTimeMillis - ((l != null ? l.longValue() : false) == true ? 1L : 0L)) == TimeUnit.DAYS.toMillis(this.f56435d.getLong("featureWhoViewedMeNewViewIntervalInDays", 5L)) ? 0 : -1)) > 0) == true;
        } finally {
            try {
                throw th;
            } catch (Throwable th) {
            }
        }
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: o */
    public boolean mo11748o() {
        return this.f56435d.getBoolean("whoViewedMeACSEnabled", false);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: p */
    public void mo11747p(WhoViewedMeLaunchContext whoViewedMeLaunchContext) {
        String str;
        Map<String, ? extends Object> map;
        l.e(whoViewedMeLaunchContext, "launchContext");
        switch (whoViewedMeLaunchContext.ordinal()) {
            case 0:
                str = "navigationDrawer";
                break;
            case 1:
                str = "deepLink";
                break;
            case 2:
                str = RemoteMessageConst.NOTIFICATION;
                break;
            case 3:
                str = "homeTabPromo";
                break;
            case 4:
                str = "premiumUserTab";
                break;
            case 5:
                str = "weeklySummaryNotification";
                break;
            case 6:
                str = "unknown";
                break;
            default:
                throw new s1.i();
        }
        boolean mo16408H = this.f56437f.mo16408H();
        l.e("whoViewedMe", "viewId");
        l.e(str, AnalyticsConstants.CONTEXT);
        C19597a c19597a = new C19597a("whoViewedMe", str, C25225a.m3938Z1(new k("PremiumStatus", mo16408H ? "Premium" : "Free")));
        n.B0(c19597a, this.f56438g);
        Map<String, Object> map2 = c19597a.f54468c;
        if (map2 != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(C25225a.m3942Y1(map2.size()));
            Iterator<T> it = map2.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), entry.getValue().toString());
            }
            Map<String, ? extends Object> b1 = s1.u.i.b1(linkedHashMap);
            b1.put("ViewId", c19597a.f54466a);
            String str2 = c19597a.f54467b;
            map = b1;
            if (str2 != null) {
                b1.put("Context", str2);
                map = b1;
            }
        } else {
            map = null;
        }
        if (map == null) {
            map = t.a;
        }
        this.f56439h.push("ViewVisited", map);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: q */
    public void mo11746q() {
        C19965n c19965n = (C19965n) this.f56436e;
        Objects.requireNonNull(c19965n);
        s1.a.a.a.v0.f.d.w2(h1.a, (f) null, (j0) null, new C19958k(c19965n, null), 3, (Object) null);
        this.f56434c.remove("whoViewedMeNotificationTimestamp");
        this.f56435d.remove("featureWhoViewedMeShowNotificationAfterXLookups");
        this.f56435d.remove("featureWhoViewedMeShowNotificationAfterXDays");
    }

    @Override // p193e.p194a.p1193r5.AbstractC19954i0
    /* renamed from: r */
    public long mo11745r() {
        AbstractC21881d abstractC21881d = this.f56434c;
        b y = new b().y(1);
        l.d(y, "DateTime.now().minusDays(1)");
        return abstractC21881d.getLong("whoViewedMeLastVisitTimestamp", ((w3.b.a.e0.e) y).a);
    }

    /* renamed from: s */
    public final boolean m11744s() {
        boolean z;
        long mo11719m2 = this.f56441j.mo11719m2();
        if (mo11719m2 != 0) {
            C20592g c20592g = this.f56432a;
            b D = new b(mo11719m2).D(((AbstractC20597i) c20592g.f58012r.m10941a(c20592g, C20592g.f57695p6[14])).getInt(3));
            l.d(D, "DateTime(lastRevealTime)…sDays(cacheAllowedInDays)");
            z = D.g();
        } else {
            z = false;
        }
        return z;
    }
}
