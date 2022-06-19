package p193e.p194a.p1011l.p1013c;

import android.database.Cursor;
import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import com.truecaller.announce_caller_id.settings.AnnounceCallerIdSettingLaunchSource;
import com.truecaller.ghost_call.ScheduleDuration;
import com.truecaller.ghost_call.analytics.events.GhostCallCardAction;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.data.SubscriptionPromoEventMetaData;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.AbstractC16856e0;
import p193e.p194a.p1011l.AbstractC16965n0;
import p193e.p194a.p1011l.C17009o1;
import p193e.p194a.p1011l.p1012a.AbstractC16567c0;
import p193e.p194a.p1011l.p1012a.C16588k0;
import p193e.p194a.p1011l.p1012a.C16590l0;
import p193e.p194a.p1011l.p1012a.C16595p;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16677h2;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16775z;
import p193e.p194a.p1011l.p1013c.p1014a.C16657d3;
import p193e.p194a.p1011l.p1013c.p1014a.C16658e;
import p193e.p194a.p1011l.p1013c.p1014a.C16667f3;
import p193e.p194a.p1011l.p1013c.p1014a.C16670g0;
import p193e.p194a.p1011l.p1013c.p1014a.C16695k;
import p193e.p194a.p1011l.p1013c.p1014a.C16699l;
import p193e.p194a.p1011l.p1013c.p1014a.C16704m;
import p193e.p194a.p1011l.p1013c.p1014a.C16708n;
import p193e.p194a.p1011l.p1013c.p1014a.C16710n0;
import p193e.p194a.p1011l.p1013c.p1014a.C16713o;
import p193e.p194a.p1011l.p1013c.p1014a.C16717p;
import p193e.p194a.p1011l.p1013c.p1014a.C16723q;
import p193e.p194a.p1011l.p1013c.p1014a.C16731s;
import p193e.p194a.p1011l.p1013c.p1014a.C16754t2;
import p193e.p194a.p1011l.p1013c.p1016n.AbstractC16826d;
import p193e.p194a.p1011l.p1020g.C16913t;
import p193e.p194a.p1011l.p1023n2.C16993f;
import p193e.p194a.p1011l.p1024o2.C17013c;
import p193e.p194a.p1011l.p1024o2.C17017e;
import p193e.p194a.p1011l.p1025p2.AbstractC17050d1;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17030a1;
import p193e.p194a.p1011l.p1025p2.C17049d0;
import p193e.p194a.p1011l.p1025p2.C17062e0;
import p193e.p194a.p1011l.p1025p2.C17162q0;
import p193e.p194a.p1011l.p1025p2.C17192t1;
import p193e.p194a.p1011l.p1025p2.C17206y;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17281c;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17284f;
import p193e.p194a.p1011l.p1033v2.p1037i.p1039b.C17288a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1161q5.AbstractC19688d;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1349x.AbstractC21373l;
import p193e.p194a.p1349x.AbstractC21385w;
import p193e.p194a.p1349x.C21345i;
import p193e.p194a.p1349x.C21358j;
import p193e.p194a.p1349x.C21361k;
import p193e.p194a.p1349x.p1351h0.C21337a;
import p193e.p194a.p1349x.p1351h0.p1352b.C21341d;
import p193e.p194a.p1349x.p1351h0.p1352b.C21343f;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p613c0.AbstractC10908f;
import p193e.p194a.p613c0.C10912h;
import p193e.p194a.p804h.p806b.AbstractC14619r;
import q3.a.i0;
import q3.a.j0;
import s1.f0.r;
import s1.u.i;
import s1.u.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.l.c.j */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/j.class */
public final class C16810j extends AbstractC16856e0<AbstractC16809i> implements AbstractC16808h, AbstractC14619r.AbstractC14620a {

    /* renamed from: A0 */
    public final AbstractC16826d f47097A0;

    /* renamed from: B0 */
    public final C10912h f47098B0;

    /* renamed from: C0 */
    public final f f47099C0;

    /* renamed from: W */
    public C16710n0 f47100W;

    /* renamed from: X */
    public List<C16717p> f47101X = s.a;

    /* renamed from: Y */
    public final AbstractC17197v0 f47102Y;

    /* renamed from: Z */
    public final AbstractC16832c2 f47103Z;

    /* renamed from: g0 */
    public final C21361k f47104g0;

    /* renamed from: h0 */
    public final AbstractC21373l f47105h0;

    /* renamed from: i0 */
    public final C21337a f47106i0;

    /* renamed from: j0 */
    public final AbstractC21385w f47107j0;

    /* renamed from: k0 */
    public final AbstractC19233h0 f47108k0;

    /* renamed from: l0 */
    public final AbstractC16567c0 f47109l0;

    /* renamed from: m0 */
    public final C17062e0 f47110m0;

    /* renamed from: n0 */
    public final a<C16667f3> f47111n0;

    /* renamed from: o0 */
    public final a<C16658e> f47112o0;

    /* renamed from: p0 */
    public final a<C16657d3> f47113p0;

    /* renamed from: q0 */
    public final AbstractC19688d f47114q0;

    /* renamed from: r0 */
    public final AbstractC14619r f47115r0;

    /* renamed from: s0 */
    public final C16754t2 f47116s0;

    /* renamed from: t0 */
    public final a<C16670g0> f47117t0;

    /* renamed from: u0 */
    public final C17281c f47118u0;

    /* renamed from: v0 */
    public final C17284f f47119v0;

    /* renamed from: w0 */
    public final C16913t f47120w0;

    /* renamed from: x0 */
    public final C16731s f47121x0;

    /* renamed from: y0 */
    public final C16588k0 f47122y0;

    /* renamed from: z0 */
    public final C16704m f47123z0;

    /* renamed from: e.a.l.c.j$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$a.class */
    public static final class C16811a {

        /* renamed from: a */
        public List<C16717p> f47124a;

        public C16811a(List<C16717p> list) {
            l.e(list, "currentCards");
            this.f47124a = i.a1(list);
        }
    }

