package p193e.p194a.p195a.p258m;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.contextcall.utils.ContextCallPromoType;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.premium.promotion.PremiumHomeTabPromo;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: e.a.a.m.d1 */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/d1.class */
public abstract class AbstractC6798d1 {

    /* renamed from: a */
    public final String f22345a;

    /* renamed from: e.a.a.m.d1$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$a.class */
    public static final class C6799a extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6799a f22346b = new C6799a();

        public C6799a() {
            super("AnnounceCallerIdPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$a0 */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$a0.class */
    public static final class C6800a0 extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6800a0 f22347b = new C6800a0();

        public C6800a0() {
            super("VideoCallerIdPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$b.class */
    public static final class C6801b extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6801b f22348b = new C6801b();

        public C6801b() {
            super("CallerIdBannerVariantA", null);
        }
    }

    /* renamed from: e.a.a.m.d1$b0 */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$b0.class */
    public static final class C6802b0 extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6802b0 f22349b = new C6802b0();

        public C6802b0() {
            super("VideoCallerIdUpdatePromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$c.class */
    public static final class C6803c extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6803c f22350b = new C6803c();

        public C6803c() {
            super("CallerIdBannerVariantB", null);
        }
    }

    /* renamed from: e.a.a.m.d1$c0 */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$c0.class */
    public static final class C6804c0 extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6804c0 f22351b = new C6804c0();

        public C6804c0() {
            super("WhatsAppCallDetectedPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$d.class */
    public static final class C6805d extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6805d f22352b = new C6805d();

        public C6805d() {
            super("CallsMessagesSeparatelyPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$d0 */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$d0.class */
    public static final class C6806d0 extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6806d0 f22353b = new C6806d0();

        public C6806d0() {
            super("WhatsAppCallerIdPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$e */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$e.class */
    public static final class C6807e extends AbstractC6798d1 {

        /* renamed from: b */
        public final ContextCallPromoType f22354b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6807e(ContextCallPromoType contextCallPromoType) {
            super("ContextCall", null);
            l.e(contextCallPromoType, "contextCallPromoType");
            this.f22354b = contextCallPromoType;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C6807e) && l.a(this.f22354b, ((C6807e) obj).f22354b);
            }
            return true;
        }

        public int hashCode() {
            ContextCallPromoType contextCallPromoType = this.f22354b;
            return contextCallPromoType != null ? contextCallPromoType.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("ContextCall(contextCallPromoType=");
            m8728C.append(this.f22354b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.m.d1$e0 */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$e0.class */
    public static final class C6808e0 extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6808e0 f22355b = new C6808e0();

        public C6808e0() {
            super("WhatsappNotificationAccessPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$f */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$f.class */
    public static final class C6809f extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6809f f22356b = new C6809f();

        public C6809f() {
            super("DisableBatteryOptimization", null);
        }
    }

    /* renamed from: e.a.a.m.d1$f0 */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$f0.class */
    public static final class C6810f0 extends AbstractC6798d1 {

        /* renamed from: b */
        public final int f22357b;

        public C6810f0(int i) {
            super("WhoViewedMe", null);
            this.f22357b = i;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C6810f0) && this.f22357b == ((C6810f0) obj).f22357b;
            }
            return true;
        }

        public int hashCode() {
            return this.f22357b;
        }

        public String toString() {
            return C22128a.m8697J2(C22128a.m8728C("WhoViewedMe(number="), this.f22357b, ")");
        }
    }

    /* renamed from: e.a.a.m.d1$g */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$g.class */
    public static final class C6811g extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6811g f22358b = new C6811g();

        public C6811g() {
            super("DrawPermissionPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$h */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$h.class */
    public static final class C6812h extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6812h f22359b = new C6812h();

        public C6812h() {
            super("GhostCallPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$i */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$i.class */
    public static final class C6813i extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6813i f22360b = new C6813i();

        public C6813i() {
            super("GroupVoicePromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$j */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$j.class */
    public static final class C6814j extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6814j f22361b = new C6814j();

        public C6814j() {
            super("InCallUI", null);
        }
    }

    /* renamed from: e.a.a.m.d1$k */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$k.class */
    public static final class C6815k extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6815k f22362b = new C6815k();

        public C6815k() {
            super("InboxCleanerPromotionalTab", null);
        }
    }

    /* renamed from: e.a.a.m.d1$l */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$l.class */
    public static final class C6816l extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6816l f22363b = new C6816l();

        public C6816l() {
            super("InboxCleanerSpamTab", null);
        }
    }

    /* renamed from: e.a.a.m.d1$m */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$m.class */
    public static final class C6817m extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6817m f22364b = new C6817m();

        public C6817m() {
            super("LocationAccessPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$n */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$n.class */
    public static final class C6818n extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6818n f22365b = new C6818n();

        public C6818n() {
            super("MissedCallNotificationPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$o */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$o.class */
    public static final class C6819o extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6819o f22366b = new C6819o();

        public C6819o() {
            super("NewInboxPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$p */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$p.class */
    public static final class C6820p extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6820p f22367b = new C6820p();

        public C6820p() {
            super("None", null);
        }
    }

    /* renamed from: e.a.a.m.d1$q */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$q.class */
    public static final class C6821q extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6821q f22368b = new C6821q();

        public C6821q() {
            super("PersonalSafetyPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$r */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$r.class */
    public static final class C6822r extends AbstractC6798d1 {

        /* renamed from: b */
        public final PremiumHomeTabPromo.C4352a f22369b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6822r(PremiumHomeTabPromo.C4352a c4352a) {
            super("Premium", null);
            l.e(c4352a, RemoteMessageConst.DATA);
            this.f22369b = c4352a;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C6822r) && l.a(this.f22369b, ((C6822r) obj).f22369b);
            }
            return true;
        }

        public int hashCode() {
            PremiumHomeTabPromo.C4352a c4352a = this.f22369b;
            return c4352a != null ? c4352a.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("Premium(data=");
            m8728C.append(this.f22369b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.m.d1$s */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$s.class */
    public static final class C6823s extends AbstractC6798d1 {

        /* renamed from: b */
        public final PremiumLaunchContext f22370b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6823s(PremiumLaunchContext premiumLaunchContext) {
            super("PremiumBlocking", null);
            l.e(premiumLaunchContext, "launchContext");
            this.f22370b = premiumLaunchContext;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                return (obj instanceof C6823s) && l.a(this.f22370b, ((C6823s) obj).f22370b);
            }
            return true;
        }

        public int hashCode() {
            PremiumLaunchContext premiumLaunchContext = this.f22370b;
            return premiumLaunchContext != null ? premiumLaunchContext.hashCode() : 0;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("PremiumBlocking(launchContext=");
            m8728C.append(this.f22370b);
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    /* renamed from: e.a.a.m.d1$t */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$t.class */
    public static final class C6824t extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6824t f22371b = new C6824t();

        public C6824t() {
            super("PriorityCallAwareness", null);
        }
    }

    /* renamed from: e.a.a.m.d1$u */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$u.class */
    public static final class C6825u extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6825u f22372b = new C6825u();

        public C6825u() {
            super("ReadAndReplySms", null);
        }
    }

    /* renamed from: e.a.a.m.d1$v */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$v.class */
    public static final class C6826v extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6826v f22373b = new C6826v();

        public C6826v() {
            super("RequestDonNotDisturbAccessPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$w */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$w.class */
    public static final class C6827w extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6827w f22374b = new C6827w();

        public C6827w() {
            super("SecondaryPhoneNumberPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$x */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$x.class */
    public static final class C6828x extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6828x f22375b = new C6828x();

        public C6828x() {
            super("UpdateAppInfo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$y */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$y.class */
    public static final class C6829y extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6829y f22376b = new C6829y();

        public C6829y() {
            super("UpdateMobileServicesPromo", null);
        }
    }

    /* renamed from: e.a.a.m.d1$z */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/d1$z.class */
    public static final class C6830z extends AbstractC6798d1 {

        /* renamed from: b */
        public static final C6830z f22377b = new C6830z();

        public C6830z() {
            super("VerifiedBusinessAwareness", null);
        }
    }

    public AbstractC6798d1(String str, f fVar) {
        this.f22345a = str;
    }
}
