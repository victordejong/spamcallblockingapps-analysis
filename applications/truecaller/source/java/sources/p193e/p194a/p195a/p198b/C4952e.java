package p193e.p194a.p195a.p198b;

import com.truecaller.contextcall.utils.ContextCallPromoType;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.premiumusertab.newfeaturelabel.NewFeatureLabelType;
import com.truecaller.premium.promotion.PremiumHomeTabPromo;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16832c2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1031t2.C17238a;
import p193e.p194a.p1011l.p1031t2.C17239b;
import p193e.p194a.p1011l.p1031t2.C17242e;
import p193e.p194a.p1070n2.p1072b.C18472a;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1193r5.AbstractC19954i0;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1399z.AbstractC21834f;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p258m.AbstractC6798d1;
import p193e.p194a.p195a.p258m.p262e3.AbstractC6841a;
import p193e.p194a.p195a.p258m.p263f3.C6858e;
import p193e.p194a.p195a.p258m.p263f3.C6860g;
import p193e.p194a.p195a.p258m.p263f3.C6864k;
import p193e.p194a.p195a.p258m.p263f3.C6866m;
import p193e.p194a.p195a.p258m.p264g3.C6875b;
import p193e.p194a.p195a.p258m.p264g3.C6877d;
import p193e.p194a.p195a.p258m.p264g3.C6879f;
import p193e.p194a.p294b.AbstractC7908c;
import p193e.p194a.p619d.AbstractC11705f;
import p193e.p194a.p673d0.C12554s0;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p947k.AbstractC16111h;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.b.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/b/e.class */
public final class C4952e implements AbstractC4950d {

    /* renamed from: a */
    public final C18472a f16833a;

    /* renamed from: b */
    public final C17238a f16834b;

    /* renamed from: c */
    public final C17239b f16835c;

    /* renamed from: d */
    public final C20592g f16836d;

    /* renamed from: e */
    public final PremiumHomeTabPromo f16837e;

    /* renamed from: f */
    public final C12554s0 f16838f;

    /* renamed from: g */
    public final AbstractC18765c f16839g;

    /* renamed from: h */
    public final AbstractC13706b f16840h;

    /* renamed from: i */
    public final AbstractC19954i0 f16841i;

    /* renamed from: j */
    public final AbstractC7908c f16842j;

    /* renamed from: k */
    public final AbstractC21834f f16843k;

    /* renamed from: l */
    public final AbstractC17197v0 f16844l;

    /* renamed from: m */
    public final AbstractC11705f f16845m;

    /* renamed from: n */
    public final AbstractC16111h f16846n;

    /* renamed from: o */
    public final C6877d f16847o;

    /* renamed from: p */
    public final C6858e f16848p;

    /* renamed from: q */
    public final C6875b f16849q;

    /* renamed from: r */
    public final C6860g f16850r;

    /* renamed from: s */
    public final C6879f f16851s;

    /* renamed from: t */
    public final C6866m f16852t;

    /* renamed from: u */
    public final C6864k f16853u;

    /* renamed from: v */
    public final C17242e f16854v;

    /* renamed from: w */
    public final AbstractC16832c2 f16855w;

    /* renamed from: x */
    public final boolean f16856x;

    /* renamed from: y */
    public final AbstractC6392i0 f16857y;

    /* renamed from: z */
    public final AbstractC6841a f16858z;

