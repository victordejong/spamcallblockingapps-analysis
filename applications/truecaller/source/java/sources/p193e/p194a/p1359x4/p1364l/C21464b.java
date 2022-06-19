package p193e.p194a.p1359x4.p1364l;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.data.entity.Contact;
import com.truecaller.searchwarnings.data.SearchWarningViewModel;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1064m5.AbstractC18240c;
import p193e.p194a.p1064m5.AbstractC18241d;
import p193e.p194a.p1064m5.C18242e;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1359x4.AbstractC21421e;
import p193e.p194a.p1359x4.AbstractC21423g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.a.l;
import s1.b0.b;
import s1.b0.c;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
/* renamed from: e.a.x4.l.b */
/* loaded from: classes13-dex2jar.jar:e/a/x4/l/b.class */
public final class C21464b extends AbstractC20574a<AbstractC18241d> implements AbstractC18240c {

    /* renamed from: l */
    public static final /* synthetic */ l[] f59952l = {C22128a.m8629e0(C21464b.class, "loggedSearchWarning", "getLoggedSearchWarning()Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;", 0)};

    /* renamed from: d */
    public AbstractC21459a f59953d;

    /* renamed from: e */
    public boolean f59954e;

    /* renamed from: f */
    public boolean f59955f;

    /* renamed from: g */
    public final c f59956g = new C21465a(null, null, this);

    /* renamed from: h */
    public final f f59957h;

    /* renamed from: i */
    public final AbstractC21423g f59958i;

    /* renamed from: j */
    public final AbstractC21421e f59959j;

    /* renamed from: k */
    public final AbstractC21467c f59960k;

    /* renamed from: e.a.x4.l.b$a */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/l/b$a.class */
    public static final class C21465a extends b<SearchWarningViewModel> {

        /* renamed from: b */
        public final /* synthetic */ C21464b f59961b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21465a(Object obj, Object obj2, C21464b c21464b) {
            super((Object) null);
            this.f59961b = c21464b;
        }

        /* renamed from: b */
        public void m9708b(l<?> lVar, SearchWarningViewModel searchWarningViewModel, SearchWarningViewModel searchWarningViewModel2) {
            s1.z.c.l.e(lVar, "property");
            SearchWarningViewModel searchWarningViewModel3 = searchWarningViewModel2;
            SearchWarningViewModel searchWarningViewModel4 = searchWarningViewModel;
            if (searchWarningViewModel3 == null || !(!s1.z.c.l.a(searchWarningViewModel4, searchWarningViewModel3))) {
                return;
            }
            C21464b c21464b = this.f59961b;
            AbstractC21421e abstractC21421e = c21464b.f59959j;
            AbstractC21459a abstractC21459a = c21464b.f59953d;
            if (abstractC21459a != null) {
                abstractC21421e.mo9748a(abstractC21459a.f59945a, searchWarningViewModel3.getId(), searchWarningViewModel3.getRuleName());
            } else {
                s1.z.c.l.l(DTBMetricsConfiguration.CONFIG_DIR);
                throw null;
            }
        }
    }

    @e(c = "com.truecaller.searchwarnings.ui.SearchWarningsPresenter$setupView$1", f = "SearchWarningsPresenter.kt", l = {63}, m = "invokeSuspend")
    /* renamed from: e.a.x4.l.b$b */
    /* loaded from: classes13-dex2jar.jar:e/a/x4/l/b$b.class */
    public static final class C21466b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f59962e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21466b(d dVar) {
            super(2, dVar);
            C21464b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m9707i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C21466b(dVar);
        }

