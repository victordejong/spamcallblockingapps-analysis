package p193e.p194a.p1342w4.p1344s;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.view.ContextThemeWrapper;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.ads.AdLayoutTypeX;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.blocking.ActionSource;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.common.network.country.CountryListDto;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.SpamCategoryModel;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.log.AssertionUtil;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.ImGroupInfo;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TransportInfo;
import com.truecaller.messaging.transport.history.HistoryTransportInfo;
import com.truecaller.search.global.CompositeAdapterDelegate;
import e.m.d.y.n;
import e.m.e.t;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1050l5.p1051a.C17629l0;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19132z;
import p193e.p194a.p1114o5.p1119c2.AbstractC18977k;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1129p5.C19253p0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1146q2.p1155y0.p1156a.C19597a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1342w4.p1343r.AbstractC21220a;
import p193e.p194a.p1342w4.p1343r.AbstractC21222c;
import p193e.p194a.p1342w4.p1344s.AbstractC21282r0;
import p193e.p194a.p1342w4.p1344s.C21276p0;
import p193e.p194a.p1342w4.p1345t.p1346a.C21300e;
import p193e.p194a.p1356x2.C21393c;
import p193e.p194a.p1405z2.AbstractC21847a;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p200c.AbstractC5403j6;
import p193e.p194a.p195a.p200c.C5282f8;
import p193e.p194a.p195a.p200c.C5826y6;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6132d;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6156x;
import p193e.p194a.p195a.p241i1.AbstractC6394b;
import p193e.p194a.p288a0.AbstractC7395n;
import p193e.p194a.p288a0.AbstractC7401p;
import p193e.p194a.p288a0.AbstractC7407v;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p762g.C14030t;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p998j.AbstractC16480g;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.f0.v;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
import s1.z.c.y;
import w3.b.a.b;
import w3.c.a.a.a.h;
/* renamed from: e.a.w4.s.g0 */
/* loaded from: classes13-dex2jar.jar:e/a/w4/s/g0.class */
public final class C21246g0 extends AbstractC20574a<AbstractC21254h0> implements AbstractC21242e0, C21276p0.AbstractC21277a, AbstractC21222c, AbstractC16480g.AbstractC16481a {

    /* renamed from: A */
    public final AbstractC14028r f59498A;

    /* renamed from: B */
    public final AbstractC16480g f59499B;

    /* renamed from: C */
    public final AbstractC19233h0 f59500C;

    /* renamed from: D */
    public final int f59501D;

    /* renamed from: E */
    public final C21300e f59502E;

    /* renamed from: J */
    public final CompositeAdapterDelegate f59503J;

    /* renamed from: K */
    public final AbstractC17405c f59504K;

    /* renamed from: L */
    public final Handler f59505L;

    /* renamed from: M */
    public final AbstractC19132z f59506M;

    /* renamed from: N */
    public final AbstractC19462a f59507N;

    /* renamed from: O */
    public final AbstractC6392i0 f59508O;

    /* renamed from: P */
    public final C21276p0 f59509P;

    /* renamed from: Q */
    public final AbstractC14840m f59510Q;

    /* renamed from: R */
    public final AbstractC21220a f59511R;

    /* renamed from: S */
    public final AbstractC18977k f59512S;

    /* renamed from: T */
    public final AbstractC21881d f59513T;

    /* renamed from: U */
    public final boolean f59514U;

    /* renamed from: V */
    public final AbstractC19854f<AbstractC19463a0> f59515V;

    /* renamed from: W */
    public final AbstractC18951b0 f59516W;

    /* renamed from: X */
    public final AbstractC16498f f59517X;

    /* renamed from: Y */
    public final AbstractC5403j6 f59518Y;

    /* renamed from: Z */
    public final AbstractC14537p f59519Z;

    /* renamed from: d */
    public AbstractC21286s0 f59520d;

    /* renamed from: f */
    public boolean f59522f;

    /* renamed from: g0 */
    public final String f59524g0;

    /* renamed from: h0 */
    public final AbstractC21847a f59526h0;

    /* renamed from: i0 */
    public final AbstractC7395n f59528i0;

    /* renamed from: j0 */
    public final AbstractC7401p f59530j0;

    /* renamed from: k0 */
    public final C5826y6 f59532k0;

    /* renamed from: l0 */
    public final AbstractC8621z f59534l0;

    /* renamed from: m */
    public String f59535m;

    /* renamed from: m0 */
    public final AbstractC6394b f59536m0;

    /* renamed from: n */
    public CountryListDto.C3679a f59537n;

    /* renamed from: n0 */
    public final boolean f59538n0;

    /* renamed from: o */
    public CountryListDto.C3679a f59539o;

    /* renamed from: o0 */
    public final AbstractC7407v f59540o0;

    /* renamed from: p */
    public String f59541p;

    /* renamed from: q */
    public String f59542q;

    /* renamed from: r */
    public CountryListDto.C3679a f59543r;

    /* renamed from: s */
    public AsyncTask<?, ?, ?> f59544s;

    /* renamed from: t */
    public boolean f59545t;

    /* renamed from: u */
    public boolean f59546u;

    /* renamed from: v */
    public boolean f59547v;

    /* renamed from: w */
    public boolean f59548w;

    /* renamed from: x */
    public AbstractC21284s f59549x;

    /* renamed from: y */
    public final AbstractC19230g f59550y;

    /* renamed from: z */
    public final AbstractC19022f0 f59551z;

    /* renamed from: e */
    public CancellationSignal f59521e = new CancellationSignal();

    /* renamed from: g */
    public final List<C21293y> f59523g = new ArrayList();

    /* renamed from: h */
    public final List<Conversation> f59525h = new ArrayList();

    /* renamed from: i */
    public final List<k<Message, ImGroupInfo>> f59527i = new ArrayList();

    /* renamed from: j */
    public final List<Contact> f59529j = new ArrayList();

    /* renamed from: k */
    public String f59531k = "";

    /* renamed from: l */
    public String f59533l = "";

    /* renamed from: e.a.w4.s.g0$a */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/g0$a.class */
    public static final class C21247a extends m implements l<Integer, s> {

        /* renamed from: c */
        public final /* synthetic */ y f59553c;

        /* renamed from: d */
        public final /* synthetic */ String f59554d;

        /* renamed from: e */
        public final /* synthetic */ AbstractC21282r0.AbstractC21283a f59555e;

        /* renamed from: f */
        public final /* synthetic */ String f59556f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21247a(y yVar, String str, AbstractC21282r0.AbstractC21283a abstractC21283a, String str2) {
            super(1);
            C21246g0.this = r4;
            this.f59553c = yVar;
            this.f59554d = str;
            this.f59555e = abstractC21283a;
            this.f59556f = str2;
        }

        /* renamed from: d */
        public Object m10049d(Object obj) {
            int max;
            int intValue = ((Number) obj).intValue();
            this.f59553c.a = this.f59554d.length() > intValue;
            AbstractC21282r0.AbstractC21283a abstractC21283a = this.f59555e;
            String str = C21246g0.this.f59531k;
            String str2 = this.f59554d;
            String str3 = this.f59556f;
            s1.z.c.l.e(abstractC21283a, "$this$highlightMessageIfMatched");
            s1.z.c.l.e(str, "pattern");
            s1.z.c.l.e(str2, "originalValue");
            s1.z.c.l.e(str3, "prefix");
            if (str2.length() > intValue) {
                CharSequence subSequence = str2.subSequence(0, intValue);
                int H = v.H(str2, str, 0, true, 2);
                if ((subSequence.length() > 0) && !v.z(subSequence, str2, true) && H > 0 && (max = H - Math.max(intValue - str.length(), 0)) > 0) {
                    String substring = str2.substring(max);
                    s1.z.c.l.d(substring, "(this as java.lang.String).substring(startIndex)");
                    int length = str3.length() + v.H(substring, str, 0, true, 2);
                    abstractC21283a.mo10018k3(C22128a.m8543z2(str3, substring), length, str.length() + length);
                }
            }
            return s.a;
        }
    }