    @e(c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onDataChanged$1", f = "PremiumUserTabPresenter.kt", l = {188}, m = "invokeSuspend")
    /* renamed from: e.a.l.c.j$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$b.class */
    public static final class C16812b extends s1.w.k.a.i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public Object f47125e;

        /* renamed from: f */
        public Object f47126f;

        /* renamed from: g */
        public Object f47127g;

        /* renamed from: h */
        public Object f47128h;

        /* renamed from: i */
        public Object f47129i;

        /* renamed from: j */
        public Object f47130j;

        /* renamed from: k */
        public Object f47131k;

        /* renamed from: l */
        public Object f47132l;

        /* renamed from: m */
        public int f47133m;

        /* renamed from: n */
        public int f47134n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16812b(d dVar) {
            super(2, dVar);
            C16810j.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m16978i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16812b(dVar);
        }

        /* renamed from: k */
        public final Object m16977k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16812b(dVar).m16976s(s1.s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:41:0x0275  */
        /* JADX WARN: Type inference failed for: r0v141, types: [java.util.List] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16976s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 643
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1013c.C16810j.C16812b.m16976s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter", f = "PremiumUserTabPresenter.kt", l = {232}, m = "onDetailsFetched")
    /* renamed from: e.a.l.c.j$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$c.class */
    public static final class C16813c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47136d;

        /* renamed from: e */
        public int f47137e;

        /* renamed from: g */
        public Object f47139g;

        /* renamed from: h */
        public Object f47140h;

        /* renamed from: i */
        public Object f47141i;

        /* renamed from: j */
        public Object f47142j;

        /* renamed from: k */
        public Object f47143k;

        /* renamed from: l */
        public Object f47144l;

        /* renamed from: m */
        public Object f47145m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16813c(d dVar) {
            super(dVar);
            C16810j.this = r4;
        }

        /* renamed from: s */
        public final Object m16975s(Object obj) {
            this.f47136d = obj;
            this.f47137e |= Integer.MIN_VALUE;
            return C16810j.this.mo16851Tj(null, this);
        }
    }

    @e(c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onFeatureCardDismiss$1", f = "PremiumUserTabPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.l.c.j$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$d.class */
    public static final class C16814d extends s1.w.k.a.i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f47147f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16814d(String str, d dVar) {
            super(2, dVar);
            C16810j.this = r5;
            this.f47147f = str;
        }

        /* renamed from: i */
        public final d<s1.s> m16974i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16814d(this.f47147f, dVar);
        }

        /* renamed from: k */
        public final Object m16973k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16814d c16814d = new C16814d(this.f47147f, dVar);
            s1.s sVar = s1.s.a;
            c16814d.m16972s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m16972s(Object obj) {
            C25225a.m3932a3(obj);
            C16810j c16810j = C16810j.this;
            C16710n0 c16710n0 = c16810j.f47100W;
            if (!c16810j.f47301m && !c16810j.f47302n) {
                List<C16717p> list = c16810j.f47101X;
                ArrayList arrayList = new ArrayList();
                if (c16710n0 != null) {
                    arrayList.add(c16710n0);
                    arrayList.addAll(list);
                }
                l.e(list, "currentCards");
                List<C16717p> a1 = i.a1(list);
                String str = this.f47147f;
                l.e(str, "type");
                Iterator<C16717p> it = a1.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    AbstractC16736t abstractC16736t = it.next().f46880b;
                    if ((abstractC16736t instanceof AbstractC16736t.C16739c) && r.n(((AbstractC16736t.C16739c) abstractC16736t).f46936a, str, true)) {
                        break;
                    }
                    i++;
                }
                Integer valueOf = Integer.valueOf(i);
                boolean z = false;
                if (valueOf.intValue() != -1) {
                    z = true;
                }
                if (!z) {
                    valueOf = null;
                }
                if (valueOf != null) {
                    a1.remove(valueOf.intValue());
                }
                ArrayList arrayList2 = new ArrayList();
                if (c16710n0 != null) {
                    arrayList2.add(c16710n0);
                    arrayList2.addAll(a1);
                }
                c16810j.f47100W = c16710n0;
                c16810j.f47101X = a1;
                AbstractC16809i abstractC16809i = (AbstractC16809i) c16810j.f57683a;
                if (abstractC16809i != null) {
                    abstractC16809i.mo17016ok(arrayList, arrayList2);
                }
            }
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onNewFeatureLabelDismissed$1", f = "PremiumUserTabPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.l.c.j$e */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$e.class */
    public static final class C16815e extends s1.w.k.a.i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ NewFeatureLabelType f47149f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16815e(NewFeatureLabelType newFeatureLabelType, d dVar) {
            super(2, dVar);
            C16810j.this = r5;
            this.f47149f = newFeatureLabelType;
        }

        /* renamed from: i */
        public final d<s1.s> m16971i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16815e(this.f47149f, dVar);
        }

        /* renamed from: k */
        public final Object m16970k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16815e c16815e = new C16815e(this.f47149f, dVar);
            s1.s sVar = s1.s.a;
            c16815e.m16969s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m16969s(Object obj) {
            C25225a.m3932a3(obj);
            C16810j c16810j = C16810j.this;
            C16710n0 c16710n0 = c16810j.f47100W;
            if (!c16810j.f47301m && !c16810j.f47302n) {
                List<C16717p> list = c16810j.f47101X;
                ArrayList arrayList = new ArrayList();
                if (c16710n0 != null) {
                    arrayList.add(c16710n0);
                    arrayList.addAll(list);
                }
                l.e(list, "currentCards");
                List<C16717p> a1 = i.a1(list);
                C17288a mo16948i = C16810j.this.f47097A0.mo16948i(this.f47149f);
                l.e(mo16948i, "cardNewFeatureLabel");
                Iterator<C16717p> it = a1.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    C17288a c17288a = it.next().f46881c;
                    if ((c17288a != null ? c17288a.f48504a : null) == mo16948i.f48504a) {
                        break;
                    }
                    i++;
                }
                Integer valueOf = Integer.valueOf(i);
                boolean z = false;
                if (valueOf.intValue() != -1) {
                    z = true;
                }
                Integer num = null;
                if (z) {
                    num = valueOf;
                }
                if (num != null) {
                    int intValue = num.intValue();
                    C16717p c16717p = a1.get(intValue);
                    C16723q c16723q = c16717p.f46879a;
                    AbstractC16736t abstractC16736t = c16717p.f46880b;
                    l.e(abstractC16736t, "payload");
                    a1.set(intValue, new C16717p(c16723q, abstractC16736t, mo16948i));
                }
                ArrayList arrayList2 = new ArrayList();
                if (c16710n0 != null) {
                    arrayList2.add(c16710n0);
                    arrayList2.addAll(a1);
                }
                c16810j.f47100W = c16710n0;
                c16810j.f47101X = a1;
                AbstractC16809i abstractC16809i = (AbstractC16809i) c16810j.f57683a;
                if (abstractC16809i != null) {
                    abstractC16809i.mo17016ok(arrayList, arrayList2);
                }
            }
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter", f = "PremiumUserTabPresenter.kt", l = {196}, m = "onPendingPurchase")
    /* renamed from: e.a.l.c.j$f */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$f.class */
    public static final class C16816f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f47150d;

