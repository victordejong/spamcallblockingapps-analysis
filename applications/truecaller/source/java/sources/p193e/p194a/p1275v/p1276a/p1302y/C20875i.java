package p193e.p194a.p1275v.p1276a.p1302y;

import com.google.android.gms.ads.AdSize;
import com.razorpay.AnalyticsConstants;
import com.truecaller.ads.CustomTemplate;
import com.truecaller.data.entity.Contact;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p852i.AbstractC15212n;
import p193e.p194a.p852i.C15213o;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p856b0.p860d.C14995a;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p862c.p864b.C15009a;
import p193e.p194a.p852i.p862c.p866d.C15055l;
import p193e.p194a.p852i.p896f0.C15164f;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15166a;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.f0.r;
import s1.g;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.y.i */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/y/i.class */
public final class C20875i extends AbstractC15212n implements AbstractC20874h {

    /* renamed from: a */
    public AbstractC15212n f58658a;

    /* renamed from: c */
    public boolean f58660c;

    /* renamed from: d */
    public AbstractC15003c f58661d;

    /* renamed from: f */
    public boolean f58663f;

    /* renamed from: g */
    public final AbstractC20878j f58664g;

    /* renamed from: h */
    public final C20592g f58665h;

    /* renamed from: i */
    public final AbstractC8438a f58666i;

    /* renamed from: j */
    public final AbstractC15166a f58667j;

    /* renamed from: b */
    public final g f58659b = C25225a.m3978P1(new C20877b());

    /* renamed from: e */
    public final g f58662e = C25225a.m3978P1(new C20876a());

    /* renamed from: e.a.v.a.y.i$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/y/i$a.class */
    public static final class C20876a extends m implements a<C15055l> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20876a() {
            super(0);
            C20875i.this = r4;
        }

