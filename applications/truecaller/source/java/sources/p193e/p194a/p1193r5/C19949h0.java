package p193e.p194a.p1193r5;

import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Address;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.whoviewedme.WhoViewedMeLaunchContext;
import com.truecaller.whoviewedme.WhoViewedMePresenterView;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1013c.p1014a.C16727r;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p613c0.C10912h;
import p193e.p194a.p804h.p806b.AbstractC14619r;
import q3.a.i0;
import q3.a.j0;
import s1.k;
import s1.u.s;
import s1.u.v;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.r5.h0 */
/* loaded from: classes8-dex2jar.jar:e/a/r5/h0.class */
public final class C19949h0 extends AbstractC20574a<WhoViewedMePresenterView> implements AbstractC19945f0 {

    /* renamed from: d */
    public List<C19969o> f56410d = s.a;

    /* renamed from: e */
    public final Set<Long> f56411e = new LinkedHashSet();

    /* renamed from: f */
    public WhoViewedMePresenterView.ViewType f56412f = WhoViewedMePresenterView.ViewType.NONE;

    /* renamed from: g */
    public k<String, Integer> f56413g;

    /* renamed from: h */
    public final AbstractC17197v0 f56414h;

    /* renamed from: i */
    public final AbstractC19954i0 f56415i;

    /* renamed from: j */
    public final AbstractC14619r f56416j;

    /* renamed from: k */
    public final AbstractC19223c0 f56417k;

    /* renamed from: l */
    public final AbstractC19972p0 f56418l;

    /* renamed from: m */
    public final C16727r f56419m;

    /* renamed from: n */
    public final C19966n0 f56420n;

    /* renamed from: o */
    public final f f56421o;

    @e(c = "com.truecaller.whoviewedme.WhoViewedMeListPresenterImpl", f = "WhoViewedMeListPresenter.kt", l = {189, 244}, m = "refreshView")
    /* renamed from: e.a.r5.h0$a */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/h0$a.class */
    public static final class C19950a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f56422d;

        /* renamed from: e */
        public int f56423e;

        /* renamed from: g */
        public Object f56425g;

        /* renamed from: h */
        public int f56426h;

        /* renamed from: i */
        public boolean f56427i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19950a(d dVar) {
            super(dVar);
            C19949h0.this = r4;
        }

