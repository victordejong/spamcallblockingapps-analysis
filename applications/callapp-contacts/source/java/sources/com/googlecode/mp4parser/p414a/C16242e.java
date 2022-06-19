package com.googlecode.mp4parser.p414a;

import com.googlecode.mp4parser.C16246b;
import com.googlecode.mp4parser.C16292d;
import com.googlecode.mp4parser.C16297h;
import com.googlecode.mp4parser.p420b.p422b.p424b.AbstractC16270b;
import com.googlecode.mp4parser.p420b.p422b.p424b.C16274e;
import com.googlecode.mp4parser.p420b.p422b.p424b.C16275f;
import com.googlecode.mp4parser.p425c.C16282b;
import com.googlecode.mp4parser.p425c.C16290i;
import com.googlecode.mp4parser.p425c.C16291j;
import com.p102b.p103a.C3514d;
import com.p102b.p103a.p104a.AbstractC3476b;
import com.p102b.p103a.p104a.AbstractC3487e;
import com.p102b.p103a.p104a.C3466ac;
import com.p102b.p103a.p104a.C3470ae;
import com.p102b.p103a.p104a.C3471af;
import com.p102b.p103a.p104a.C3473ag;
import com.p102b.p103a.p104a.C3474ah;
import com.p102b.p103a.p104a.C3485d;
import com.p102b.p103a.p104a.C3492j;
import com.p102b.p103a.p104a.C3496m;
import com.p102b.p103a.p104a.C3499p;
import com.p102b.p103a.p104a.C3502s;
import com.p102b.p103a.p104a.C3504u;
import com.p102b.p103a.p104a.C3506v;
import com.p102b.p103a.p104a.C3508x;
import com.p102b.p103a.p104a.p105a.C3456a;
import com.p102b.p103a.p104a.p105a.C3457b;
import com.p102b.p103a.p104a.p105a.C3458c;
import com.p102b.p103a.p104a.p105a.C3459d;
import com.p102b.p103a.p104a.p105a.C3460e;
import com.p102b.p103a.p104a.p105a.C3461f;
import com.p102b.p103a.p104a.p105a.C3462g;
import com.p102b.p103a.p104a.p106b.C3477a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.http2.Settings;
import org.mp4parser.aspectj.lang.AbstractC20997a;
import org.mp4parser.aspectj.p593a.p595b.C20987b;
/* renamed from: com.googlecode.mp4parser.a.e */
/* loaded from: classes4-dex2jar.jar:com/googlecode/mp4parser/a/e.class */
public class C16242e extends AbstractC16222a {

    /* renamed from: g */
    static final /* synthetic */ boolean f57305g = true;

    /* renamed from: d */
    private List<AbstractC16243f> f57306d;

    /* renamed from: e */
    C3473ag f57307e;

    /* renamed from: f */
    C3514d[] f57308f;

    /* renamed from: h */
    private C3506v f57309h;

    /* renamed from: i */
    private long[] f57310i;

    /* renamed from: j */
    private List<C3485d.C3486a> f57311j;

    /* renamed from: k */
    private long[] f57312k;

    /* renamed from: l */
    private List<C3504u.C3505a> f57313l;

    /* renamed from: m */
    private C16245h f57314m = new C16245h();

    /* renamed from: n */
    private String f57315n;