        public Object invoke() {
            C20875i c20875i = C20875i.this;
            c20875i.f58667j.reset();
            String m19082a = c20875i.f58667j.m19082a();
            List T = i.T(new String[]{"native", "native_image_300x250", "banner", "html_320x50", "html_320x100", "html_300x250", "html_320x140", "html_300x100"});
            C15055l.C15057b c15057b = C15055l.f42986n;
            C15055l.C15056a c15056a = new C15055l.C15056a();
            String m19081a = c20875i.f58664g.mo10575d().m19081a("callDetailsLargeUnifiedAdUnitId");
            Object[] array = T.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            String[] strArr = (String[]) array;
            c15056a.m19203c(m19081a, m19082a, (String[]) Arrays.copyOf(strArr, strArr.length));
            c15056a.m19204b(c20875i.f58665h.m10943y().isEnabled() ? "TEST_DETAILSVIEW" : "DETAILSVIEW");
            c15056a.m19202d(AnalyticsConstants.NETWORK);
            return c15056a.m19205a();
        }
    }

    /* renamed from: e.a.v.a.y.i$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/y/i$b.class */
    public static final class C20877b extends m implements a<C15222s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20877b() {
            super(0);
            C20875i.this = r4;
        }

        public Object invoke() {
            C20875i c20875i = C20875i.this;
            Objects.requireNonNull(c20875i);
            String str = null;
            C15222s.C15223a c15223a = new C15222s.C15223a(null, 1);
            c15223a.m19040c(c20875i.f58664g.mo10575d().m19081a("callDetailsLargeUnifiedAdUnitId"));
            if (c20875i.f58665h.m10990O().isEnabled()) {
                C14995a.C14997b c14997b = C14995a.f42800h;
                C14995a.C14996a c14996a = new C14995a.C14996a();
                c14996a.m19302c("DETAILS");
                String string = c20875i.f58666i.getString("profileNumber");
                if (string != null) {
                    l.d(string, "it");
                    if (!r.p(string)) {
                        str = string;
                    }
                    if (str != null) {
                        l.d(str, "it");
                        c14996a.m19303b(str);
                    }
                }
                c15223a.m19042a(c14996a.m19304a());
            } else {
                C15213o.C15215b c15215b = new C15213o.C15215b("DETAILS");
                String string2 = c20875i.f58666i.getString("profileNumber");
                if (string2 != null) {
                    l.d(string2, "it");
                    String str2 = null;
                    if (!r.p(string2)) {
                        str2 = string2;
                    }
                    if (str2 != null) {
                        c15215b.f43291a = str2;
                    }
                }
                C15213o m19046a = c15215b.m19046a();
                l.d(m19046a, "CampaignConfig.Builder(A…      }\n        }.build()");
                c15223a.m19039d(m19046a);
            }
            AdSize adSize = AdSize.BANNER;
            l.d(adSize, "AdSize.BANNER");
            AdSize adSize2 = AdSize.LARGE_BANNER;
            l.d(adSize2, "AdSize.LARGE_BANNER");
            AdSize adSize3 = AdSize.MEDIUM_RECTANGLE;
            l.d(adSize3, "AdSize.MEDIUM_RECTANGLE");
            C15164f c15164f = C15164f.f43209c;
            c15223a.m19038e(adSize, adSize2, adSize3, C15164f.f43207a, C15164f.f43208b);
            c15223a.f43338p = 3;
            c15223a.f43335m = true;
            c15223a.f43331i = "detailView";
            c15223a.m19037f(CustomTemplate.NATIVE_BANNER, CustomTemplate.MEGA_NATIVE_BANNER_DUAL_TRACKER, CustomTemplate.NATIVE_CONTENT_DUAL_TRACKER);
            c15223a.f43336n = false;
            return new C15222s(c15223a);
        }
    }

    @Inject
    public C20875i(AbstractC20878j abstractC20878j, @Named("features_registry") C20592g c20592g, AbstractC8438a abstractC8438a, AbstractC15166a abstractC15166a) {
        l.e(abstractC20878j, "adsProvider");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8438a, "accountSettings");
        l.e(abstractC15166a, "acsAdRequestIdGenerator");
        this.f58664g = abstractC20878j;
        this.f58665h = c20592g;
        this.f58666i = abstractC8438a;
        this.f58667j = abstractC15166a;
    }

    @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.p862c.p866d.AbstractC15046i
    /* renamed from: a */
    public void mo10600a(AbstractC15003c abstractC15003c) {
        l.e(abstractC15003c, "ad");
        this.f58661d = abstractC15003c;
        m10597d();
    }

    @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.p862c.p866d.AbstractC15046i
    /* renamed from: b */
    public void mo10599b(C15009a c15009a) {
        l.e(c15009a, "errorAdRouter");
        this.f58661d = null;
        AbstractC15212n abstractC15212n = this.f58658a;
        if (abstractC15212n != null) {
            abstractC15212n.mo10117ed(c15009a.f42830a);
        }
    }

    /* renamed from: c */
    public final C15222s m10598c() {
        return (C15222s) this.f58659b.getValue();
    }

    /* renamed from: d */
    public final void m10597d() {
        AbstractC15003c abstractC15003c;
        AbstractC15212n abstractC15212n;
        C20592g c20592g = this.f58665h;
        if (!c20592g.f57922f3.m10941a(c20592g, C20592g.f57695p6[213]).isEnabled() || this.f58663f || !this.f58660c || (abstractC15003c = this.f58661d) == null || (abstractC15212n = this.f58658a) == null) {
            return;
        }
        abstractC15212n.mo10600a(abstractC15003c);
    }

    /* renamed from: e */
    public void m10596e(boolean z) {
        AbstractC15212n abstractC15212n;
        boolean z2 = this.f58663f;
        this.f58663f = z;
        if (z2 != z && !z && this.f58664g.mo10576c(m10598c()) && (abstractC15212n = this.f58658a) != null) {
            abstractC15212n.onAdLoaded();
        }
        if (z) {
            this.f58667j.reset();
        }
    }

    @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.AbstractC15211m
    /* renamed from: ed */
    public void mo10117ed(int i) {
        this.f58660c = true;
        AbstractC15212n abstractC15212n = this.f58658a;
        if (abstractC15212n != null) {
            abstractC15212n.mo10117ed(i);
        }
        m10597d();
    }

    /* renamed from: f */
    public boolean m10595f(Contact contact) {
        C20592g c20592g = this.f58665h;
        if (!c20592g.f57708B4.m10941a(c20592g, C20592g.f57695p6[291]).isEnabled()) {
            return false;
        }
        boolean z = false;
        if (!C12864a2.m22540r(contact != null ? Boolean.valueOf(contact.m35495t0()) : null)) {
            Boolean bool = null;
            if (contact != null) {
                bool = Boolean.valueOf(C17891a1.C17902k.m15668J0(contact));
            }
            z = false;
            if (C12864a2.m22540r(bool)) {
                z = true;
            }
        }
        return z;
    }

    @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.AbstractC15211m
    public void onAdLoaded() {
        AbstractC15212n abstractC15212n;
        this.f58660c = false;
        if (!this.f58664g.mo10576c(m10598c()) || this.f58663f || (abstractC15212n = this.f58658a) == null) {
            return;
        }
        abstractC15212n.onAdLoaded();
    }

    @Override // p193e.p194a.p852i.AbstractC15212n, p193e.p194a.p852i.AbstractC15211m
    /* renamed from: xe */
    public void mo10116xe(AbstractC15183d abstractC15183d, int i) {
        l.e(abstractC15183d, "ad");
        AbstractC15212n abstractC15212n = this.f58658a;
        if (abstractC15212n != null) {
            abstractC15212n.mo10116xe(abstractC15183d, i);
        }
    }
}