        /* renamed from: s */
        public final Object m11771s(Object obj) {
            this.f56422d = obj;
            this.f56423e |= Integer.MIN_VALUE;
            return C19949h0.this.m11784Ij(this);
        }
    }

    @e(c = "com.truecaller.whoviewedme.WhoViewedMeListPresenterImpl$reloadEvents$1", f = "WhoViewedMeListPresenter.kt", l = {147, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED}, m = "invokeSuspend")
    /* renamed from: e.a.r5.h0$b */
    /* loaded from: classes8-dex2jar.jar:e/a/r5/h0$b.class */
    public static final class C19951b extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public Object f56428e;

        /* renamed from: f */
        public int f56429f;

        /* renamed from: e.a.r5.h0$b$a */
        /* loaded from: classes8-dex2jar.jar:e/a/r5/h0$b$a.class */
        public static final class C19952a implements v<String, String> {

            /* renamed from: a */
            public final /* synthetic */ Iterable f56431a;

            public C19952a(Iterable iterable) {
                this.f56431a = iterable;
            }

            /* renamed from: a */
            public String m11767a(String str) {
                return str;
            }

            /* renamed from: b */
            public Iterator<String> m11766b() {
                return this.f56431a.iterator();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19951b(d dVar) {
            super(2, dVar);
            C19949h0.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m11770i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19951b(dVar);
        }

        /* renamed from: k */
        public final Object m11769k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C19951b(dVar).m11768s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m11768s(Object obj) {
            C19949h0 c19949h0;
            Object obj2;
            s1.s sVar = s1.s.a;
            a aVar = a.a;
            int i = this.f56429f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                c19949h0 = C19949h0.this;
                AbstractC19954i0 abstractC19954i0 = c19949h0.f56415i;
                this.f56428e = c19949h0;
                this.f56429f = 1;
                Object m13633E = C19291g.m13633E(abstractC19954i0, null, 0L, this, 3, null);
                obj = m13633E;
                if (m13633E == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                C25225a.m3932a3(obj);
                return sVar;
            } else {
                c19949h0 = (C19949h0) this.f56428e;
                C25225a.m3932a3(obj);
            }
            c19949h0.f56410d = (List) obj;
            if (!C19949h0.this.f56414h.mo16408H()) {
                C19949h0 c19949h02 = C19949h0.this;
                List<C19969o> list = c19949h02.f56410d;
                ArrayList arrayList = new ArrayList();
                for (C19969o c19969o : list) {
                    Address m35500r = c19969o.f56478e.m35500r();
                    String m13496y0 = m35500r != null ? C19291g.m13496y0(m35500r) : null;
                    if (m13496y0 != null) {
                        arrayList.add(m13496y0);
                    }
                }
                Iterator it = C25225a.m3905g0(new C19952a(arrayList)).entrySet().iterator();
                if (!it.hasNext()) {
                    obj2 = null;
                } else {
                    obj2 = it.next();
                    if (it.hasNext()) {
                        Integer num = new Integer(((Number) ((Map.Entry) obj2).getValue()).intValue());
                        Object obj3 = obj2;
                        do {
                            Object next = it.next();
                            Integer num2 = new Integer(((Number) ((Map.Entry) next).getValue()).intValue());
                            obj2 = obj3;
                            Integer num3 = num;
                            if (num.compareTo(num2) < 0) {
                                obj2 = next;
                                num3 = num2;
                            }
                            obj3 = obj2;
                            num = num3;
                        } while (it.hasNext());
                    }
                }
                Map.Entry entry = (Map.Entry) obj2;
                c19949h02.f56413g = entry != null ? new k<>(entry.getKey(), entry.getValue()) : null;
            }
            C19949h0 c19949h03 = C19949h0.this;
            this.f56428e = null;
            this.f56429f = 2;
            WhoViewedMePresenterView whoViewedMePresenterView = (WhoViewedMePresenterView) c19949h03.f57683a;
            if (whoViewedMePresenterView != null) {
                whoViewedMePresenterView.mo11694em();
            }
            Object m11784Ij = c19949h03.m11784Ij(this);
            s1.s sVar2 = m11784Ij;
            if (m11784Ij != aVar) {
                sVar2 = sVar;
            }
            if (sVar2 == aVar) {
                return aVar;
            }
            return sVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C19949h0(AbstractC17197v0 abstractC17197v0, AbstractC19954i0 abstractC19954i0, @Named("WhoViewedMeScreenModule.DataObserver") AbstractC14619r abstractC14619r, AbstractC19223c0 abstractC19223c0, AbstractC19972p0 abstractC19972p0, C16727r c16727r, C10912h c10912h, C19966n0 c19966n0, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC19954i0, "whoViewedMeManager");
        l.e(abstractC14619r, "dataObserver");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC19972p0, "whoViewedMeSettings");
        l.e(c16727r, "cardLabelFactory");
        l.e(c10912h, "experimentRegistry");
        l.e(c19966n0, "whoViewedMeRevealProfileViewAbTestManager");
        l.e(fVar, "uiContext");
        this.f56414h = abstractC17197v0;
        this.f56415i = abstractC19954i0;
        this.f56416j = abstractC14619r;
        this.f56417k = abstractC19223c0;
        this.f56418l = abstractC19972p0;
        this.f56419m = c16727r;
        this.f56420n = c19966n0;
        this.f56421o = fVar;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19945f0
    /* renamed from: D7 */
    public void mo11786D7() {
        mo11781L1(this.f56415i.mo11762a(this.f56410d).f56478e, SourceType.WhoViewedMe, false, true, 21);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19953i
    /* renamed from: H7 */
    public boolean mo11765H7() {
        return this.f56414h.mo16408H();
    }

    @Override // p193e.p194a.p1193r5.AbstractC19943e0
    /* renamed from: Hc */
    public List<C19969o> mo11785Hc(C19941d0 c19941d0, s1.a.l<?> lVar) {
        l.e(c19941d0, "whoViewedMeListItemPresenter");
        l.e(lVar, "property");
        return this.f56410d;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x033d  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03de  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03e4  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0411  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x013e  */
    /* renamed from: Ij */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m11784Ij(s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 1048
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1193r5.C19949h0.m11784Ij(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1193r5.AbstractC19943e0
    /* renamed from: Kf */
    public boolean mo11783Kf(C19969o c19969o) {
        l.e(c19969o, "profileViewEvent");
        return this.f56411e.contains(Long.valueOf(c19969o.f56474a));
    }

    @Override // p193e.p194a.p1193r5.AbstractC19945f0
    /* renamed from: Ki */
    public void mo11782Ki(WhoViewedMeLaunchContext whoViewedMeLaunchContext) {
        l.e(whoViewedMeLaunchContext, "launchContext");
        this.f56415i.mo11747p(whoViewedMeLaunchContext);
        this.f56418l.mo11718s0(whoViewedMeLaunchContext);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19935b
    /* renamed from: L1 */
    public void mo11781L1(Contact contact, SourceType sourceType, boolean z, boolean z2, int i) {
        l.e(contact, AnalyticsConstants.CONTACT);
        l.e(sourceType, "sourceType");
        WhoViewedMePresenterView whoViewedMePresenterView = (WhoViewedMePresenterView) this.f57683a;
        if (whoViewedMePresenterView != null) {
            whoViewedMePresenterView.mo11708L1(contact, sourceType, z, z2, i);
        }
    }

    @Override // p193e.p194a.p1193r5.AbstractC19933a
    /* renamed from: O */
    public void mo11780O() {
        this.f56411e.clear();
        WhoViewedMePresenterView whoViewedMePresenterView = (WhoViewedMePresenterView) this.f57683a;
        if (whoViewedMePresenterView != null) {
            whoViewedMePresenterView.mo11698a6(false);
        }
    }

    @Override // p193e.p194a.p1193r5.AbstractC19933a
    /* renamed from: P */
    public boolean mo11779P() {
        WhoViewedMePresenterView whoViewedMePresenterView = (WhoViewedMePresenterView) this.f57683a;
        if (whoViewedMePresenterView != null) {
            whoViewedMePresenterView.mo11692g();
            whoViewedMePresenterView.mo11698a6(true);
            return true;
        }
        return true;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19933a
    /* renamed from: R */
    public String mo11778R() {
        return this.f56417k.mo13768b(C2752R.string.CallLogActionModeTitle, Integer.valueOf(this.f56411e.size()), Integer.valueOf(this.f56410d.size()));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.truecaller.whoviewedme.WhoViewedMePresenterView, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(WhoViewedMePresenterView whoViewedMePresenterView) {
        WhoViewedMePresenterView whoViewedMePresenterView2 = whoViewedMePresenterView;
        l.e(whoViewedMePresenterView2, "presenterView");
        this.f57683a = whoViewedMePresenterView2;
        whoViewedMePresenterView2.mo11693f(true);
        this.f56416j.m19905b(this);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f56416j.m19905b(null);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19933a
    /* renamed from: d */
    public boolean mo11777d(int i) {
        if (i == 2131361951) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C19947g0(this, null), 3, (Object) null);
            return true;
        } else if (i != 2131362019) {
            return true;
        } else {
            Set<Long> set = this.f56411e;
            List<C19969o> list = this.f56410d;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C19969o c19969o : list) {
                arrayList.add(Long.valueOf(c19969o.f56474a));
            }
            set.addAll(arrayList);
            WhoViewedMePresenterView whoViewedMePresenterView = (WhoViewedMePresenterView) this.f57683a;
            if (whoViewedMePresenterView != null) {
                whoViewedMePresenterView.mo11694em();
            }
            WhoViewedMePresenterView whoViewedMePresenterView2 = (WhoViewedMePresenterView) this.f57683a;
            if (whoViewedMePresenterView2 == null) {
                return true;
            }
            whoViewedMePresenterView2.mo11691g0();
            return true;
        }
    }

    @Override // p193e.p194a.p1193r5.AbstractC19945f0
    /* renamed from: ie */
    public void mo11776ie() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C19951b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1193r5.AbstractC19945f0
    /* renamed from: ni */
    public void mo11775ni() {
        this.f56415i.mo11758e();
    }

    @Override // p193e.p194a.p804h.p806b.AbstractC14619r.AbstractC14620a
    public void onDataChanged() {
        mo11776ie();
    }

    @Override // p193e.p194a.p1193r5.AbstractC19953i
    /* renamed from: p5 */
    public boolean mo11764p5(AbstractC19996z abstractC19996z, s1.a.l<?> lVar) {
        l.e(abstractC19996z, "thisRef");
        l.e(lVar, "property");
        return this.f56415i.mo11755h();
    }

    @Override // p193e.p194a.p1193r5.AbstractC19933a
    /* renamed from: t7 */
    public boolean mo11774t7(int i) {
        boolean z = true;
        if (i == 2131362019 && this.f56411e.size() == this.f56410d.size()) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p1193r5.AbstractC19945f0
    /* renamed from: tf */
    public void mo11773tf() {
    }

    @Override // p193e.p194a.p1193r5.AbstractC19943e0
    /* renamed from: u5 */
    public void mo11772u5(C19969o c19969o) {
        WhoViewedMePresenterView whoViewedMePresenterView;
        l.e(c19969o, "profileViewEvent");
        Set<Long> set = this.f56411e;
        if (!set.remove(Long.valueOf(c19969o.f56474a))) {
            set.add(Long.valueOf(c19969o.f56474a));
        }
        if (set.isEmpty() && (whoViewedMePresenterView = (WhoViewedMePresenterView) this.f57683a) != null) {
            whoViewedMePresenterView.mo11695e();
        }
        WhoViewedMePresenterView whoViewedMePresenterView2 = (WhoViewedMePresenterView) this.f57683a;
        if (whoViewedMePresenterView2 != null) {
            whoViewedMePresenterView2.mo11694em();
        }
        WhoViewedMePresenterView whoViewedMePresenterView3 = (WhoViewedMePresenterView) this.f57683a;
        if (whoViewedMePresenterView3 != null) {
            whoViewedMePresenterView3.mo11691g0();
        }
    }

    @Override // p193e.p194a.p1193r5.AbstractC19953i
    /* renamed from: y9 */
    public void mo11763y9(boolean z) {
        this.f56415i.mo11757f(z);
        WhoViewedMePresenterView whoViewedMePresenterView = (WhoViewedMePresenterView) this.f57683a;
        if (whoViewedMePresenterView != null) {
            whoViewedMePresenterView.mo11697bs();
        }
    }
}