    /* renamed from: e.a.w4.s.g0$b */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/g0$b.class */
    public static final class RunnableC21248b implements Runnable {
        public RunnableC21248b() {
            C21246g0.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C21246g0 c21246g0 = C21246g0.this;
            c21246g0.m10073Uj(c21246g0.f59535m, false);
        }
    }

    /* renamed from: e.a.w4.s.g0$c */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/g0$c.class */
    public static final class RunnableC21249c implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ boolean f59559b;

        public RunnableC21249c(boolean z) {
            C21246g0.this = r4;
            this.f59559b = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C21246g0.this.m10073Uj(null, this.f59559b);
        }
    }

    /* renamed from: e.a.w4.s.g0$d */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/g0$d.class */
    public static final class C21250d implements C14022p.AbstractC14024b {
        public C21250d() {
            C21246g0.this = r4;
        }

        @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14024b
        /* renamed from: a */
        public final C14030t mo10048a(C14030t c14030t, String str) {
            s1.z.c.l.e(c14030t, "searchResult");
            try {
                c14030t = C21246g0.m10093Ij(C21246g0.this, c14030t);
            } catch (Exception e) {
            }
            return c14030t;
        }
    }

    @e(c = "com.truecaller.search.global.GlobalSearchPresenterImpl$triggerGroupsSearch$1", f = "GlobalSearchPresenterImpl.kt", l = {414}, m = "invokeSuspend")
    /* renamed from: e.a.w4.s.g0$e */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/g0$e.class */
    public static final class C21251e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f59561e;

        /* renamed from: g */
        public final /* synthetic */ String f59563g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21251e(String str, d dVar) {
            super(2, dVar);
            C21246g0.this = r5;
            this.f59563g = str;
        }

        /* renamed from: i */
        public final d<s> m10047i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C21251e(this.f59563g, dVar);
        }

        /* renamed from: k */
        public final Object m10046k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C21251e(this.f59563g, dVar).m10045s(s.a);
        }

        /* renamed from: s */
        public final Object m10045s(Object obj) {
            ArrayList arrayList;
            a aVar = a.a;
            int i = this.f59561e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5826y6 c5826y6 = C21246g0.this.f59532k0;
                String str = this.f59563g;
                this.f59561e = 1;
                Object mo31571e = c5826y6.f19561d.mo31571e(str, new Integer(200), this);
                obj = mo31571e;
                if (mo31571e == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC6132d abstractC6132d = (AbstractC6132d) obj;
            C21246g0 c21246g0 = C21246g0.this;
            Objects.requireNonNull(c21246g0);
            if (abstractC6132d == null) {
                arrayList = s1.u.s.a;
            } else {
                arrayList = new ArrayList(abstractC6132d.getCount());
                while (abstractC6132d.moveToNext()) {
                    arrayList.add(abstractC6132d.mo31748Q1());
                }
                abstractC6132d.close();
            }
            c21246g0.m10086Nj(arrayList);
            c21246g0.f59545t = false;
            if (c21246g0.f59546u) {
                c21246g0.f59546u = false;
                c21246g0.m10068Wj(c21246g0.f59531k);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.search.global.GlobalSearchPresenterImpl$triggerMessagesSearch$1", f = "GlobalSearchPresenterImpl.kt", l = {462}, m = "invokeSuspend")
    /* renamed from: e.a.w4.s.g0$f */
    /* loaded from: classes13-dex2jar.jar:e/a/w4/s/g0$f.class */
    public static final class C21252f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f59564e;

        /* renamed from: g */
        public final /* synthetic */ String f59566g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21252f(String str, d dVar) {
            super(2, dVar);
            C21246g0.this = r5;
            this.f59566g = str;
        }

        /* renamed from: i */
        public final d<s> m10044i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C21252f(this.f59566g, dVar);
        }

        /* renamed from: k */
        public final Object m10043k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C21252f(this.f59566g, dVar).m10042s(s.a);
        }

        /* renamed from: s */
        public final Object m10042s(Object obj) {
            ArrayList arrayList;
            a aVar = a.a;
            int i = this.f59564e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5826y6 c5826y6 = C21246g0.this.f59532k0;
                String str = this.f59566g;
                this.f59564e = 1;
                Object mo31554v = c5826y6.f19561d.mo31554v(str, 200, this);
                obj = mo31554v;
                if (mo31554v == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC6156x abstractC6156x = (AbstractC6156x) obj;
            C21246g0 c21246g0 = C21246g0.this;
            Objects.requireNonNull(c21246g0);
            if (abstractC6156x == null) {
                arrayList = s1.u.s.a;
            } else {
                arrayList = new ArrayList(abstractC6156x.getCount());
                while (abstractC6156x.moveToNext()) {
                    arrayList.add(new k(abstractC6156x.getMessage(), abstractC6156x.mo31729I0()));
                }
                abstractC6156x.close();
            }
            s1.a.a.a.v0.f.d.w2(c21246g0, (f) null, (j0) null, new C21244f0(c21246g0, arrayList, null), 3, (Object) null);
            c21246g0.m10083Oj(arrayList);
            c21246g0.f59547v = false;
            if (c21246g0.f59548w) {
                c21246g0.f59548w = false;
                c21246g0.m10067Xj(c21246g0.f59531k);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C21246g0(@Named("UI") f fVar, AbstractC19230g abstractC19230g, AbstractC19022f0 abstractC19022f0, AbstractC14028r abstractC14028r, AbstractC16480g abstractC16480g, AbstractC19233h0 abstractC19233h0, @Named("number_of_items") int i, C21300e c21300e, CompositeAdapterDelegate compositeAdapterDelegate, @Named("global_search_availability_manager") AbstractC17405c abstractC17405c, Handler handler, AbstractC19132z abstractC19132z, AbstractC19462a abstractC19462a, AbstractC6392i0 abstractC6392i0, C21276p0 c21276p0, AbstractC14840m abstractC14840m, AbstractC21220a abstractC21220a, AbstractC18977k abstractC18977k, AbstractC21881d abstractC21881d, @Named("is_scanner_enabled") boolean z, AbstractC19854f<AbstractC19463a0> abstractC19854f, AbstractC18951b0 abstractC18951b0, AbstractC16498f abstractC16498f, AbstractC5403j6 abstractC5403j6, AbstractC14537p abstractC14537p, @Named("ad_unit_id") String str, AbstractC21847a abstractC21847a, AbstractC7395n abstractC7395n, AbstractC7401p abstractC7401p, C5826y6 c5826y6, AbstractC8621z abstractC8621z, AbstractC6394b abstractC6394b, boolean z2, AbstractC7407v abstractC7407v) {
        super(fVar);
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(abstractC19230g, "deviceInfoUtil");
        s1.z.c.l.e(abstractC19022f0, "deviceManager");
        s1.z.c.l.e(abstractC14028r, "searchManager");
        s1.z.c.l.e(abstractC16480g, "localContactsSearcher");
        s1.z.c.l.e(abstractC19233h0, "resourceProvider");
        s1.z.c.l.e(c21300e, "searchMatcher");
        s1.z.c.l.e(compositeAdapterDelegate, "adapterDelegate");
        s1.z.c.l.e(abstractC17405c, "availabilityManager");
        s1.z.c.l.e(handler, "handler");
        s1.z.c.l.e(abstractC19132z, "countryManager");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC6392i0, "settings");
        s1.z.c.l.e(c21276p0, "populateFilterMatchHelper");
        s1.z.c.l.e(abstractC14840m, "filterSettings");
        s1.z.c.l.e(abstractC21220a, "adsHelper");
        s1.z.c.l.e(abstractC18977k, "partnerInfo");
        s1.z.c.l.e(abstractC21881d, "generalSettings");
        s1.z.c.l.e(abstractC19854f, "eventsTracker");
        s1.z.c.l.e(abstractC18951b0, "dateHelper");
        s1.z.c.l.e(abstractC16498f, "numberProvider");
        s1.z.c.l.e(abstractC5403j6, "historyMessagesResourceProvider");
        s1.z.c.l.e(abstractC14537p, "tagDisplayUtil");
        s1.z.c.l.e(str, "adUnitId");
        s1.z.c.l.e(abstractC21847a, "badgeHelper");
        s1.z.c.l.e(abstractC7395n, "spamCategoryFetcher");
        s1.z.c.l.e(abstractC7401p, "spamCategoryBuilder");
        s1.z.c.l.e(c5826y6, "messageDetailsProvider");
        s1.z.c.l.e(abstractC8621z, "phoneNumberHelper");
        s1.z.c.l.e(abstractC6394b, "messageUtil");
        s1.z.c.l.e(abstractC7407v, "spamDetailsBuilder");
        this.f59550y = abstractC19230g;
        this.f59551z = abstractC19022f0;
        this.f59498A = abstractC14028r;
        this.f59499B = abstractC16480g;
        this.f59500C = abstractC19233h0;
        this.f59501D = i;
        this.f59502E = c21300e;
        this.f59503J = compositeAdapterDelegate;
        this.f59504K = abstractC17405c;
        this.f59505L = handler;
        this.f59506M = abstractC19132z;
        this.f59507N = abstractC19462a;
        this.f59508O = abstractC6392i0;
        this.f59509P = c21276p0;
        this.f59510Q = abstractC14840m;
        this.f59511R = abstractC21220a;
        this.f59512S = abstractC18977k;
        this.f59513T = abstractC21881d;
        this.f59514U = z;
        this.f59515V = abstractC19854f;
        this.f59516W = abstractC18951b0;
        this.f59517X = abstractC16498f;
        this.f59518Y = abstractC5403j6;
        this.f59519Z = abstractC14537p;
        this.f59524g0 = str;
        this.f59526h0 = abstractC21847a;
        this.f59528i0 = abstractC7395n;
        this.f59530j0 = abstractC7401p;
        this.f59532k0 = c5826y6;
        this.f59534l0 = abstractC8621z;
        this.f59536m0 = abstractC6394b;
        this.f59538n0 = z2;
        this.f59540o0 = abstractC7407v;
        AbstractC21284s mo9958f = compositeAdapterDelegate.mo9958f();
        s1.z.c.l.d(mo9958f, "adapterDelegate.main()");
        this.f59549x = mo9958f;
    }

    /* renamed from: Ij */
    public static final C14030t m10093Ij(C21246g0 c21246g0, C14030t c14030t) {
        Objects.requireNonNull(c21246g0);
        ArrayList arrayList = new ArrayList();
        for (Contact contact : c14030t.f40582c) {
            AbstractC7395n abstractC7395n = c21246g0.f59528i0;
            s1.z.c.l.d(contact, "each");
            List<SpamCategoryModel> mo29690d = abstractC7395n.mo29690d(contact);
            if (!mo29690d.isEmpty()) {
                C17891a1.C17902k.m15659M0(contact, mo29690d);
            }
            s1.z.c.l.d(contact, "if (categories.isEmpty()…lse each.join(categories)");
            arrayList.add(contact);
        }
        return new C14030t(c14030t.f40586g, c14030t.f40580a, Collections.unmodifiableList(arrayList), new ContactDto.Pagination(c14030t.f40583d, c14030t.f40584e, c14030t.f40585f), c14030t.f40581b);
    }

    @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
    /* renamed from: Aa */
    public void mo10096Aa(Throwable th, int i) {
        PV pv = this.f57683a;
        if (pv != 0 && this.f59544s != null && th != null) {
            this.f59541p = null;
            ((AbstractC21291w) this.f59503J.mo9951m()).f59633h = false;
            m10078Rj(false);
        } else if (pv == 0) {
        } else {
            ((AbstractC21291w) this.f59503J.mo9951m()).f59633h = false;
            m10078Rj(false);
            m10080Qj(s1.u.s.a);
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.C21276p0.AbstractC21277a
    /* renamed from: Dg */
    public void mo10010Dg(List<C21293y> list) {
        s1.z.c.l.e(list, "results");
        m10087Mj(list);
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: G */
    public void mo10095G(AbstractC21282r0 abstractC21282r0, int i) {
        AbstractC21282r0 abstractC21282r02 = abstractC21282r0;
        s1.z.c.l.e(abstractC21282r02, "presenterView");
        ((AbstractC21291w) this.f59549x).m9972a(abstractC21282r02, i);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: Hf */
    public boolean mo10094Hf(C18900h c18900h) {
        s1.z.c.l.e(c18900h, "event");
        if (s1.z.c.l.a(c18900h.f53001a, "Call")) {
            Contact contact = (Contact) c18900h.f53005e;
            if (contact == null) {
                return false;
            }
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h0 == null) {
                return true;
            }
            abstractC21254h0.mo10036Uz(contact);
            return true;
        }
        return true;
    }

    /* renamed from: Jj */
    public final Contact m10092Jj(int i, int i2) {
        if (i2 >= 0) {
            if (i == 2131364002) {
                return this.f59523g.get(((AbstractC21291w) this.f59549x).m9970d(i2)).f59645a;
            } else if (i != 2131364009) {
                return null;
            } else {
                return this.f59529j.get(((AbstractC21291w) this.f59549x).m9970d(i2));
            }
        }
        StringBuilder m8728C = C22128a.m8728C("Adapter position was -1 nesting order: ");
        m8728C.append(this.f59503J.mo9953k());
        m8728C.append(' ');
        m8728C.append("showing all results ? ");
        m8728C.append(this.f59522f);
        m8728C.append(" main adapter: ");
        m8728C.append(this.f59503J.mo9958f().getClass().getSimpleName());
        AssertionUtil.shouldNeverHappen(new IllegalStateException(m8728C.toString()), new String[0]);
        return null;
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Kb */
    public int mo10091Kb() {
        return ((AbstractC21291w) this.f59549x).m9968f();
    }

    /* renamed from: Kj */
    public final void m10090Kj(String str, t tVar) {
        s1.z.c.l.e(str, "eventType");
        s1.z.c.l.e(tVar, "eventContent");
        AbstractC19463a0 mo11854a = this.f59515V.mo11854a();
        C17629l0.C17631b m15911a = C17629l0.m15911a();
        m15911a.m15908c(str);
        m15911a.m15909b(tVar.toString());
        mo11854a.mo13111a(m15911a.build());
    }

    /* renamed from: Lj */
    public final void m10089Lj(Contact contact, ViewActionEvent.DetailsSubAction detailsSubAction) {
        AbstractC21286s0 abstractC21286s0;
        if (contact == null || this.f57683a == 0 || (abstractC21286s0 = this.f59520d) == null) {
            return;
        }
        boolean z = detailsSubAction == ViewActionEvent.DetailsSubAction.TRUECALLER;
        abstractC21286s0.mo9985e0();
        if (contact.m35523d1()) {
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h0 != null) {
                abstractC21254h0.mo10034X9(contact, SourceType.SearchResult);
            }
        } else {
            AbstractC21254h0 abstractC21254h02 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h02 != null) {
                abstractC21254h02.mo10032fz(contact, SourceType.SearchResult);
            }
        }
        if (contact.f11531z == 2) {
            detailsSubAction = ViewActionEvent.DetailsSubAction.CLOUD_CONTACT;
        }
        if (z && !C19231g0.m13812E(this.f59531k)) {
            AbstractC19462a abstractC19462a = this.f59507N;
            ViewActionEvent.DetailsSubAction detailsSubAction2 = ViewActionEvent.DetailsSubAction.NAME_CLICKED;
            s1.z.c.l.e("searchResults", AnalyticsConstants.CONTEXT);
            s1.z.c.l.e(detailsSubAction2, "subAction");
            String value = detailsSubAction2.getValue();
            s1.z.c.l.e("details", "action");
            abstractC19462a.mo13274b(new ViewActionEvent("details", value, "searchResults"));
        }
        AbstractC19462a abstractC19462a2 = this.f59507N;
        s1.z.c.l.e("searchResults", AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(detailsSubAction, "subAction");
        String value2 = detailsSubAction.getValue();
        s1.z.c.l.e("details", "action");
        abstractC19462a2.mo13274b(new ViewActionEvent("details", value2, "searchResults"));
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: M8 */
    public void mo10088M8(C21289u c21289u, int i, String str) {
        s1.z.c.l.e(c21289u, "viewHolder");
        s1.z.c.l.e(str, "adId");
        AbstractC15183d mo10120c = this.f59511R.mo10120c(str, i);
        c21289u.f59625d.removeAllViews();
        if (mo10120c == null) {
            c21289u.f59625d.setVisibility(8);
            return;
        }
        Context context = c21289u.itemView.getContext();
        Context context2 = context;
        if (context instanceof ContextThemeWrapper) {
            context2 = ((ContextWrapper) context).getBaseContext();
        }
        c21289u.f59625d.addView(n.x((Activity) context2, AdLayoutTypeX.SMALL, mo10120c));
        c21289u.f59625d.setVisibility(0);
    }

    /* renamed from: Mj */
    public final void m10087Mj(List<C21293y> list) {
        if (this.f57683a == 0) {
            return;
        }
        this.f59523g.clear();
        this.f59523g.addAll(list);
        this.f59503J.mo9962b(this.f59523g.size());
        AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h0 == null) {
            return;
        }
        abstractC21254h0.mo10031l2();
    }

    /* renamed from: Nj */
    public final void m10086Nj(List<? extends Conversation> list) {
        if (this.f57683a == 0) {
            return;
        }
        this.f59525h.clear();
        this.f59525h.addAll(list);
        this.f59503J.mo9952l(this.f59525h.size());
        AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h0 == null) {
            return;
        }
        abstractC21254h0.mo10031l2();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: O0 */
    public void mo10085O0() {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h0 != null) {
            abstractC21254h0.mo10030nd();
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: Of */
    public void mo10084Of(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.TOKEN);
        PV pv = this.f57683a;
        if (pv != 0) {
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) pv;
            if (abstractC21254h0 != null) {
                abstractC21254h0.mo10027wf(str);
            }
            HashMap hashMap = new HashMap();
            hashMap.put("scanType", "multiScan");
            AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("SEARCH_scanNumber", null, hashMap, null);
            AbstractC19462a abstractC19462a = this.f59507N;
            s1.z.c.l.d(c19505a, "analyticsEvent");
            abstractC19462a.mo13271e(c19505a);
            t tVar = new t();
            tVar.j("scanType", "multiScan");
            m10090Kj("SEARCH_scanNumber", tVar);
        }
    }

    /* renamed from: Oj */
    public final void m10083Oj(List<k<Message, ImGroupInfo>> list) {
        if (this.f57683a == 0) {
            return;
        }
        this.f59527i.clear();
        this.f59527i.addAll(list);
        this.f59503J.mo9961c(this.f59527i.size());
        AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h0 == null) {
            return;
        }
        abstractC21254h0.mo10031l2();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: Pi */
    public void mo10082Pi(String str) {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        String str2 = this.f59533l;
        if (!(str == null || str.length() == 0)) {
            boolean z = true;
            if (str2 != null) {
                z = str2.length() == 0;
            }
            if (z || str.charAt(0) != str2.charAt(0)) {
                HashMap hashMap = new HashMap();
                hashMap.put("Filter_Action", "AddressField");
                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("SEARCHVIEW_Filtered", null, hashMap, null);
                AbstractC19462a abstractC19462a = this.f59507N;
                s1.z.c.l.d(c19505a, "event");
                abstractC19462a.mo13271e(c19505a);
            }
        }
        this.f59533l = str;
        if (!h.j(this.f59531k)) {
            this.f59535m = null;
            m10080Qj(s1.u.s.a);
            m10065Yj();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x013e, code lost:
        if (r11 != null) goto L41;
     */
    /* renamed from: Pj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10081Pj(p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a r10, p193e.p194a.p1342w4.p1344s.C21293y r11, com.truecaller.data.entity.Contact r12, boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 523
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1342w4.p1344s.C21246g0.m10081Pj(e.a.w4.s.r0$a, e.a.w4.s.y, com.truecaller.data.entity.Contact, boolean, boolean):void");
    }

    /* renamed from: Qj */
    public final void m10080Qj(List<? extends Contact> list) {
        s1.z.c.l.e(list, "results");
        if (this.f57683a == 0) {
            return;
        }
        this.f59529j.clear();
        this.f59529j.addAll(list);
        this.f59503J.mo9955i(this.f59529j.size());
        AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h0 == null) {
            return;
        }
        abstractC21254h0.mo10031l2();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: Rf */
    public void mo10079Rf() {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        AssertionUtil.isNotNull(this.f59520d, new String[0]);
        if (h.j(this.f59531k)) {
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h0 == null) {
                return;
            }
            abstractC21254h0.mo10035We(this.f59500C.mo13768b(C2752R.string.SearchEmptyNameOrNumber, new Object[0]));
            return;
        }
        AbstractC21286s0 abstractC21286s0 = this.f59520d;
        if (abstractC21286s0 == null) {
            return;
        }
        abstractC21286s0.mo9985e0();
    }

    /* renamed from: Rj */
    public final void m10078Rj(boolean z) {
        if (this.f59522f || (this.f59531k.length() > 2 && this.f59529j.isEmpty())) {
            ((AbstractC21291w) this.f59503J.mo9951m()).f59630e = z;
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h0 == null) {
                return;
            }
            abstractC21254h0.mo10031l2();
        }
    }

    /* renamed from: Sj */
    public final void m10077Sj(int i) {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        AssertionUtil.isNotNull(this.f59520d, new String[0]);
        this.f59522f = true;
        AbstractC21286s0 abstractC21286s0 = this.f59520d;
        if (abstractC21286s0 != null) {
            abstractC21286s0.mo9985e0();
            abstractC21286s0.mo9980l7(true);
            abstractC21286s0.mo9982g7(false);
            abstractC21286s0.mo9988X4(this.f59500C.mo13768b(C2752R.string.global_search_detail_title, this.f59531k));
            AbstractC19233h0 abstractC19233h0 = this.f59500C;
            abstractC21286s0.mo9978r7(abstractC19233h0.mo13768b(C2752R.string.global_search_detail_subtitle, abstractC19233h0.mo13768b(i, new Object[0])));
        }
        AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h0 != null) {
            abstractC21254h0.mo10029pA();
        }
        AbstractC21254h0 abstractC21254h02 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h02 != null) {
            abstractC21254h02.mo10031l2();
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: T1 */
    public void mo10076T1() {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        AssertionUtil.isNotNull(this.f59520d, new String[0]);
        AbstractC21286s0 abstractC21286s0 = this.f59520d;
        boolean z = false;
        if (abstractC21286s0 != null) {
            z = false;
            if (!abstractC21286s0.mo9977t7()) {
                z = true;
            }
        }
        AbstractC21286s0 abstractC21286s02 = this.f59520d;
        if (abstractC21286s02 != null) {
            abstractC21286s02.mo9987Y4(z);
        }
        AbstractC21286s0 abstractC21286s03 = this.f59520d;
        if (abstractC21286s03 != null) {
            abstractC21286s03.mo9989W4(z);
        }
        String str = z ? "Selected" : "Deselected";
        HashMap hashMap = new HashMap();
        hashMap.put("Location_Action", str);
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("SEARCHVIEW_Location", null, hashMap, null);
        AbstractC19462a abstractC19462a = this.f59507N;
        s1.z.c.l.d(c19505a, "analyticsEvent");
        abstractC19462a.mo13271e(c19505a);
    }

    /* renamed from: Tj */
    public final void m10075Tj() {
        AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h0 != null) {
            abstractC21254h0.mo10040Ke(false);
        }
        AbstractC21254h0 abstractC21254h02 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h02 != null) {
            abstractC21254h02.mo10038Qz(true);
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: U6 */
    public void mo10074U6() {
        AssertionUtil.isNotNull(this.f59520d, new String[0]);
        AbstractC21286s0 abstractC21286s0 = this.f59520d;
        if (abstractC21286s0 != null) {
            abstractC21286s0.mo9985e0();
        }
    }

    /* renamed from: Uj */
    public final void m10073Uj(String str, boolean z) {
        if (this.f57683a == 0) {
            return;
        }
        if (str == null) {
            if (s1.z.c.l.a(this.f59541p, this.f59531k) && s1.z.c.l.a(this.f59542q, this.f59533l) && s1.z.c.l.a(this.f59543r, this.f59539o)) {
                return;
            }
            this.f59541p = this.f59531k;
            this.f59542q = this.f59533l;
            this.f59543r = this.f59539o;
        }
        this.f59535m = null;
        boolean mo28184g = this.f59534l0.mo28184g(this.f59531k);
        boolean m13809H = C19231g0.m13809H(this.f59531k, 3);
        boolean z2 = m13809H;
        if (!z) {
            z2 = m13809H && mo28184g;
        }
        this.f59503J.mo9957g(mo28184g ? CompositeAdapterDelegate.SearchResultOrder.ORDER_CTGM : CompositeAdapterDelegate.SearchResultOrder.ORDER_CGMT);
        if (!z2) {
            ((AbstractC21291w) this.f59503J.mo9951m()).f59632g = true;
            ((AbstractC21291w) this.f59503J.mo9951m()).f59633h = false;
            ((AbstractC21291w) this.f59503J.mo9951m()).f59630e = false;
            m10080Qj(s1.u.s.a);
            this.f59541p = null;
            return;
        }
        AbstractC14028r abstractC14028r = this.f59498A;
        UUID randomUUID = UUID.randomUUID();
        s1.z.c.l.d(randomUUID, "UUID.randomUUID()");
        C14022p mo20839b = abstractC14028r.mo20839b(randomUUID, "globalSearch");
        mo20839b.f40557g = true;
        mo20839b.f40558h = false;
        mo20839b.f40559i = true;
        mo20839b.f40568r = this.f59533l;
        mo20839b.f40566p = this.f59531k;
        mo20839b.f40569s = str;
        mo20839b.f40565o = 4;
        CountryListDto.C3679a c3679a = this.f59539o;
        C14022p m20845c = mo20839b.m20845c(c3679a != null ? c3679a.f10912c : null);
        m20845c.f40564n = new C21250d();
        this.f59544s = m20845c.m20842f(null, true, true, this);
        ((AbstractC21291w) this.f59503J.mo9951m()).f59632g = false;
        m10078Rj(true);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: V6 */
    public boolean mo10072V6(AbstractC21282r0.AbstractC21283a abstractC21283a, int i) {
        s1.z.c.l.e(abstractC21283a, "searchResultView");
        Contact contact = this.f59529j.get(i);
        m10081Pj(abstractC21283a, null, contact, contact.m35574A0(), false);
        return true;
    }

    /* renamed from: Vj */
    public final void m10071Vj(boolean z) {
        m10063Zj(this.f59531k.length() == 0 ? null : this.f59506M.mo14065e(this.f59531k), false);
        if (!this.f59512S.mo14267e()) {
            return;
        }
        AsyncTask<?, ?, ?> asyncTask = this.f59544s;
        if (asyncTask != null) {
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            this.f59544s = null;
        }
        if (!this.f59551z.mo14245a()) {
            return;
        }
        this.f59505L.postDelayed(new RunnableC21249c(z), 1000L);
    }

    @Override // p193e.p194a.p997k3.p998j.AbstractC16480g.AbstractC16481a
    /* renamed from: W0 */
    public void mo10070W0(Throwable th) {
        String str = "GSearch, onError = " + th;
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: We */
    public void mo10069We(String str) {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        String str2 = this.f59531k;
        String trim = str == null ? "" : str.trim();
        s1.z.c.l.d(trim, "StringUtils.trimToEmpty(token)");
        this.f59531k = trim;
        s1.z.c.l.e(str2, "previousSearchToken");
        if (this.f59531k.length() > 0) {
            if ((str2.length() == 0) || str2.charAt(0) != this.f59531k.charAt(0)) {
                C22128a.m8711G0("SEARCHVIEW_SearchPerformed", null, C19231g0.m13812E(this.f59531k) ? C22128a.m8667T("Search_Type", "NumberSearch") : C22128a.m8667T("Search_Type", "NameSearch"), null, "event.build()", this.f59507N);
            }
        }
        if (this.f59531k.length() == 0) {
            m10075Tj();
        } else {
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h0 != null) {
                abstractC21254h0.mo10040Ke(true);
            }
            AbstractC21254h0 abstractC21254h02 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h02 != null) {
                abstractC21254h02.mo10038Qz(false);
            }
        }
        m10065Yj();
    }

    /* renamed from: Wj */
    public final void m10068Wj(String str) {
        if (str.length() == 0) {
            m10086Nj(s1.u.s.a);
        } else if (this.f59545t) {
            this.f59546u = true;
        } else {
            this.f59545t = true;
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C21251e(str, null), 3, (Object) null);
        }
    }

    /* renamed from: Xj */
    public final void m10067Xj(String str) {
        if (str.length() == 0) {
            m10083Oj(s1.u.s.a);
        } else if (this.f59547v) {
            this.f59548w = true;
        } else {
            this.f59547v = true;
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C21252f(str, null), 3, (Object) null);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.w4.s.h0, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC21254h0 abstractC21254h0) {
        AbstractC21286s0 abstractC21286s0;
        AbstractC21254h0 abstractC21254h02 = abstractC21254h0;
        s1.z.c.l.e(abstractC21254h02, "presenterView");
        this.f57683a = abstractC21254h02;
        this.f59503J.mo9956h(this);
        AbstractC19462a abstractC19462a = this.f59507N;
        s1.z.c.l.e("globalSearch", "viewId");
        abstractC19462a.mo13274b(new C19597a("globalSearch", null, null));
        this.f59511R.mo10121b(this);
        boolean mo13773x = this.f59550y.mo13773x();
        AbstractC21286s0 abstractC21286s02 = this.f59520d;
        if (abstractC21286s02 != null) {
            abstractC21286s02.mo9984e5(mo13773x && this.f59514U);
        }
        if (mo13773x && this.f59514U && !this.f59513T.getBoolean("general_hasShownScannerTooltip") && (abstractC21286s0 = this.f59520d) != null) {
            abstractC21286s0.mo9993E8();
        }
        this.f59511R.mo10119d(this.f59524g0);
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: Y1 */
    public void mo10066Y1() {
        this.f59520d = null;
    }

    /* renamed from: Yj */
    public final void m10065Yj() {
        String str = this.f59531k;
        this.f59521e.cancel();
        if (str.length() == 0) {
            m10087Mj(s1.u.s.a);
        } else {
            this.f59521e = this.f59499B.mo17346a(str, 100, this);
        }
        m10068Wj(this.f59531k);
        m10067Xj(this.f59531k);
        m10071Vj(false);
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: Za */
    public int mo10064Za(int i) {
        return ((AbstractC21291w) this.f59549x).m9967g(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (r4 != null) goto L18;
     */
    /* renamed from: Zj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10063Zj(com.truecaller.common.network.country.CountryListDto.C3679a r4, boolean r5) {
        /*
            r3 = this;
            r0 = r3
            PV r0 = r0.f57683a
            r1 = 0
            java.lang.String[] r1 = new java.lang.String[r1]
            com.truecaller.log.AssertionUtil.isNotNull(r0, r1)
            r0 = r3
            com.truecaller.common.network.country.CountryListDto$a r0 = r0.f59537n
            if (r0 != 0) goto L1f
            r0 = r3
            r1 = r3
            e.a.o5.z r1 = r1.f59506M
            com.truecaller.common.network.country.CountryListDto$a r1 = r1.mo14066d()
            r0.f59537n = r1
        L1f:
            r0 = r4
            if (r0 == 0) goto L26
            goto L2b
        L26:
            r0 = r3
            com.truecaller.common.network.country.CountryListDto$a r0 = r0.f59537n
            r4 = r0
        L2b:
            r0 = r3
            r1 = r4
            r0.f59539o = r1
            r0 = r5
            if (r0 == 0) goto L39
            r0 = r3
            r1 = r4
            r0.f59537n = r1
        L39:
            r0 = r3
            e.a.w4.s.s0 r0 = r0.f59520d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L78
            r0 = r4
            if (r0 == 0) goto L52
            r0 = r4
            java.lang.String r0 = r0.f10912c
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L52
            goto L56
        L52:
            java.lang.String r0 = ""
            r4 = r0
        L56:
            java.util.Locale r0 = java.util.Locale.getDefault()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "Locale.getDefault()"
            s1.z.c.l.d(r0, r1)
            r0 = r4
            r1 = r7
            java.lang.String r0 = r0.toUpperCase(r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "(this as java.lang.String).toUpperCase(locale)"
            s1.z.c.l.d(r0, r1)
            r0 = r6
            r1 = r4
            r0.mo9990V4(r1)
        L78:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1342w4.p1344s.C21246g0.m10063Zj(com.truecaller.common.network.country.CountryListDto$a, boolean):void");
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: bj */
    public void mo10062bj() {
        this.f59513T.putBoolean("general_hasShownScannerTooltip", true);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        AsyncTask<?, ?, ?> asyncTask = this.f59544s;
        if (asyncTask != null) {
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            this.f59544s = null;
        }
        this.f59511R.mo10122a();
    }

    @Override // p193e.p194a.AbstractC20947v0
    /* renamed from: gc */
    public long mo10061gc(int i) {
        return 0L;
    }

    @Override // p193e.p194a.p997k3.p998j.AbstractC16480g.AbstractC16481a
    /* renamed from: i9 */
    public void mo10060i9(List<? extends k<? extends Contact, String>> list) {
        s1.z.c.l.e(list, RemoteMessageConst.DATA);
        list.size();
        if (this.f57683a != 0) {
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                k kVar = (k) it.next();
                arrayList.add(new C21293y((Contact) kVar.a, (String) kVar.b, null));
            }
            m10087Mj(arrayList);
            C21276p0 c21276p0 = this.f59509P;
            Objects.requireNonNull(c21276p0);
            s1.z.c.l.e(list, "contacts");
            c21276p0.f59607a.d(new CancellationException("new populate request arrived"));
            if (list.isEmpty()) {
                return;
            }
            c21276p0.f59607a = s1.a.a.a.v0.f.d.w2(h1.a, c21276p0.f59610d, (j0) null, new C21279q0(c21276p0, list, new C19253p0(new WeakReference(this)), C21276p0.f59606g[0], null), 2, (Object) null);
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: jg */
    public void mo10059jg() {
        PV pv;
        AbstractC21254h0 abstractC21254h0;
        if (!this.f59514U || (pv = this.f57683a) == 0 || (abstractC21254h0 = (AbstractC21254h0) pv) == null) {
            return;
        }
        abstractC21254h0.mo10028so();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21284s.AbstractC21285a
    /* renamed from: k2 */
    public void mo9994k2(AbstractC21284s abstractC21284s) {
        s1.z.c.l.e(abstractC21284s, "adapterDelegate");
        if (abstractC21284s != this.f59503J.mo9951m() || this.f59535m == null || !this.f59522f) {
            return;
        }
        this.f59505L.post(new RunnableC21248b());
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: n */
    public void mo10058n(int i) {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        int m9967g = ((AbstractC21291w) this.f59549x).m9967g(i);
        switch (m9967g) {
            case C2752R.C2754id.global_search_view_type_contacts /* 2131364002 */:
                m10089Lj(m10092Jj(m9967g, i), ViewActionEvent.DetailsSubAction.PHONE_BOOK);
                return;
            case C2752R.C2754id.global_search_view_type_groups /* 2131364003 */:
                Conversation conversation = this.f59525h.get(((AbstractC21291w) this.f59549x).m9970d(i));
                AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
                if (abstractC21254h0 != null) {
                    abstractC21254h0.mo10037T2(conversation.f13199a);
                }
                AbstractC19462a abstractC19462a = this.f59507N;
                s1.z.c.l.e("searchResults", AnalyticsConstants.CONTEXT);
                s1.z.c.l.e("message", "action");
                abstractC19462a.mo13274b(new ViewActionEvent("message", null, "searchResults"));
                return;
            case C2752R.C2754id.global_search_view_type_loading_ts /* 2131364004 */:
            case C2752R.C2754id.global_search_view_type_manual_name_search_loading /* 2131364006 */:
            case C2752R.C2754id.global_search_view_type_no_results_search /* 2131364008 */:
            default:
                return;
            case C2752R.C2754id.global_search_view_type_manual_name_search /* 2131364005 */:
                ((AbstractC21291w) this.f59503J.mo9951m()).f59633h = true;
                AbstractC21254h0 abstractC21254h02 = (AbstractC21254h0) this.f57683a;
                if (abstractC21254h02 != null) {
                    abstractC21254h02.mo10031l2();
                }
                m10071Vj(true);
                return;
            case C2752R.C2754id.global_search_view_type_messages /* 2131364007 */:
                Message message = (Message) this.f59527i.get(((AbstractC21291w) this.f59549x).m9970d(i)).a;
                AbstractC21254h0 abstractC21254h03 = (AbstractC21254h0) this.f57683a;
                if (abstractC21254h03 != null) {
                    abstractC21254h03.mo10033Y9(message.f13381b, message.f13380a, message.f13399t);
                }
                AbstractC19462a abstractC19462a2 = this.f59507N;
                s1.z.c.l.e("searchResults", AnalyticsConstants.CONTEXT);
                s1.z.c.l.e("message", "action");
                abstractC19462a2.mo13274b(new ViewActionEvent("message", null, "searchResults"));
                return;
            case C2752R.C2754id.global_search_view_type_search_results /* 2131364009 */:
                m10089Lj(m10092Jj(m9967g, i), ViewActionEvent.DetailsSubAction.TRUECALLER);
                return;
            case C2752R.C2754id.global_search_view_type_truecaller_signup /* 2131364010 */:
                AssertionUtil.isNotNull(this.f59520d, new String[0]);
                AbstractC21286s0 abstractC21286s0 = this.f59520d;
                if (abstractC21286s0 == null) {
                    return;
                }
                abstractC21286s0.mo9981ka();
                return;
            case C2752R.C2754id.global_search_view_type_view_more_contacts /* 2131364011 */:
                ((AbstractC21291w) this.f59503J.mo9959e()).m9964q(Integer.MAX_VALUE);
                AbstractC21284s mo9959e = this.f59503J.mo9959e();
                s1.z.c.l.d(mo9959e, "adapterDelegate.contacts()");
                this.f59549x = mo9959e;
                m10077Sj(C2752R.string.global_search_section_contacts);
                return;
            case C2752R.C2754id.global_search_view_type_view_more_groups /* 2131364012 */:
                ((AbstractC21291w) this.f59503J.mo9963a()).m9964q(Integer.MAX_VALUE);
                AbstractC21284s mo9963a = this.f59503J.mo9963a();
                s1.z.c.l.d(mo9963a, "adapterDelegate.groups()");
                this.f59549x = mo9963a;
                m10077Sj(C2752R.string.global_search_section_groups);
                return;
            case C2752R.C2754id.global_search_view_type_view_more_messages /* 2131364013 */:
                ((AbstractC21291w) this.f59503J.mo9960d()).m9964q(Integer.MAX_VALUE);
                AbstractC21284s mo9960d = this.f59503J.mo9960d();
                s1.z.c.l.d(mo9960d, "adapterDelegate.messages()");
                this.f59549x = mo9960d;
                m10077Sj(C2752R.string.global_search_section_messages);
                return;
            case C2752R.C2754id.global_search_view_type_view_more_search_results /* 2131364014 */:
                ((AbstractC21291w) this.f59503J.mo9951m()).m9964q(Integer.MAX_VALUE);
                AbstractC21284s mo9951m = this.f59503J.mo9951m();
                s1.z.c.l.d(mo9951m, "adapterDelegate.truecallerSearch()");
                this.f59549x = mo9951m;
                m10077Sj(C2752R.string.global_search_section_truecaller);
                return;
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    public void onActivityResult(int i, int i2, Intent intent) {
        Bundle extras;
        ArrayList<String> stringArrayList;
        if (i != 100 || i2 != -1 || intent == null || (extras = intent.getExtras()) == null || (stringArrayList = extras.getStringArrayList("extra_results")) == null) {
            return;
        }
        if (stringArrayList.size() > 1) {
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h0 == null) {
                return;
            }
            abstractC21254h0.mo10039Or(stringArrayList);
            return;
        }
        AbstractC21254h0 abstractC21254h02 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h02 != null) {
            String str = stringArrayList.get(0);
            if (str == null) {
                str = "";
            }
            abstractC21254h02.mo10027wf(str);
        }
        HashMap hashMap = new HashMap();
        hashMap.put("scanType", "singleScan");
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("SEARCH_scanNumber", null, hashMap, null);
        AbstractC19462a abstractC19462a = this.f59507N;
        s1.z.c.l.d(c19505a, "analyticsEvent");
        abstractC19462a.mo13271e(c19505a);
        t tVar = new t();
        tVar.j("scanType", "singleScan");
        m10090Kj("SEARCH_scanNumber", tVar);
    }

    @Override // p193e.p194a.p1342w4.p1343r.AbstractC21222c
    public void onAdLoaded() {
        if (this.f57683a != 0) {
            ((AbstractC21291w) this.f59503J.mo9954j()).m9966o(1);
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h0 == null) {
                return;
            }
            abstractC21254h0.mo10031l2();
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    public void onBackPressed() {
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        AssertionUtil.isNotNull(this.f59520d, new String[0]);
        if (!this.f59522f) {
            AbstractC21286s0 abstractC21286s0 = this.f59520d;
            if (abstractC21286s0 == null || !abstractC21286s0.mo9983g5()) {
                m10075Tj();
                return;
            }
            AbstractC21286s0 abstractC21286s02 = this.f59520d;
            if (abstractC21286s02 != null) {
                abstractC21286s02.mo9986a5();
            }
            AbstractC21254h0 abstractC21254h0 = (AbstractC21254h0) this.f57683a;
            if (abstractC21254h0 == null) {
                return;
            }
            abstractC21254h0.finish();
            return;
        }
        AbstractC21284s mo9958f = this.f59503J.mo9958f();
        s1.z.c.l.d(mo9958f, "adapterDelegate.main()");
        this.f59549x = mo9958f;
        ((AbstractC21291w) this.f59503J.mo9959e()).m9964q(this.f59501D);
        ((AbstractC21291w) this.f59503J.mo9963a()).m9964q(this.f59501D);
        ((AbstractC21291w) this.f59503J.mo9960d()).m9964q(this.f59501D);
        ((AbstractC21291w) this.f59503J.mo9951m()).m9964q(this.f59501D);
        AbstractC21286s0 abstractC21286s03 = this.f59520d;
        if (abstractC21286s03 != null) {
            abstractC21286s03.mo9982g7(true);
        }
        AbstractC21286s0 abstractC21286s04 = this.f59520d;
        if (abstractC21286s04 != null) {
            abstractC21286s04.mo9980l7(false);
        }
        AbstractC21254h0 abstractC21254h02 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h02 != null) {
            abstractC21254h02.mo10029pA();
        }
        AbstractC21254h0 abstractC21254h03 = (AbstractC21254h0) this.f57683a;
        if (abstractC21254h03 != null) {
            abstractC21254h03.mo10031l2();
        }
        this.f59522f = false;
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    public void onResume() {
        AbstractC21286s0 abstractC21286s0;
        if (this.f59522f && (abstractC21286s0 = this.f59520d) != null) {
            if (abstractC21286s0 != null) {
                abstractC21286s0.mo9982g7(false);
            }
            AbstractC21286s0 abstractC21286s02 = this.f59520d;
            if (abstractC21286s02 != null) {
                abstractC21286s02.mo9980l7(true);
            }
        }
        if (!this.f59523g.isEmpty()) {
            mo10069We(this.f59531k);
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    public void onStart() {
        this.f59504K.mo9925I1();
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    public void onStop() {
        this.f59504K.mo9924Y();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p751f4.p762g.C14022p.AbstractC14025c
    /* renamed from: p2 */
    public void mo10057p2(List<? extends Contact> list, String str, String str2, String str3) {
        s1.z.c.l.e(list, "contacts");
        if (this.f57683a != 0 || this.f59544s == null) {
            ((AbstractC21291w) this.f59503J.mo9951m()).f59633h = false;
            m10078Rj(false);
            ArrayList arrayList = str == null ? new ArrayList() : new ArrayList(this.f59529j);
            arrayList.addAll(list);
            this.f59535m = str3;
            ArrayList arrayList2 = arrayList;
            if (str == null) {
                AbstractC6392i0 abstractC6392i0 = this.f59508O;
                abstractC6392i0.mo31114Y3();
                arrayList2 = abstractC6392i0;
            }
            m10080Qj(arrayList2);
        }
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: pe */
    public boolean mo10056pe(AbstractC21282r0.AbstractC21283a abstractC21283a, int i) {
        String str;
        String str2;
        String str3;
        s1.z.c.l.e(abstractC21283a, "searchResultView");
        Message message = (Message) this.f59527i.get(i).a;
        ImGroupInfo imGroupInfo = (ImGroupInfo) this.f59527i.get(i).b;
        Participant participant = message.f13382c;
        s1.z.c.l.d(participant, "message.participant");
        TransportInfo transportInfo = message.f13393n;
        if (transportInfo instanceof HistoryTransportInfo) {
            int i2 = message.f13386g;
            Objects.requireNonNull(transportInfo, "null cannot be cast to non-null type com.truecaller.messaging.transport.history.HistoryTransportInfo");
            HistoryTransportInfo historyTransportInfo = (HistoryTransportInfo) transportInfo;
            str = i2 != 1 ? i2 != 8 ? this.f59518Y.mo33111j(historyTransportInfo.f13705d) : this.f59518Y.mo33118c(historyTransportInfo.f13705d) : this.f59518Y.mo33120a(historyTransportInfo.f13705d);
        } else {
            str = message.m35025a();
            s1.z.c.l.d(str, "message.buildMessageText()");
        }
        String str4 = participant.f11579l;
        if (str4 == null) {
            str4 = participant.f11572e;
        }
        s1.z.c.l.d(str4, "participant.name ?: participant.normalizedAddress");
        String str5 = imGroupInfo.f13320b;
        if (str5 == null) {
            str5 = C10480a.m25885v0(participant);
            s1.z.c.l.d(str5, "ParticipantUtils.getDisplayName(participant)");
        }
        String str6 = imGroupInfo.f13321c;
        AvatarXConfig avatarXConfig = str6 != null ? new AvatarXConfig(Uri.parse(str6), true) : new C21393c(this.f59551z).mo9781a(participant);
        if (imGroupInfo.f13320b != null) {
            StringBuilder sb = new StringBuilder();
            if (participant.f11569b != 4) {
                String str7 = participant.f11572e;
                s1.z.c.l.d(str7, "participant.normalizedAddress");
                if (!(str7.length() == 0)) {
                    str3 = C10480a.m25885v0(participant);
                    s1.z.c.l.d(str3, "ParticipantUtils.getDisplayName(participant)");
                    if (str3.length() >= 16) {
                        String substring = str3.substring(0, 12);
                        s1.z.c.l.d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        str3 = substring + "...";
                    }
                    str2 = C22128a.m8618h(sb, str3, ": ");
                }
            }
            str3 = this.f59500C.mo13768b(C2752R.string.ParticipantSelfName, new Object[0]);
            s1.z.c.l.d(str3, "resourceProvider.getStri…ring.ParticipantSelfName)");
            str2 = C22128a.m8618h(sb, str3, ": ");
        } else {
            str2 = "";
        }
        abstractC21283a.mo10000a(avatarXConfig);
        abstractC21283a.setTitle(str5);
        if (this.f59526h0.mo8991d(participant)) {
            abstractC21283a.mo10019i2(true);
        } else {
            abstractC21283a.mo10024K(this.f59526h0.mo8992c(participant));
        }
        abstractC21283a.mo10021Z3(participant.m35446n() ? this.f59500C.mo13768b(2131886137, Integer.valueOf(participant.f11583p)) : participant.m35449k(this.f59510Q.mo19547u()) ? this.f59500C.mo13768b(2131886134, new Object[0]) : null, 2131232529, null);
        y yVar = new y();
        yVar.a = false;
        abstractC21283a.mo10022U2(str, str2, C10480a.m25865z1(message), new C21247a(yVar, str, abstractC21283a, str2));
        C18334g0.m15244X(abstractC21283a, this.f59502E, this.f59531k, str4, str5, false, false, false);
        C18334g0.m15245W(abstractC21283a, this.f59502E, this.f59531k, str, str, false, false, false);
        AbstractC18951b0 abstractC18951b0 = this.f59516W;
        b bVar = message.f13384e;
        s1.z.c.l.d(bVar, "message.date");
        abstractC21283a.mo10017o0(abstractC18951b0.mo14273v(((w3.b.a.e0.e) bVar).a).toString());
        abstractC21283a.mo9995j(participant.f11569b != 0 ? null : participant.f11572e);
        C5826y6 c5826y6 = this.f59532k0;
        Objects.requireNonNull(c5826y6);
        s1.z.c.l.e(message, "message");
        Map<C5282f8, Boolean> map = c5826y6.f19558a;
        long j = message.f13381b;
        int i3 = 3;
        if (message.f13399t != 3) {
            i3 = 1;
        }
        Boolean bool = map.get(new C5282f8(j, i3));
        abstractC21283a.mo9996g4(bool != null ? bool.booleanValue() : false);
        if (!(str2.length() > 0) || yVar.a) {
            return true;
        }
        abstractC21283a.mo10003G3(str2);
        return true;
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: qb */
    public void mo10055qb(AbstractC21286s0 abstractC21286s0) {
        this.f59520d = abstractC21286s0;
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: s6 */
    public boolean mo10054s6(AbstractC21282r0.AbstractC21283a abstractC21283a, int i) {
        s1.z.c.l.e(abstractC21283a, "searchResultView");
        C21293y c21293y = this.f59523g.get(i);
        Contact contact = c21293y.f59645a;
        if (contact.m35557M().isEmpty() && contact.m35498s() != null) {
            contact.m35525d(this.f59517X.mo17316d(contact.m35498s()));
        }
        FilterMatch filterMatch = c21293y.f59647c;
        m10081Pj(abstractC21283a, c21293y, contact, contact.m35574A0() || (filterMatch != null && filterMatch.f10454c == ActionSource.TOP_SPAMMER), filterMatch != null && filterMatch.f10453b == FilterAction.FILTER_BLACKLISTED);
        return true;
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: t9 */
    public int mo10053t9() {
        return 8;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0023, code lost:
        if (r8 != null) goto L9;
     */
    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: tc */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10052tc(com.truecaller.common.network.country.CountryListDto.C3679a r8) {
        /*
            r7 = this;
            r0 = r7
            com.truecaller.common.network.country.CountryListDto$a r0 = r0.f59539o
            r9 = r0
            r0 = r7
            r1 = r8
            r2 = 1
            r0.m10063Zj(r1, r2)
            r0 = r9
            if (r0 == 0) goto L35
            r0 = r9
            java.lang.String r0 = r0.f10912c
            r9 = r0
            r0 = r7
            com.truecaller.common.network.country.CountryListDto$a r0 = r0.f59539o
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L29
            r0 = r8
            java.lang.String r0 = r0.f10912c
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L29
            goto L2d
        L29:
            java.lang.String r0 = ""
            r8 = r0
        L2d:
            r0 = r9
            r1 = r8
            boolean r0 = w3.c.a.a.a.h.e(r0, r1)
            if (r0 != 0) goto L83
        L35:
            r0 = r7
            java.lang.String r0 = r0.f59531k
            boolean r0 = w3.c.a.a.a.h.j(r0)
            if (r0 != 0) goto L4f
            r0 = r7
            r1 = 0
            r0.f59535m = r1
            r0 = r7
            s1.u.s r1 = s1.u.s.a
            r0.m10080Qj(r1)
            r0 = r7
            r0.m10065Yj()
        L4f:
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Filter_Action"
            java.lang.String r2 = "CountryChanged"
            java.lang.Object r0 = r0.put(r1, r2)
            e.a.q2.g$b$a r0 = new e.a.q2.g$b$a
            r1 = r0
            java.lang.String r2 = "SEARCHVIEW_Filtered"
            r3 = 0
            r4 = r8
            r5 = 0
            r1.<init>(r2, r3, r4, r5)
            r9 = r0
            r0 = r7
            e.a.q2.a r0 = r0.f59507N
            r8 = r0
            r0 = r9
            java.lang.String r1 = "event"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            r1 = r9
            r0.mo13271e(r1)
        L83:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1342w4.p1344s.C21246g0.mo10052tc(com.truecaller.common.network.country.CountryListDto$a):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0029, code lost:
        if (r15 != null) goto L7;
     */
    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo10051tj(p193e.p194a.p1342w4.p1344s.AbstractC21282r0.AbstractC21283a r12, int r13) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1342w4.p1344s.C21246g0.mo10051tj(e.a.w4.s.r0$a, int):boolean");
    }

    @Override // p193e.p194a.p1342w4.p1344s.AbstractC21242e0
    /* renamed from: z6 */
    public void mo10050z6(Intent intent) {
        AbstractC21286s0 abstractC21286s0;
        s1.z.c.l.e(intent, "intent");
        AssertionUtil.isNotNull(this.f57683a, new String[0]);
        AssertionUtil.isNotNull(this.f59520d, new String[0]);
        String stringExtra = intent.getStringExtra("ARG_SEARCH_COUNTRY");
        if (h.j(stringExtra)) {
            m10063Zj(this.f59506M.mo14066d(), true);
        } else {
            intent.removeExtra("ARG_SEARCH_COUNTRY");
            m10063Zj(this.f59506M.mo14067c(stringExtra), false);
        }
        String stringExtra2 = intent.getStringExtra("ARG_SEARCH_TEXT");
        if (!h.j(stringExtra2)) {
            AbstractC21286s0 abstractC21286s02 = this.f59520d;
            if (abstractC21286s02 != null) {
                abstractC21286s02.mo9992L9(stringExtra2);
            }
            mo10069We(stringExtra2);
            intent.removeExtra("ARG_SEARCH_TEXT");
        } else {
            m10075Tj();
        }
        boolean booleanExtra = intent.getBooleanExtra("ARG_SHOW_KEYBOARD", true);
        if (!this.f59522f && booleanExtra && (abstractC21286s0 = this.f59520d) != null) {
            abstractC21286s0.mo9979p0();
        }
        if (this.f59508O.mo31049j4()) {
            return;
        }
        this.f59508O.mo31126W1();
        AbstractC21286s0 abstractC21286s03 = this.f59520d;
        if (abstractC21286s03 == null) {
            return;
        }
        abstractC21286s03.mo9991R5();
    }
}