        /* renamed from: k */
        public final Object m9706k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C21466b(dVar).m9705s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x009b  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00ba  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m9705s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 854
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1359x4.p1364l.C21464b.C21466b.m9705s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C21464b(@Named("UI") f fVar, AbstractC21423g abstractC21423g, AbstractC21421e abstractC21421e, AbstractC21467c abstractC21467c) {
        super(fVar);
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(abstractC21423g, "searchWarningsHelper");
        s1.z.c.l.e(abstractC21421e, "analyticsHelper");
        s1.z.c.l.e(abstractC21467c, "themeProvider");
        this.f59957h = fVar;
        this.f59958i = abstractC21423g;
        this.f59959j = abstractC21421e;
        this.f59960k = abstractC21467c;
    }

    /* renamed from: Ij */
    public static final /* synthetic */ AbstractC21459a m9715Ij(C21464b c21464b) {
        AbstractC21459a abstractC21459a = c21464b.f59953d;
        if (abstractC21459a != null) {
            return abstractC21459a;
        }
        s1.z.c.l.l(DTBMetricsConfiguration.CONFIG_DIR);
        throw null;
    }

    /* renamed from: Jj */
    public final C18242e m9714Jj(SearchWarningViewModel searchWarningViewModel, C18242e c18242e) {
        String backgroundColor = searchWarningViewModel.getBackgroundColor();
        C18242e c18242e2 = c18242e;
        if (backgroundColor != null) {
            c18242e2 = c18242e;
            if (!r.p(backgroundColor)) {
                String foregroundColor = searchWarningViewModel.getForegroundColor();
                c18242e2 = c18242e;
                if (foregroundColor != null) {
                    c18242e2 = c18242e;
                    if (!r.p(foregroundColor)) {
                        String iconUrl = searchWarningViewModel.getIconUrl();
                        c18242e2 = c18242e;
                        if (iconUrl != null) {
                            c18242e2 = c18242e;
                            if (!r.p(iconUrl)) {
                                try {
                                    int mo9694k = this.f59960k.mo9694k(searchWarningViewModel.getForegroundColor());
                                    int mo9694k2 = this.f59960k.mo9694k(searchWarningViewModel.getBackgroundColor());
                                    String iconUrl2 = searchWarningViewModel.getIconUrl();
                                    if (iconUrl2 == null) {
                                        iconUrl2 = "";
                                    }
                                    int i = c18242e.f51547c;
                                    int i2 = c18242e.f51548d;
                                    int i3 = c18242e.f51549e;
                                    Objects.requireNonNull(c18242e);
                                    c18242e2 = new C18242e(mo9694k, mo9694k2, i, i2, i3, iconUrl2);
                                } catch (IllegalArgumentException e) {
                                    c18242e2 = c18242e;
                                }
                            }
                        }
                    }
                }
            }
        }
        return c18242e2;
    }

    /* renamed from: Kj */
    public final void m9713Kj(AbstractC21459a abstractC21459a) {
        s1.z.c.l.e(abstractC21459a, DTBMetricsConfiguration.CONFIG_DIR);
        this.f59953d = abstractC21459a;
    }

    /* renamed from: Lj */
    public final p1 m9712Lj() {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C21466b(null), 3, (Object) null);
    }

    /* renamed from: Mj */
    public final boolean m9711Mj(Contact contact) {
        return contact.m35499r0() && !contact.m35574A0() && !contact.m35492v0();
    }

    @Override // p193e.p194a.p1064m5.AbstractC18240c
    /* renamed from: V4 */
    public void mo9710V4() {
        m9712Lj();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.m5.d, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18241d abstractC18241d) {
        AbstractC18241d abstractC18241d2 = abstractC18241d;
        s1.z.c.l.e(abstractC18241d2, "presenterView");
        this.f57683a = abstractC18241d2;
        m9712Lj();
    }

    @Override // p193e.p194a.p1064m5.AbstractC18240c
    /* renamed from: g4 */
    public void mo9709g4() {
        boolean z = !this.f59954e;
        this.f59954e = z;
        AbstractC18241d abstractC18241d = (AbstractC18241d) this.f57683a;
        if (abstractC18241d != null) {
            abstractC18241d.setIsExpanded(z);
        }
    }
}