        /* renamed from: e */
        public int f47151e;

        /* renamed from: g */
        public Object f47153g;

        /* renamed from: h */
        public Object f47154h;

        /* renamed from: i */
        public Object f47155i;

        /* renamed from: j */
        public Object f47156j;

        /* renamed from: k */
        public Object f47157k;

        /* renamed from: l */
        public Object f47158l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16816f(d dVar) {
            super(dVar);
            C16810j.this = r4;
        }

        /* renamed from: s */
        public final Object m16968s(Object obj) {
            this.f47150d = obj;
            this.f47151e |= Integer.MIN_VALUE;
            return C16810j.this.mo16849Vj(null, this);
        }
    }

    @e(c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onResume$1", f = "PremiumUserTabPresenter.kt", l = {207}, m = "invokeSuspend")
    /* renamed from: e.a.l.c.j$g */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$g.class */
    public static final class C16817g extends s1.w.k.a.i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public Object f47159e;

        /* renamed from: f */
        public Object f47160f;

        /* renamed from: g */
        public Object f47161g;

        /* renamed from: h */
        public Object f47162h;

        /* renamed from: i */
        public Object f47163i;

        /* renamed from: j */
        public Object f47164j;

        /* renamed from: k */
        public Object f47165k;

        /* renamed from: l */
        public Object f47166l;

        /* renamed from: m */
        public Object f47167m;

        /* renamed from: n */
        public int f47168n;

        /* renamed from: o */
        public int f47169o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16817g(d dVar) {
            super(2, dVar);
            C16810j.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m16967i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16817g(dVar);
        }

        /* renamed from: k */
        public final Object m16966k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16817g(dVar).m16965s(s1.s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:106:0x05ac  */
        /* JADX WARN: Removed duplicated region for block: B:129:0x06b0  */
        /* JADX WARN: Removed duplicated region for block: B:148:0x0758  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0364  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0488  */
        /* JADX WARN: Type inference failed for: r0v421, types: [java.util.List] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m16965s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 1901
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1013c.C16810j.C16817g.m16965s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$onUpdateWhatsAppCallerIdAutoSearchMode$1", f = "PremiumUserTabPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.l.c.j$h */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$h.class */
    public static final class C16818h extends s1.w.k.a.i implements p<i0, d<? super s1.s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16818h(d dVar) {
            super(2, dVar);
            C16810j.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m16964i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16818h(dVar);
        }

        /* renamed from: k */
        public final Object m16963k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C16818h c16818h = new C16818h(dVar);
            s1.s sVar = s1.s.a;
            c16818h.m16962s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m16962s(Object obj) {
            C25225a.m3932a3(obj);
            C16810j c16810j = C16810j.this;
            C16710n0 c16710n0 = c16810j.f47100W;
            if (!c16810j.f47301m && !c16810j.f47302n) {
                List<C16717p> list = c16810j.f47101X;
                ArrayList arrayList = new ArrayList();
                if (c16710n0 != null) {
                    arrayList.add(c16710n0);
                    arrayList.addAll(list);
                }
                l.e(list, "currentCards");
                List<C16717p> a1 = i.a1(list);
                C17288a mo16948i = C16810j.this.f47097A0.mo16948i(NewFeatureLabelType.WHATS_APP_CALLER_ID);
                Iterator<C16717p> it = a1.iterator();
                boolean z = false;
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    } else if (Boolean.valueOf(it.next().f46880b instanceof AbstractC16736t.C16750n).booleanValue()) {
                        break;
                    } else {
                        i++;
                    }
                }
                Integer num = new Integer(i);
                if (num.intValue() != -1) {
                    z = true;
                }
                if (!Boolean.valueOf(z).booleanValue()) {
                    num = null;
                }
                ArrayList arrayList2 = a1;
                if (num != null) {
                    int intValue = num.intValue();
                    C16723q c16723q = a1.get(intValue).f46879a;
                    C17288a c17288a = mo16948i != null ? mo16948i : a1.get(intValue).f46881c;
                    AbstractC16736t abstractC16736t = a1.get(intValue).f46880b;
                    Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.WhatsAppCallerId");
                    AbstractC16736t.C16750n c16750n = (AbstractC16736t.C16750n) abstractC16736t;
                    C16717p c16717p = new C16717p(c16723q, ((C16657d3) C16810j.this.f47113p0.get()).m17153a(), c17288a);
                    ArrayList arrayList3 = new ArrayList(a1);
                    arrayList3.set(intValue, c16717p);
                    arrayList2 = arrayList3;
                }
                ArrayList arrayList4 = new ArrayList();
                if (c16710n0 != null) {
                    arrayList4.add(c16710n0);
                    arrayList4.addAll(arrayList2);
                }
                c16810j.f47100W = c16710n0;
                c16810j.f47101X = arrayList2;
                AbstractC16809i abstractC16809i = (AbstractC16809i) c16810j.f57683a;
                if (abstractC16809i != null) {
                    abstractC16809i.mo17016ok(arrayList, arrayList4);
                }
            }
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.premium.premiumusertab.PremiumUserTabPresenter$performScrollToFeature$1", f = "PremiumUserTabPresenter.kt", l = {269}, m = "invokeSuspend")
    /* renamed from: e.a.l.c.j$i */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/j$i.class */
    public static final class C16819i extends s1.w.k.a.i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f47172e;

        /* renamed from: g */
        public final /* synthetic */ int f47174g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16819i(int i, d dVar) {
            super(2, dVar);
            C16810j.this = r5;
            this.f47174g = i;
        }

        /* renamed from: i */
        public final d<s1.s> m16961i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16819i(this.f47174g, dVar);
        }

        /* renamed from: k */
        public final Object m16960k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16819i(this.f47174g, dVar).m16959s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m16959s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f47172e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f47172e = 1;
                if (s1.a.a.a.v0.f.d.D0(500L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC16809i abstractC16809i = (AbstractC16809i) C16810j.this.f57683a;
            if (abstractC16809i != null) {
                abstractC16809i.scrollToPosition(this.f47174g);
            }
            return s1.s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16810j(@Named("HiltPremiumFragmentParamsModule.LAUNCH_CONTEXT") PremiumLaunchContext premiumLaunchContext, @Named("HiltPremiumFragmentParamsModule.SUBSCRIPTION_PROMO_EVENT_METADATA") SubscriptionPromoEventMetaData subscriptionPromoEventMetaData, AbstractC17168r0 abstractC17168r0, AbstractC17197v0 abstractC17197v0, C17030a1 c17030a1, AbstractC16832c2 abstractC16832c2, C21361k c21361k, AbstractC21373l abstractC21373l, C21337a c21337a, AbstractC21385w abstractC21385w, AbstractC21881d abstractC21881d, AbstractC8541a abstractC8541a, AbstractC19462a abstractC19462a, AbstractC17050d1 abstractC17050d1, AbstractC19233h0 abstractC19233h0, AbstractC16965n0 abstractC16965n0, C17017e c17017e, C17013c c17013c, C17162q0 c17162q0, AbstractC16567c0 abstractC16567c0, C16595p c16595p, C17062e0 c17062e0, a<C16667f3> aVar, a<C16658e> aVar2, a<C16657d3> aVar3, AbstractC19688d abstractC19688d, AbstractC14619r abstractC14619r, C16754t2 c16754t2, a<C16670g0> aVar4, C17281c c17281c, C17284f c17284f, C16913t c16913t, C16731s c16731s, C16590l0 c16590l0, C16588k0 c16588k0, C17009o1 c17009o1, C16704m c16704m, AbstractC16826d abstractC16826d, C10912h c10912h, C20592g c20592g, C17206y c17206y, AbstractC17246a abstractC17246a, C17192t1 c17192t1, @Named("UI") f fVar) {
        super(premiumLaunchContext, subscriptionPromoEventMetaData, null, abstractC17168r0, abstractC17197v0, c17030a1, c17206y, abstractC17246a, c17192t1, abstractC21881d, abstractC8541a, abstractC19462a, abstractC17050d1, abstractC19233h0, abstractC16965n0, c17017e, c17013c, c17162q0, c17009o1, abstractC16832c2, abstractC16567c0, c16595p, c20592g, c10912h, c17281c, c17284f, c16588k0, c16590l0, fVar);
        l.e(premiumLaunchContext, "launchContext");
        l.e(abstractC17168r0, "repository");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c17030a1, "premiumSubscriptionProblemHelper");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(c21361k, "ghostCallContactReader");
        l.e(abstractC21373l, "ghostCallManager");
        l.e(c21337a, "ghostCallEventLogger");
        l.e(abstractC21385w, "ghostCallSettings");
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC17050d1, "premiumSubscriptionsHelper");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(abstractC16965n0, "premiumEventsLogger");
        l.e(c17017e, "consumablePurchasePresenter");
        l.e(c17013c, "consumablePurchaseLostNotifier");
        l.e(c17162q0, "premiumPurchaseHelper");
        l.e(abstractC16567c0, "premiumTabDeeplinkHelper");
        l.e(c16595p, "premiumBottomBarAttentionHelper");
        l.e(c17062e0, "premiumExpireDateFormatter");
        l.e(aVar, "whoViewedMeCardPayloadCreator");
        l.e(aVar2, "announceCallerIdPayloadCreator");
        l.e(aVar3, "whatsAppCallerIdPayloadCreator");
        l.e(abstractC19688d, "whatsAppCallerIdManager");
        l.e(abstractC14619r, "dataObserver");
        l.e(c16754t2, "spamProtectionCardPayloadCreator");
        l.e(aVar4, "ghostCallCardPayloadCreator");
        l.e(c17281c, "subscriptionButtonBuildHelper");
        l.e(c17284f, "subscriptionButtonGroupBuildHelper");
        l.e(c16913t, "goldGiftPromoUtils");
        l.e(c16731s, "cardListCreator");
        l.e(c16590l0, "welcomeOfferUtils");
        l.e(c16588k0, "threeButtonPremiumLayoutUtils");
        l.e(c17009o1, "premiumLogsSender");
        l.e(c16704m, "cardDismissManager");
        l.e(abstractC16826d, "premiumNewFeatureLabelHelper");
        l.e(c10912h, "experimentRegistry");
        l.e(c20592g, "featureRegistry");
        l.e(c17206y, "premiumAlertFactory");
        l.e(abstractC17246a, "premiumProductStoreProvider");
        l.e(c17192t1, "webBillingPurchaseStateManager");
        l.e(fVar, "ui");
        this.f47102Y = abstractC17197v0;
        this.f47103Z = abstractC16832c2;
        this.f47104g0 = c21361k;
        this.f47105h0 = abstractC21373l;
        this.f47106i0 = c21337a;
        this.f47107j0 = abstractC21385w;
        this.f47108k0 = abstractC19233h0;
        this.f47109l0 = abstractC16567c0;
        this.f47110m0 = c17062e0;
        this.f47111n0 = aVar;
        this.f47112o0 = aVar2;
        this.f47113p0 = aVar3;
        this.f47114q0 = abstractC19688d;
        this.f47115r0 = abstractC14619r;
        this.f47116s0 = c16754t2;
        this.f47117t0 = aVar4;
        this.f47118u0 = c17281c;
        this.f47119v0 = c17284f;
        this.f47120w0 = c16913t;
        this.f47121x0 = c16731s;
        this.f47122y0 = c16588k0;
        this.f47123z0 = c16704m;
        this.f47097A0 = abstractC16826d;
        this.f47098B0 = c10912h;
        this.f47099C0 = fVar;
    }

    /* renamed from: dk */
    public static final List m16996dk(C16810j c16810j, C16710n0 c16710n0, List list) {
        Objects.requireNonNull(c16810j);
        ArrayList arrayList = new ArrayList();
        if (c16710n0 != null) {
            arrayList.add(c16710n0);
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16701l1
    /* renamed from: A1 */
    public List<C16717p> mo17013A1(Object obj, s1.a.l<?> lVar) {
        l.e(lVar, "property");
        return this.f47101X;
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16694j2
    /* renamed from: B4 */
    public void mo17012B4() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17033B4();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16660e1
    /* renamed from: C9 */
    public void mo17011C9() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17019ef();
        }
        C21337a c21337a = this.f47106i0;
        C10480a.m26037O1(new C21343f(c21337a.f59734d.m17200a()), c21337a);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16711n1
    /* renamed from: Fg */
    public void mo17010Fg(String str) {
        if (str == null) {
            return;
        }
        m16842ck(true);
        m16854Qj();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16660e1
    /* renamed from: G4 */
    public void mo17009G4(int i) {
        this.f47105h0.mo9835A();
        C16710n0 c16710n0 = this.f47100W;
        if (!this.f47301m && !this.f47302n) {
            List<C16717p> list = this.f47101X;
            ArrayList arrayList = new ArrayList();
            if (c16710n0 != null) {
                arrayList.add(c16710n0);
                arrayList.addAll(list);
            }
            l.e(list, "currentCards");
            List<C16717p> a1 = i.a1(list);
            Iterator<C16717p> it = a1.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i2 = -1;
                    break;
                } else if (it.next().f46880b instanceof AbstractC16736t.C16740d) {
                    break;
                } else {
                    i2++;
                }
            }
            Integer valueOf = Integer.valueOf(i2);
            boolean z = false;
            if (valueOf.intValue() != -1) {
                z = true;
            }
            if (!z) {
                valueOf = null;
            }
            ArrayList arrayList2 = a1;
            if (valueOf != null) {
                int intValue = valueOf.intValue();
                C16723q c16723q = a1.get(intValue).f46879a;
                C17288a c17288a = a1.get(intValue).f46881c;
                AbstractC16736t abstractC16736t = a1.get(intValue).f46880b;
                Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.GhostCall");
                AbstractC16736t.C16740d c16740d = (AbstractC16736t.C16740d) abstractC16736t;
                C16717p c16717p = new C16717p(c16723q, ((C16670g0) this.f47117t0.get()).m17138a(), c17288a);
                ArrayList arrayList3 = new ArrayList(a1);
                arrayList3.set(intValue, c16717p);
                arrayList2 = arrayList3;
            }
            ArrayList arrayList4 = new ArrayList();
            if (c16710n0 != null) {
                arrayList4.add(c16710n0);
                arrayList4.addAll(arrayList2);
            }
            this.f47100W = c16710n0;
            this.f47101X = arrayList2;
            AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
            if (abstractC16809i != null) {
                abstractC16809i.mo17016ok(arrayList, arrayList4);
            }
        }
        this.f47106i0.m9878q(i, GhostCallCardAction.CallCancelled, this.f47097A0.mo16949h(NewFeatureLabelType.GHOST_CALL));
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16694j2
    /* renamed from: Hd */
    public void mo17008Hd(AbstractC16775z abstractC16775z) {
        l.e(abstractC16775z, "action");
        l.e(abstractC16775z, "action");
        l.e(abstractC16775z, "action");
        if (l.a(abstractC16775z, AbstractC16775z.C16779d.f47019a)) {
            mo17012B4();
        } else if (l.a(abstractC16775z, AbstractC16775z.C16778c.f47018a)) {
            m16986jk();
        } else if (abstractC16775z instanceof AbstractC16775z.C16776a) {
            m16988ik(((AbstractC16775z.C16776a) abstractC16775z).f47016a);
        } else if (l.a(abstractC16775z, AbstractC16775z.C16777b.f47017a)) {
            m16992fk();
        } else if (!l.a(abstractC16775z, AbstractC16775z.C16780e.f47020a)) {
            throw new s1.i();
        } else {
            mo16995ee();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16694j2
    /* renamed from: J4 */
    public void mo17007J4() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17032J4();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16701l1
    /* renamed from: Je */
    public void mo17006Je(C16993f c16993f, String str) {
        l.e(c16993f, "subscription");
        m16846Yj(c16993f, str);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16734s1
    /* renamed from: Na */
    public void mo17005Na(Integer num, String str) {
        l.e(str, "phoneNumber");
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17018j5(num, str);
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16660e1
    /* renamed from: Od */
    public void mo17004Od(Uri uri) {
        if (uri == null) {
            return;
        }
        C21361k c21361k = this.f47104g0;
        Objects.requireNonNull(c21361k);
        l.e(uri, "uri");
        Cursor query = c21361k.f59806a.getContentResolver().query(uri, new String[]{"display_name", "data1", "photo_uri"}, null, null, null);
        try {
            ArrayList arrayList = new ArrayList();
            if (query != null) {
                while (query.moveToNext()) {
                    arrayList.add(new C21358j(query.getString(query.getColumnIndex("display_name")), query.getString(query.getColumnIndex("data1")), query.getString(query.getColumnIndex("photo_uri"))));
                }
            }
            Integer num = null;
            C25225a.m4016G(query, null);
            C21358j c21358j = (C21358j) i.D(arrayList);
            if (c21358j == null) {
                return;
            }
            AbstractC21385w abstractC21385w = this.f47107j0;
            String str = c21358j.f59777a;
            if (str == null) {
                str = "";
            }
            abstractC21385w.setProfileName(str);
            this.f47107j0.mo9796Y(c21358j.f59779c);
            this.f47107j0.mo9796Y(c21358j.f59779c);
            AbstractC21385w abstractC21385w2 = this.f47107j0;
            String str2 = c21358j.f59778b;
            String str3 = "";
            if (str2 != null) {
                str3 = str2;
            }
            abstractC21385w2.setPhoneNumber(str3);
            C16710n0 c16710n0 = this.f47100W;
            if (this.f47301m || this.f47302n) {
                return;
            }
            List<C16717p> list = this.f47101X;
            ArrayList arrayList2 = new ArrayList();
            if (c16710n0 != null) {
                arrayList2.add(c16710n0);
                arrayList2.addAll(list);
            }
            l.e(list, "currentCards");
            List<C16717p> a1 = i.a1(list);
            ArrayList arrayList3 = (ArrayList) a1;
            Iterator it = arrayList3.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (((C16717p) it.next()).f46880b instanceof AbstractC16736t.C16740d) {
                    break;
                } else {
                    i++;
                }
            }
            Integer valueOf = Integer.valueOf(i);
            boolean z = false;
            if (valueOf.intValue() != -1) {
                z = true;
            }
            if (z) {
                num = valueOf;
            }
            ArrayList arrayList4 = a1;
            if (num != null) {
                int intValue = num.intValue();
                C16723q c16723q = ((C16717p) arrayList3.get(intValue)).f46879a;
                C17288a c17288a = ((C16717p) arrayList3.get(intValue)).f46881c;
                AbstractC16736t abstractC16736t = ((C16717p) arrayList3.get(intValue)).f46880b;
                Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.GhostCall");
                AbstractC16736t.C16740d c16740d = (AbstractC16736t.C16740d) abstractC16736t;
                C16717p c16717p = new C16717p(c16723q, ((C16670g0) this.f47117t0.get()).m17138a(), c17288a);
                ArrayList arrayList5 = new ArrayList(a1);
                arrayList5.set(intValue, c16717p);
                arrayList4 = arrayList5;
            }
            ArrayList arrayList6 = new ArrayList();
            if (c16710n0 != null) {
                arrayList6.add(c16710n0);
                arrayList6.addAll(arrayList4);
            }
            this.f47100W = c16710n0;
            this.f47101X = arrayList4;
            AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
            if (abstractC16809i == null) {
                return;
            }
            abstractC16809i.mo17016ok(arrayList2, arrayList6);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                C25225a.m4016G(query, th);
                throw th2;
            }
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16656d2
    /* renamed from: Oi */
    public void mo17003Oi(boolean z) {
        C16710n0 c16710n0 = this.f47100W;
        if (this.f47301m || this.f47302n) {
            return;
        }
        List<C16717p> list = this.f47101X;
        ArrayList arrayList = new ArrayList();
        if (c16710n0 != null) {
            arrayList.add(c16710n0);
            arrayList.addAll(list);
        }
        l.e(list, "currentCards");
        List<C16717p> a1 = i.a1(list);
        Iterator<C16717p> it = a1.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next().f46880b instanceof AbstractC16736t.C16751o) {
                break;
            } else {
                i++;
            }
        }
        Integer valueOf = Integer.valueOf(i);
        boolean z2 = false;
        if (valueOf.intValue() != -1) {
            z2 = true;
        }
        if (!z2) {
            valueOf = null;
        }
        ArrayList arrayList2 = a1;
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            C16723q c16723q = a1.get(intValue).f46879a;
            C17288a c17288a = a1.get(intValue).f46881c;
            AbstractC16736t abstractC16736t = a1.get(intValue).f46880b;
            Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.WhoViewedMe");
            AbstractC16736t.C16751o c16751o = (AbstractC16736t.C16751o) abstractC16736t;
            String str = c16751o.f46969b;
            String str2 = c16751o.f46970c;
            l.e(str, "label");
            l.e(str2, "cta");
            C16717p c16717p = new C16717p(c16723q, new AbstractC16736t.C16751o(z, str, str2), c17288a);
            ArrayList arrayList3 = new ArrayList(a1);
            arrayList3.set(intValue, c16717p);
            arrayList2 = arrayList3;
        }
        ArrayList arrayList4 = new ArrayList();
        if (c16710n0 != null) {
            arrayList4.add(c16710n0);
            arrayList4.addAll(arrayList2);
        }
        this.f47100W = c16710n0;
        this.f47101X = arrayList2;
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i == null) {
            return;
        }
        abstractC16809i.mo17016ok(arrayList, arrayList4);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16631a2
    /* renamed from: T2 */
    public void mo17002T2() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16818h(null), 3, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x040e  */
    /* JADX WARN: Type inference failed for: r0v228, types: [java.util.List] */
    @Override // p193e.p194a.p1011l.AbstractC16856e0
    /* renamed from: Tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16851Tj(p193e.p194a.p1011l.p1025p2.AbstractC17180s1.C17182b r14, s1.w.d<? super s1.s> r15) {
        /*
            Method dump skipped, instructions count: 1280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1013c.C16810j.mo16851Tj(e.a.l.p2.s1$b, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16701l1
    /* renamed from: V7 */
    public void mo17001V7(NewFeatureLabelType newFeatureLabelType) {
        l.e(newFeatureLabelType, "type");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16815e(newFeatureLabelType, null), 3, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0182  */
    @Override // p193e.p194a.p1011l.AbstractC16856e0
    /* renamed from: Vj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo16849Vj(p193e.p194a.p1011l.p1025p2.AbstractC17180s1.C17186f r12, s1.w.d<? super s1.s> r13) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1013c.C16810j.mo16849Vj(e.a.l.p2.s1$f, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16694j2
    /* renamed from: X4 */
    public void mo17000X4() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17021X4();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16631a2
    /* renamed from: Xc */
    public void mo16999Xc(int i) {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17020Xq(i);
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16694j2
    /* renamed from: Zc */
    public void mo16998Zc() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17014wj(AnnounceCallerIdSettingLaunchSource.PREMIUM_TAB);
        }
    }

    @Override // p193e.p194a.p1011l.AbstractC16856e0, p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f47115r0.m19905b(null);
        super.mo9806c();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16660e1
    /* renamed from: ch */
    public void mo16997ch(int i) {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17026Ou();
        }
        this.f47106i0.m9878q(i, GhostCallCardAction.PickContactClick, this.f47097A0.mo16949h(NewFeatureLabelType.GHOST_CALL));
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16701l1
    /* renamed from: ee */
    public void mo16995ee() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17028Lo();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16694j2
    /* renamed from: eh */
    public void mo16994eh(int i) {
        if (i == 100) {
            mo16995ee();
        }
    }

    /* renamed from: ek */
    public final C16710n0 m16993ek() {
        boolean z;
        String str;
        String str2;
        int i = (!this.f47102Y.mo16408H() || !l.a(this.f47102Y.mo16411D2(), "gold")) ? 2131232190 : 2131231941;
        String mo13768b = this.f47108k0.mo13768b((!this.f47102Y.mo16408H() || !l.a(this.f47102Y.mo16411D2(), "gold")) ? (!this.f47102Y.mo16408H() || !l.a(this.f47102Y.mo16411D2(), "regular")) ? 2131887404 : 2131887405 : 2131887403, new Object[0]);
        l.d(mo13768b, "resourceProvider.getStri…m\n            }\n        )");
        if (this.f47102Y.mo16408H()) {
            C17049d0 m16589a = this.f47110m0.m16589a();
            str2 = m16589a.f47813a;
            z = m16589a.f47814b;
            str = this.f47108k0.mo13768b(C2752R.string.PremiumUserTabSubHeaderPremium, new Object[0]);
        } else {
            str2 = this.f47108k0.mo13768b(C2752R.string.PremiumUserTabSubHeaderNonPremium, new Object[0]);
            str = null;
            z = false;
        }
        return new C16710n0(i, mo13768b, str2, z, str);
    }

    /* renamed from: fk */
    public void m16992fk() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17025Qq();
        }
        m16988ik("FEATURE_TYPE_REFERRAL");
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0141  */
    /* renamed from: gk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16991gk() {
        /*
            Method dump skipped, instructions count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1011l.p1013c.C16810j.m16991gk():void");
    }

    /* renamed from: hk */
    public void mo9029Y0(AbstractC16809i abstractC16809i) {
        l.e(abstractC16809i, "presenterView");
        super.mo9029Y0(abstractC16809i);
        this.f47115r0.m19905b(this);
        this.f47114q0.mo12988w();
        AbstractC10908f.m25507e(this.f47098B0.f32409k, false, null, 3, null);
        AbstractC10908f.m25507e(this.f47098B0.f32402d, false, null, 3, null);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16660e1
    /* renamed from: ii */
    public void mo16989ii(C21345i c21345i) {
        l.e(c21345i, "ghostCallConfig");
        if (!this.f47105h0.mo9831c()) {
            mo16995ee();
        } else if (c21345i.f59761d != ScheduleDuration.IMMEDIATE && !this.f47105h0.mo9827y()) {
            AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
            if (abstractC16809i == null) {
                return;
            }
            abstractC16809i.mo17029Kh();
        } else {
            Integer num = c21345i.f59763f;
            if (num != null) {
                int intValue = num.intValue();
                C21337a c21337a = this.f47106i0;
                String name = c21345i.f59761d.name();
                boolean mo16949h = this.f47097A0.mo16949h(NewFeatureLabelType.GHOST_CALL);
                Objects.requireNonNull(c21337a);
                l.e(name, "delay");
                C10480a.m26037O1(new C21341d(name, intValue, c21337a.f59734d.m17200a(), mo16949h), c21337a);
            }
            this.f47105h0.mo9834B(c21345i);
            C16710n0 c16710n0 = this.f47100W;
            if (this.f47301m || this.f47302n) {
                return;
            }
            List<C16717p> list = this.f47101X;
            ArrayList arrayList = new ArrayList();
            if (c16710n0 != null) {
                arrayList.add(c16710n0);
                arrayList.addAll(list);
            }
            l.e(list, "currentCards");
            List<C16717p> a1 = i.a1(list);
            ArrayList arrayList2 = (ArrayList) a1;
            Iterator it = arrayList2.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    i = -1;
                    break;
                } else if (((C16717p) it.next()).f46880b instanceof AbstractC16736t.C16740d) {
                    break;
                } else {
                    i++;
                }
            }
            Integer valueOf = Integer.valueOf(i);
            boolean z = false;
            if (valueOf.intValue() != -1) {
                z = true;
            }
            if (!z) {
                valueOf = null;
            }
            ArrayList arrayList3 = a1;
            if (valueOf != null) {
                int intValue2 = valueOf.intValue();
                C16723q c16723q = ((C16717p) arrayList2.get(intValue2)).f46879a;
                C17288a c17288a = ((C16717p) arrayList2.get(intValue2)).f46881c;
                AbstractC16736t abstractC16736t = ((C16717p) arrayList2.get(intValue2)).f46880b;
                Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.GhostCall");
                AbstractC16736t.C16740d c16740d = (AbstractC16736t.C16740d) abstractC16736t;
                C16717p c16717p = new C16717p(c16723q, ((C16670g0) this.f47117t0.get()).m17138a(), c17288a);
                ArrayList arrayList4 = new ArrayList(a1);
                arrayList4.set(intValue2, c16717p);
                arrayList3 = arrayList4;
            }
            ArrayList arrayList5 = new ArrayList();
            if (c16710n0 != null) {
                arrayList5.add(c16710n0);
                arrayList5.addAll(arrayList3);
            }
            this.f47100W = c16710n0;
            this.f47101X = arrayList3;
            AbstractC16809i abstractC16809i2 = (AbstractC16809i) this.f57683a;
            if (abstractC16809i2 == null) {
                return;
            }
            abstractC16809i2.mo17016ok(arrayList, arrayList5);
        }
    }

    /* renamed from: ik */
    public void m16988ik(String str) {
        l.e(str, RemoteMessageConst.Notification.TAG);
        C16704m c16704m = this.f47123z0;
        Objects.requireNonNull(c16704m);
        l.e(str, RemoteMessageConst.Notification.TAG);
        C16708n c16708n = c16704m.f46852a;
        Objects.requireNonNull(c16708n);
        l.e(str, RemoteMessageConst.Notification.TAG);
        C16713o c16713o = c16708n.f46860b.get(str);
        if (c16713o == null) {
            C16699l c16699l = c16704m.f46853b;
            Objects.requireNonNull(c16699l);
            l.e(str, RemoteMessageConst.Notification.TAG);
            c16713o = new C16713o(0L, ((C16695k) i.H(c16699l.f46842a, str)).f46837b);
        }
        C16708n c16708n2 = c16704m.f46852a;
        b bVar = new b();
        l.d(bVar, "DateTime.now()");
        C16713o c16713o2 = new C16713o(((w3.b.a.e0.e) bVar).a, c16713o.f46873b - 1);
        Objects.requireNonNull(c16708n2);
        l.e(str, RemoteMessageConst.Notification.TAG);
        l.e(c16713o2, "entry");
        c16708n2.f46860b.put(str, c16713o2);
        AbstractC16832c2 abstractC16832c2 = c16708n2.f46861c;
        String m = c16708n2.f46859a.m(c16708n2.f46860b);
        l.d(m, "gson.toJson(data)");
        abstractC16832c2.mo16878t(m);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16814d(str, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16781z0
    /* renamed from: j3 */
    public void mo16987j3(boolean z) {
        C16710n0 c16710n0 = this.f47100W;
        if (this.f47301m || this.f47302n) {
            return;
        }
        List<C16717p> list = this.f47101X;
        ArrayList arrayList = new ArrayList();
        if (c16710n0 != null) {
            arrayList.add(c16710n0);
            arrayList.addAll(list);
        }
        l.e(list, "currentCards");
        List<C16717p> a1 = i.a1(list);
        C17288a mo16948i = this.f47097A0.mo16948i(NewFeatureLabelType.ANNOUNCE_CALL);
        Iterator<C16717p> it = a1.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next().f46880b instanceof AbstractC16736t.C16737a) {
                break;
            } else {
                i++;
            }
        }
        Integer valueOf = Integer.valueOf(i);
        boolean z2 = false;
        if (valueOf.intValue() != -1) {
            z2 = true;
        }
        if (!z2) {
            valueOf = null;
        }
        ArrayList arrayList2 = a1;
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            C16723q c16723q = a1.get(intValue).f46879a;
            C17288a c17288a = mo16948i != null ? mo16948i : a1.get(intValue).f46881c;
            AbstractC16736t abstractC16736t = a1.get(intValue).f46880b;
            Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.AnnounceCallerId");
            AbstractC16736t.C16737a c16737a = (AbstractC16736t.C16737a) abstractC16736t;
            C16717p c16717p = new C16717p(c16723q, ((C16658e) this.f47112o0.get()).m17152a(), c17288a);
            ArrayList arrayList3 = new ArrayList(a1);
            arrayList3.set(intValue, c16717p);
            arrayList2 = arrayList3;
        }
        ArrayList arrayList4 = new ArrayList();
        if (c16710n0 != null) {
            arrayList4.add(c16710n0);
            arrayList4.addAll(arrayList2);
        }
        this.f47100W = c16710n0;
        this.f47101X = arrayList2;
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i == null) {
            return;
        }
        abstractC16809i.mo17016ok(arrayList, arrayList4);
    }

    /* renamed from: jk */
    public void m16986jk() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17015v6();
        }
    }

    /* renamed from: kk */
    public final void m16985kk(C16717p c16717p) {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16819i(this.f47101X.indexOf(c16717p) + 1, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16660e1
    /* renamed from: lg */
    public void mo16984lg(String str) {
        this.f47107j0.mo9796Y(str);
        C16710n0 c16710n0 = this.f47100W;
        if (this.f47301m || this.f47302n) {
            return;
        }
        List<C16717p> list = this.f47101X;
        ArrayList arrayList = new ArrayList();
        if (c16710n0 != null) {
            arrayList.add(c16710n0);
            arrayList.addAll(list);
        }
        l.e(list, "currentCards");
        List<C16717p> a1 = i.a1(list);
        Iterator<C16717p> it = a1.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next().f46880b instanceof AbstractC16736t.C16740d) {
                break;
            } else {
                i++;
            }
        }
        Integer valueOf = Integer.valueOf(i);
        boolean z = false;
        if (valueOf.intValue() != -1) {
            z = true;
        }
        if (!z) {
            valueOf = null;
        }
        ArrayList arrayList2 = a1;
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            C16723q c16723q = a1.get(intValue).f46879a;
            C17288a c17288a = a1.get(intValue).f46881c;
            AbstractC16736t abstractC16736t = a1.get(intValue).f46880b;
            Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.GhostCall");
            AbstractC16736t.C16740d c16740d = (AbstractC16736t.C16740d) abstractC16736t;
            C16717p c16717p = new C16717p(c16723q, ((C16670g0) this.f47117t0.get()).m17138a(), c17288a);
            ArrayList arrayList3 = new ArrayList(a1);
            arrayList3.set(intValue, c16717p);
            arrayList2 = arrayList3;
        }
        ArrayList arrayList4 = new ArrayList();
        if (c16710n0 != null) {
            arrayList4.add(c16710n0);
            arrayList4.addAll(arrayList2);
        }
        this.f47100W = c16710n0;
        this.f47101X = arrayList2;
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i == null) {
            return;
        }
        abstractC16809i.mo17016ok(arrayList, arrayList4);
    }

    /* renamed from: lk */
    public final void m16983lk() {
        if (!this.f47102Y.mo16408H() || !l.a(this.f47102Y.mo16411D2(), "gold")) {
            AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
            if (abstractC16809i == null) {
                return;
            }
            abstractC16809i.mo17023U8();
            return;
        }
        AbstractC16809i abstractC16809i2 = (AbstractC16809i) this.f57683a;
        if (abstractC16809i2 == null) {
            return;
        }
        abstractC16809i2.mo17031Ji();
    }

    @Override // p193e.p194a.p804h.p806b.AbstractC14619r.AbstractC14620a
    public void onDataChanged() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16812b(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1011l.AbstractC16856e0, p193e.p194a.p1011l.AbstractC16847d0
    public void onResume() {
        super.onResume();
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16817g(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16734s1
    /* renamed from: pg */
    public void mo16982pg() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17017o4();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16734s1
    /* renamed from: u2 */
    public void mo16981u2() {
        C16710n0 c16710n0 = this.f47100W;
        if (this.f47301m || this.f47302n) {
            return;
        }
        List<C16717p> list = this.f47101X;
        ArrayList arrayList = new ArrayList();
        if (c16710n0 != null) {
            arrayList.add(c16710n0);
            arrayList.addAll(list);
        }
        l.e(list, "currentCards");
        List<C16717p> a1 = i.a1(list);
        Iterator<C16717p> it = a1.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (it.next().f46880b instanceof AbstractC16736t.C16747k) {
                break;
            } else {
                i++;
            }
        }
        Integer valueOf = Integer.valueOf(i);
        boolean z = false;
        if (valueOf.intValue() != -1) {
            z = true;
        }
        if (!z) {
            valueOf = null;
        }
        ArrayList arrayList2 = a1;
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            C16723q c16723q = a1.get(intValue).f46879a;
            C17288a c17288a = a1.get(intValue).f46881c;
            AbstractC16736t abstractC16736t = a1.get(intValue).f46880b;
            Objects.requireNonNull(abstractC16736t, "null cannot be cast to non-null type com.truecaller.premium.premiumusertab.list.CardPayload.SpamProtection");
            AbstractC16736t.C16747k c16747k = (AbstractC16736t.C16747k) abstractC16736t;
            C16717p c16717p = new C16717p(c16723q, this.f47116s0.m17066a(), c17288a);
            ArrayList arrayList3 = new ArrayList(a1);
            arrayList3.set(intValue, c16717p);
            arrayList2 = arrayList3;
        }
        ArrayList arrayList4 = new ArrayList();
        if (c16710n0 != null) {
            arrayList4.add(c16710n0);
            arrayList4.addAll(arrayList2);
        }
        this.f47100W = c16710n0;
        this.f47101X = arrayList2;
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i == null) {
            return;
        }
        abstractC16809i.mo17016ok(arrayList, arrayList4);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16660e1
    /* renamed from: v4 */
    public void mo16980v4() {
        AbstractC16809i abstractC16809i = (AbstractC16809i) this.f57683a;
        if (abstractC16809i != null) {
            abstractC16809i.mo17027Nw();
        }
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16672g2
    /* renamed from: z9 */
    public C16710n0 mo16979z9(AbstractC16677h2 abstractC16677h2, s1.a.l<?> lVar) {
        l.e(abstractC16677h2, "thisRef");
        l.e(lVar, "property");
        return this.f47100W;
    }
}