    @Inject
    public C4952e(C18472a c18472a, C17238a c17238a, C17239b c17239b, C20592g c20592g, PremiumHomeTabPromo premiumHomeTabPromo, C12554s0 c12554s0, AbstractC18765c abstractC18765c, AbstractC13706b abstractC13706b, AbstractC19954i0 abstractC19954i0, AbstractC7908c abstractC7908c, AbstractC21834f abstractC21834f, AbstractC17197v0 abstractC17197v0, AbstractC11705f abstractC11705f, AbstractC16111h abstractC16111h, C6877d c6877d, C6858e c6858e, C6875b c6875b, C6860g c6860g, C6879f c6879f, C6866m c6866m, C6864k c6864k, C17242e c17242e, AbstractC16832c2 abstractC16832c2, boolean z, AbstractC6392i0 abstractC6392i0, AbstractC6841a abstractC6841a) {
        l.e(c18472a, "secondaryPhoneNumberPromoManager");
        l.e(c17238a, "announceCallHomeTabPromo");
        l.e(c17239b, "ghostCallHomeTabPromo");
        l.e(c20592g, "featuresRegistry");
        l.e(premiumHomeTabPromo, "premiumHomeTabPromo");
        l.e(c12554s0, "disableBatteryOptimizationPromoManager");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC13706b, "inCallUI");
        l.e(abstractC19954i0, "whoViewedMeManager");
        l.e(abstractC7908c, "bizmonBridge");
        l.e(abstractC21834f, "personalSafety");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC11705f, "voip");
        l.e(abstractC16111h, "videoCallerId");
        l.e(c6877d, "locationAccessPromoManager");
        l.e(c6858e, "missedCallNotificationPromoManager");
        l.e(c6875b, "drawPermissionPromoManager");
        l.e(c6860g, "requestDoNotDisturbAccessPromoManager");
        l.e(c6879f, "updateMobileServicesPromoManager");
        l.e(c6866m, "whatsAppNotificationAccessPromoManager");
        l.e(c6864k, "whatsAppCallDetectedPromoManager");
        l.e(c17242e, "whatsAppCallerIdHomeTabPromo");
        l.e(abstractC16832c2, "premiumSettings");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC6841a, "callerIdBannerManager");
        this.f16833a = c18472a;
        this.f16834b = c17238a;
        this.f16835c = c17239b;
        this.f16836d = c20592g;
        this.f16837e = premiumHomeTabPromo;
        this.f16838f = c12554s0;
        this.f16839g = abstractC18765c;
        this.f16840h = abstractC13706b;
        this.f16841i = abstractC19954i0;
        this.f16842j = abstractC7908c;
        this.f16843k = abstractC21834f;
        this.f16844l = abstractC17197v0;
        this.f16845m = abstractC11705f;
        this.f16846n = abstractC16111h;
        this.f16847o = c6877d;
        this.f16848p = c6858e;
        this.f16849q = c6875b;
        this.f16850r = c6860g;
        this.f16851s = c6879f;
        this.f16852t = c6866m;
        this.f16853u = c6864k;
        this.f16854v = c17242e;
        this.f16855w = abstractC16832c2;
        this.f16856x = z;
        this.f16857y = abstractC6392i0;
        this.f16858z = abstractC6841a;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: a */
    public AbstractC6798d1 mo34218a() {
        return this.f16858z.mo30423a();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p258m.AbstractC6798d1 mo34217b() {
        /*
            r3 = this;
            r0 = r3
            e.a.a.m.f3.g r0 = r0.f16850r
            r4 = r0
            r0 = r4
            e.a.p5.a0 r0 = r0.f22423b
            boolean r0 = r0.mo13824i()
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 != 0) goto L44
            r0 = r4
            com.truecaller.settings.CallingSettings r0 = r0.f22424c
            com.truecaller.settings.CallingSettings$BlockMethod r0 = r0.mo8949z()
            com.truecaller.settings.CallingSettings$BlockMethod r1 = com.truecaller.settings.CallingSettings.BlockMethod.Mute
            if (r0 != r1) goto L2a
            r0 = 1
            r7 = r0
            goto L2d
        L2a:
            r0 = 0
            r7 = r0
        L2d:
            r0 = r7
            if (r0 == 0) goto L44
            r0 = r4
            e.a.a.m.o2 r0 = r0.f22422a
            java.lang.String r1 = "key_dnd_promo_last_time"
            boolean r0 = r0.m30367c(r1)
            if (r0 == 0) goto L44
            r0 = r6
            r7 = r0
            goto L47
        L44:
            r0 = 0
            r7 = r0
        L47:
            r0 = r7
            if (r0 == 0) goto L53
            e.a.a.m.d1$v r0 = p193e.p194a.p195a.p258m.AbstractC6798d1.C6826v.f22373b
            r4 = r0
            goto L55
        L53:
            r0 = 0
            r4 = r0
        L55:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4952e.mo34217b():e.a.a.m.d1");
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: c */
    public AbstractC6798d1 mo34216c() {
        return this.f16840h.mo21268a() ? AbstractC6798d1.C6814j.f22361b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: d */
    public AbstractC6798d1 mo34215d() {
        C20592g c20592g = this.f16836d;
        return (!c20592g.f57700A3.m10941a(c20592g, C20592g.f57695p6[236]).isEnabled() || this.f16844l.mo16408H() || !this.f16843k.mo9020b()) ? null : AbstractC6798d1.C6821q.f22368b;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: e */
    public AbstractC6798d1 mo34214e() {
        C6879f c6879f = this.f16851s;
        boolean z = true;
        if (!(!c6879f.f22466c.mo22839e().isEmpty()) || !c6879f.f22465b.m30367c("update_mobile_services_promo_last_timestamp")) {
            z = false;
        }
        return z ? AbstractC6798d1.C6829y.f22376b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: f */
    public AbstractC6798d1 mo34213f() {
        C12554s0 c12554s0 = this.f16838f;
        boolean z = false;
        if (!c12554s0.f36654b.mo13771z() && !c12554s0.f36653a.getBoolean("never_ask_again_disable_ignore_battery_optimizations", false)) {
            z = c12554s0.f36655c.m28260a(c12554s0.f36653a.getLong("disable_battery_optimization_promo_last_shown_timestamp", 0L), 30L, TimeUnit.DAYS);
        }
        return z ? AbstractC6798d1.C6809f.f22356b : null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0132, code lost:
        if (r0.f14257e.mo16914I1() < 2) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x019d, code lost:
        if (r0.f14257e.mo16877t0() < r0) goto L36;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01ab  */
    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p258m.AbstractC6798d1 mo34212g() {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4952e.mo34212g():e.a.a.m.d1");
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: h */
    public AbstractC6798d1 mo34211h() {
        return this.f16845m.mo24192a() ? AbstractC6798d1.C6813i.f22360b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: i */
    public AbstractC6798d1 mo34210i() {
        C6858e c6858e = this.f16848p;
        return !c6858e.f22418b.mo18956a() && c6858e.f22419c.m30367c("key_missed_call_notif_promo_last_time") ? AbstractC6798d1.C6818n.f22365b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: j */
    public AbstractC6798d1 mo34209j() {
        C20592g c20592g = this.f16836d;
        return (!c20592g.f57715C4.m10941a(c20592g, C20592g.f57695p6[292]).isEnabled() || !this.f16842j.mo29129g()) ? null : AbstractC6798d1.C6824t.f22371b;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: k */
    public AbstractC6798d1 mo34208k() {
        ContextCallPromoType mo14525G = this.f16839g.mo14525G();
        if (mo14525G == ContextCallPromoType.NONE) {
            return null;
        }
        return new AbstractC6798d1.C6807e(mo14525G);
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: l */
    public AbstractC6798d1 mo34207l() {
        C20592g c20592g = this.f16836d;
        return (!c20592g.f57963k4.m10941a(c20592g, C20592g.f57695p6[274]).isEnabled() || !this.f16842j.mo29130e()) ? null : AbstractC6798d1.C6830z.f22377b;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: m */
    public AbstractC6798d1 mo34206m() {
        return (!this.f16856x || this.f16857y.mo31054j()) ? null : AbstractC6798d1.C6805d.f22352b;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: n */
    public AbstractC6798d1 mo34205n() {
        C6877d c6877d = this.f16847o;
        boolean z = true;
        if (!(!c6877d.f22460a.mo13825h("android.permission.ACCESS_COARSE_LOCATION")) || !c6877d.f22461b.m30367c("key_location_promo_last_time")) {
            z = false;
        }
        return z ? AbstractC6798d1.C6817m.f22364b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: o */
    public AbstractC6798d1 mo34204o() {
        return this.f16846n.mo17845a() ? AbstractC6798d1.C6800a0.f22347b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: p */
    public AbstractC6798d1 mo34203p(PremiumLaunchContext premiumLaunchContext) {
        AbstractC6798d1.C6823s c6823s;
        l.e(premiumLaunchContext, "launchContext");
        if (!this.f16844l.mo16408H() && this.f16855w.mo16888e1() < 5) {
            b D = new b(this.f16855w.mo16911M1()).D(5);
            l.d(D, "DateTime(premiumSettings…astDismissed).plusDays(5)");
            if (D.j()) {
                c6823s = new AbstractC6798d1.C6823s(premiumLaunchContext);
                return c6823s;
            }
        }
        c6823s = null;
        return c6823s;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: q */
    public AbstractC6798d1 mo34202q() {
        C18472a c18472a = this.f16833a;
        C20592g c20592g = c18472a.f52154d;
        boolean z = false;
        if (c20592g.f58058x3.m10941a(c20592g, C20592g.f57695p6[233]).isEnabled()) {
            z = false;
            if (c18472a.m14882a().isEnabled()) {
                z = false;
                if (c18472a.f52153c.mo21740h()) {
                    z = false;
                    if (c18472a.f52152b.mo28579e() == null) {
                        z = false;
                        if (c18472a.f52155e.getInt("secondary_phone_number_promo_dismiss_count", 0) < c18472a.m14882a().getMaxDismissCount()) {
                            z = false;
                            if (c18472a.f52156f.m28260a(c18472a.f52155e.getLong("secondary_phone_number_promo_last_dismiss_timestamp", 0L), c18472a.m14882a().getIntervalDays(), TimeUnit.DAYS)) {
                                z = true;
                            }
                        }
                    }
                }
            }
        }
        return z ? AbstractC6798d1.C6827w.f22374b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: r */
    public AbstractC6798d1 mo34201r() {
        return this.f16846n.mo17834l() ? AbstractC6798d1.C6802b0.f22349b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: s */
    public AbstractC6798d1 mo34200s() {
        C17242e c17242e = this.f16854v;
        return c17242e.f48379a.mo16949h(NewFeatureLabelType.WHATS_APP_CALLER_ID) && !c17242e.f48380b.mo12980h() && c17242e.f48381c.m17198b() ? AbstractC6798d1.C6806d0.f22353b : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0073  */
    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p193e.p194a.p195a.p258m.AbstractC6798d1 mo34199t() {
        /*
            r5 = this;
            r0 = r5
            e.a.a.m.f3.k r0 = r0.f16853u
            r6 = r0
            r0 = r6
            e.a.z4.d r0 = r0.f22443c
            java.lang.String r1 = "key_whats_app_in_call_log_notif_promo_last_time"
            r2 = 0
            long r0 = r0.getLong(r1, r2)
            r7 = r0
            r0 = 1
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L22
            r0 = 1
            r10 = r0
            goto L25
        L22:
            r0 = 0
            r10 = r0
        L25:
            r0 = r10
            if (r0 != 0) goto L64
            r0 = r6
            e.a.h.t0.b r0 = r0.f22442b
            boolean r0 = r0.m19700a()
            if (r0 == 0) goto L48
            r0 = r6
            e.a.h.t0.b r0 = r0.f22442b
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto L48
            r0 = 1
            r10 = r0
            goto L4b
        L48:
            r0 = 0
            r10 = r0
        L4b:
            r0 = r10
            if (r0 == 0) goto L64
            r0 = r6
            e.a.a.m.o2 r0 = r0.f22441a
            java.lang.String r1 = "key_whats_app_in_call_log_notif_promo_last_time"
            boolean r0 = r0.m30367c(r1)
            if (r0 == 0) goto L64
            r0 = r9
            r10 = r0
            goto L67
        L64:
            r0 = 0
            r10 = r0
        L67:
            r0 = r10
            if (r0 == 0) goto L73
            e.a.a.m.d1$c0 r0 = p193e.p194a.p195a.p258m.AbstractC6798d1.C6804c0.f22351b
            r6 = r0
            goto L75
        L73:
            r0 = 0
            r6 = r0
        L75:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p198b.C4952e.mo34199t():e.a.a.m.d1");
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: u */
    public AbstractC6798d1 mo34198u() {
        C6866m c6866m = this.f16852t;
        return !((c6866m.f22449d.getLong("key_whats_app_in_call_log_notif_promo_last_time", 0L) > 0L ? 1 : (c6866m.f22449d.getLong("key_whats_app_in_call_log_notif_promo_last_time", 0L) == 0L ? 0 : -1)) != 0) && c6866m.f22447b.isAvailable() && !c6866m.f22448c.mo18956a() && c6866m.f22446a.m30367c("key_whats_app_in_call_log_notif_promo_last_time") ? AbstractC6798d1.C6808e0.f22355b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: v */
    public AbstractC6798d1 mo34197v() {
        C6875b c6875b = this.f16849q;
        return !c6875b.f22456a.mo13822k() && c6875b.f22457b.m30367c("key_draw_promo_last_time") ? AbstractC6798d1.C6811g.f22358b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: w */
    public AbstractC6798d1 mo34196w() {
        C17239b c17239b = this.f16835c;
        return c17239b.f48373a.mo16949h(NewFeatureLabelType.GHOST_CALL) && !c17239b.f48374b.mo9789h() && c17239b.f48375c.m17198b() ? AbstractC6798d1.C6812h.f22359b : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: x */
    public AbstractC6798d1 mo34195x() {
        return this.f16841i.mo11753j() ? new AbstractC6798d1.C6810f0(this.f16841i.mo11754i()) : null;
    }

    @Override // p193e.p194a.p195a.p198b.AbstractC4950d
    /* renamed from: y */
    public AbstractC6798d1 mo34194y() {
        C17238a c17238a = this.f16834b;
        return c17238a.f48370a.mo16949h(NewFeatureLabelType.ANNOUNCE_CALL) && !c17238a.f48371b.mo11333h() && c17238a.f48372c.m17198b() ? AbstractC6798d1.C6799a.f22346b : null;
    }
}