    /* renamed from: o */
    private C3466ac f57316o;

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v212, types: [long] */
    /* JADX WARN: Type inference failed for: r0v310, types: [long] */
    public C16242e(String str, C3473ag c3473ag, C3514d... c3514dArr) {
        super(str);
        C3458c c3458c;
        C3496m c3496m = null;
        this.f57312k = null;
        this.f57316o = null;
        this.f57307e = c3473ag;
        char m37905a = c3473ag.m37908a().m37905a();
        this.f57306d = new C3477a(c3473ag, c3514dArr);
        C3508x m37878a = c3473ag.m37906d().m37885a().m37878a();
        Iterator<AbstractC3476b> it2 = c3473ag.m37906d().mo7491b().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            AbstractC3476b next = it2.next();
            if (next instanceof C3496m) {
                c3496m = (C3496m) next;
                break;
            }
        }
        this.f57315n = c3496m.m37888a();
        ArrayList arrayList = new ArrayList();
        this.f57311j = new ArrayList();
        this.f57313l = new ArrayList();
        C3471af m37866f = m37878a.m37866f();
        AbstractC20997a m163a = C20987b.m163a(C3471af.f13147d, m37866f, m37866f);
        C16297h.m7484a();
        C16297h.m7483a(m163a);
        arrayList.addAll(m37866f.f13150a);
        if (m37878a.m37864h() != null) {
            List<C3485d.C3486a> list = this.f57311j;
            C3485d m37864h = m37878a.m37864h();
            AbstractC20997a m163a2 = C20987b.m163a(C3485d.f13235c, m37864h, m37864h);
            C16297h.m7484a();
            C16297h.m7483a(m163a2);
            list.addAll(m37864h.f13237a);
        }
        if (m37878a.m37863i() != null) {
            List<C3504u.C3505a> list2 = this.f57313l;
            C3504u m37863i = m37878a.m37863i();
            AbstractC20997a m163a3 = C20987b.m163a(C3504u.f13344b, m37863i, m37863i);
            C16297h.m7484a();
            C16297h.m7483a(m163a3);
            list2.addAll(m37863i.f13347a);
        }
        if (m37878a.m37865g() != null) {
            C3470ae m37865g = m37878a.m37865g();
            AbstractC20997a m163a4 = C20987b.m163a(C3470ae.f13141b, m37865g, m37865g);
            C16297h.m7484a();
            C16297h.m7483a(m163a4);
            this.f57312k = m37865g.f13144a;
        }
        String str2 = "subs";
        this.f57316o = (C3466ac) C16291j.m7500a((C16246b) m37878a, "subs");
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(((AbstractC3476b) c3473ag.getParent()).getParent().mo7494a(C3457b.class));
        for (C3514d c3514d : c3514dArr) {
            arrayList2.addAll(c3514d.mo7494a(C3457b.class));
        }
        this.f57309h = m37878a.m37870a();
        List mo7494a = c3473ag.getParent().mo7494a(C3456a.class);
        if (mo7494a.size() > 0) {
            ArrayList arrayList3 = arrayList2;
            Iterator it3 = mo7494a.iterator();
            while (it3.hasNext()) {
                Iterator it4 = ((C3456a) it3.next()).mo7494a(C3459d.class).iterator();
                while (it4.hasNext()) {
                    C3459d c3459d = (C3459d) it4.next();
                    if (c3459d.m37933a() == m37905a) {
                        if (C16291j.m7502a(((AbstractC3476b) c3473ag.getParent()).getParent(), "/moof/traf/subs").size() > 0) {
                            this.f57316o = new C3466ac();
                        }
                        Iterator it5 = arrayList3.iterator();
                        char c = 1;
                        while (it5.hasNext()) {
                            Iterator it6 = ((C3457b) it5.next()).mo7494a(C3460e.class).iterator();
                            while (it6.hasNext()) {
                                C3460e c3460e = (C3460e) it6.next();
                                if (c3460e.m37931a().m37929b() == m37905a) {
                                    this.f57239c = m7577a(m37878a.mo7494a(C16274e.class), C16291j.m7502a((AbstractC3487e) c3460e, "sgpd"), C16291j.m7502a((AbstractC3487e) c3460e, "sbgp"), this.f57239c, c - 1);
                                    C3466ac c3466ac = (C3466ac) C16291j.m7500a((C16246b) c3460e, str2);
                                    Iterator it7 = it3;
                                    Iterator it8 = it4;
                                    char c2 = m37905a;
                                    if (c3466ac != null) {
                                        char c3 = (c - 0) - 1;
                                        for (C3466ac.C3467a c3467a : c3466ac.m37914a()) {
                                            C3466ac.C3467a c3467a2 = new C3466ac.C3467a();
                                            c3467a2.f13135b.addAll(c3467a.f13135b);
                                            if (c3 != 0) {
                                                c3467a2.f13134a = c3 + c3467a.f13134a;
                                                c3 = 0;
                                            } else {
                                                c3467a2.f13134a = c3467a.f13134a;
                                            }
                                            this.f57316o.m37914a().add(c3467a2);
                                            c3 = c3;
                                        }
                                        it7 = it3;
                                        it8 = it4;
                                        c2 = m37905a;
                                    }
                                    Iterator it9 = c3460e.mo7494a(C3462g.class).iterator();
                                    Iterator it10 = it6;
                                    Iterator it11 = it5;
                                    ArrayList arrayList4 = arrayList3;
                                    String str3 = str2;
                                    c = c;
                                    while (it9.hasNext()) {
                                        C3462g c3462g = (C3462g) it9.next();
                                        C3461f m37931a = ((C3460e) c3462g.getParent()).m37931a();
                                        boolean z = true;
                                        Iterator it12 = it10;
                                        Iterator it13 = it11;
                                        ArrayList arrayList5 = arrayList4;
                                        Iterator it14 = it9;
                                        char c4 = c;
                                        for (C3462g.C3463a c3463a : c3462g.m37924a()) {
                                            if (!c3462g.m37920e()) {
                                                AbstractC20997a m163a5 = C20987b.m163a(C3461f.f13071b, m37931a, m37931a);
                                                C16297h.m7484a();
                                                C16297h.m7483a(m163a5);
                                                if ((m37931a.m7518i() & 8) != 0) {
                                                    arrayList.add(new C3471af.C3472a(1L, m37931a.m37927d()));
                                                } else {
                                                    AbstractC20997a m163a6 = C20987b.m163a(C3459d.f13051d, c3459d, c3459d);
                                                    C16297h.m7484a();
                                                    C16297h.m7483a(m163a6);
                                                    arrayList.add(new C3471af.C3472a(1L, c3459d.f13062a));
                                                }
                                            } else if (arrayList.size() == 0 || ((C3471af.C3472a) arrayList.get(arrayList.size() - 1)).f13152b != c3463a.f13120a) {
                                                arrayList.add(new C3471af.C3472a(1L, c3463a.f13120a));
                                            } else {
                                                ((C3471af.C3472a) arrayList.get(arrayList.size() - 1)).f13151a++;
                                            }
                                            if (c3462g.m37918g()) {
                                                if (this.f57311j.size() != 0) {
                                                    List<C3485d.C3486a> list3 = this.f57311j;
                                                    if (list3.get(list3.size() - 1).f13239b == c3463a.f13123d) {
                                                        List<C3485d.C3486a> list4 = this.f57311j;
                                                        list4.get(list4.size() - 1).f13238a++;
                                                    }
                                                }
                                                this.f57311j.add(new C3485d.C3486a(1, C16282b.m7517a(c3463a.f13123d)));
                                            }
                                            if (c3462g.m37919f()) {
                                                c3458c = c3463a.f13122c;
                                            } else {
                                                if (z) {
                                                    AbstractC20997a m163a7 = C20987b.m163a(C3462g.f13097c, c3462g, c3462g);
                                                    C16297h.m7484a();
                                                    C16297h.m7483a(m163a7);
                                                    if ((c3462g.m7518i() & 4) == 4) {
                                                        AbstractC20997a m163a8 = C20987b.m163a(C3462g.f13099e, c3462g, c3462g);
                                                        C16297h.m7484a();
                                                        C16297h.m7483a(m163a8);
                                                        c3458c = c3462g.f13118b;
                                                    }
                                                }
                                                AbstractC20997a m163a9 = C20987b.m163a(C3461f.f13073d, m37931a, m37931a);
                                                C16297h.m7484a();
                                                C16297h.m7483a(m163a9);
                                                if ((m37931a.m7518i() & 32) != 0) {
                                                    AbstractC20997a m163a10 = C20987b.m163a(C3461f.f13074e, m37931a, m37931a);
                                                    C16297h.m7484a();
                                                    C16297h.m7483a(m163a10);
                                                    c3458c = m37931a.f13089a;
                                                } else {
                                                    AbstractC20997a m163a11 = C20987b.m163a(C3459d.f13053f, c3459d, c3459d);
                                                    C16297h.m7484a();
                                                    C16297h.m7483a(m163a11);
                                                    c3458c = c3459d.f13064c;
                                                }
                                            }
                                            if (c3458c != null && !c3458c.f13043a) {
                                                this.f57312k = C16290i.m7506a(this.f57312k, c4 == 1 ? 1 : 0);
                                            }
                                            z = false;
                                            c4++;
                                        }
                                        it9 = it14;
                                        arrayList4 = arrayList5;
                                        it11 = it13;
                                        it10 = it12;
                                        c = c4;
                                    }
                                    it3 = it7;
                                    it4 = it8;
                                    m37905a = c2;
                                    str2 = str3;
                                    arrayList3 = arrayList4;
                                    it5 = it11;
                                    it6 = it10;
                                }
                            }
                        }
                    }
                }
            }
        } else {
            this.f57239c = m7577a(m37878a.mo7494a(C16274e.class), null, m37878a.mo7494a(C16275f.class), this.f57239c, 0L);
        }
        this.f57310i = C3471af.m37909a(arrayList);
        C3499p m37884c = c3473ag.m37906d().m37884c();
        C3474ah m37908a = c3473ag.m37908a();
        this.f57314m.f57325i = m37908a.m37905a();
        this.f57314m.f57320d = m37884c.m37883a();
        this.f57314m.f57317a = m37884c.m37880d();
        this.f57314m.f57319c = m37884c.m37882b();
        this.f57314m.f57318b = m37884c.m37881c();
        this.f57314m.f57323g = m37908a.m37900e();
        this.f57314m.f57322f = m37908a.m37901d();
        this.f57314m.f57327k = m37908a.m37903b();
        C16245h c16245h = this.f57314m;
        AbstractC20997a m163a12 = C20987b.m163a(C3474ah.f13169j, m37908a, m37908a);
        C16297h.m7484a();
        C16297h.m7483a(m163a12);
        c16245h.f57321e = m37908a.f13191g;
        this.f57314m.f57324h = m37908a.m37902c();
        C3492j c3492j = (C3492j) C16291j.m7500a((C16246b) c3473ag, "edts/elst");
        C3502s c3502s = (C3502s) C16291j.m7500a((C16246b) c3473ag, "../mvhd");
        if (c3492j != null) {
            AbstractC20997a m163a13 = C20987b.m163a(C3492j.f13243b, c3492j, c3492j);
            C16297h.m7484a();
            C16297h.m7483a(m163a13);
            for (C3492j.C3493a c3493a : c3492j.f13246a) {
                this.f57238b.add(new C16232c(c3493a.f13249c, m37884c.m37881c(), c3493a.f13250d, c3493a.f13248b / c3502s.m37876a()));
            }
        }
    }

    /* renamed from: a */
    private static Map<AbstractC16270b, long[]> m7577a(List<C16274e> list, List<C16274e> list2, List<C16275f> list3, Map<AbstractC16270b, long[]> map, long j) {
        for (C16275f c16275f : list3) {
            Iterator<C16275f.C16276a> it2 = c16275f.m7526b().iterator();
            int i = 0;
            while (true) {
                int i2 = i;
                if (!it2.hasNext()) {
                    break;
                }
                C16275f.C16276a next = it2.next();
                if (next.f57518b > 0) {
                    AbstractC16270b abstractC16270b = null;
                    if (next.f57518b > 65535) {
                        for (C16274e c16274e : list2) {
                            if (c16274e.m7530a().equals(c16275f.m7527a())) {
                                abstractC16270b = c16274e.m7529b().get((next.f57518b - 1) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                            }
                        }
                    } else {
                        abstractC16270b = null;
                        for (C16274e c16274e2 : list) {
                            if (c16274e2.m7530a().equals(c16275f.m7527a())) {
                                abstractC16270b = c16274e2.m7529b().get(next.f57518b - 1);
                            }
                        }
                    }
                    if (!f57305g && abstractC16270b == null) {
                        throw new AssertionError();
                    }
                    long[] jArr = map.get(abstractC16270b);
                    long[] jArr2 = jArr;
                    if (jArr == null) {
                        jArr2 = new long[0];
                    }
                    long[] jArr3 = new long[C16282b.m7517a(next.f57517a) + jArr2.length];
                    System.arraycopy(jArr2, 0, jArr3, 0, jArr2.length);
                    int i3 = 0;
                    while (true) {
                        long j2 = i3;
                        if (j2 >= next.f57517a) {
                            break;
                        }
                        jArr3[jArr2.length + i3] = j + i2 + j2;
                        i3++;
                    }
                    map.put(abstractC16270b, jArr3);
                }
                i = (int) (i2 + next.f57517a);
            }
        }
        return map;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: a */
    public final List<C3485d.C3486a> mo7574a() {
        return this.f57311j;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: b */
    public final long[] mo7573b() {
        long[] jArr = this.f57312k;
        if (jArr == null || jArr.length == this.f57306d.size()) {
            return null;
        }
        return this.f57312k;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: c */
    public final List<C3504u.C3505a> mo7572c() {
        return this.f57313l;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        AbstractC3487e parent = this.f57307e.getParent();
        if (parent instanceof C16292d) {
            ((C16292d) parent).close();
        }
        C3514d[] c3514dArr = this.f57308f;
        if (c3514dArr != null) {
            for (C3514d c3514d : c3514dArr) {
                c3514d.close();
            }
        }
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16222a, com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: d */
    public final C3466ac mo7571d() {
        return this.f57316o;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: j */
    public final List<AbstractC16243f> mo7566j() {
        return this.f57306d;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: k */
    public final long[] mo7565k() {
        long[] jArr;
        synchronized (this) {
            jArr = this.f57310i;
        }
        return jArr;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: l */
    public final C3506v mo7564l() {
        return this.f57309h;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: m */
    public final C16245h mo7563m() {
        return this.f57314m;
    }

    @Override // com.googlecode.mp4parser.p414a.AbstractC16244g
    /* renamed from: n */
    public final String mo7562n() {
        return this.f57315n;
    }
}
