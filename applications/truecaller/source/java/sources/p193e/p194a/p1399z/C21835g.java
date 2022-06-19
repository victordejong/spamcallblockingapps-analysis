package p193e.p194a.p1399z;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import com.truecaller.personalsafety.C4318R;
import com.truecaller.personalsafety.PersonalSafetyLinkSource;
import com.truecaller.personalsafety.domain.data.PersonalSafetyHomePromoConfig;
import e.m.e.k;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1399z.p1404m.AbstractC21843a;
import p193e.p194a.p372b0.p430q.C8601l0;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.z.g */
/* loaded from: classes11-dex2jar.jar:e/a/z/g.class */
public final class C21835g implements AbstractC21834f {

    /* renamed from: a */
    public final g f60698a = C25225a.m3978P1(new C21836a());

    /* renamed from: b */
    public final Context f60699b;

    /* renamed from: c */
    public final AbstractC21843a f60700c;

    /* renamed from: d */
    public final C8601l0 f60701d;

    /* renamed from: e */
    public final C20592g f60702e;

    /* renamed from: e.a.z.g$a */
    /* loaded from: classes11-dex2jar.jar:e/a/z/g$a.class */
    public static final class C21836a extends m implements a<PersonalSafetyHomePromoConfig> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21836a() {
            super(0);
            C21835g.this = r4;
        }

        public Object invoke() {
            PersonalSafetyHomePromoConfig personalSafetyHomePromoConfig;
            C20592g c20592g = C21835g.this.f60702e;
            try {
                personalSafetyHomePromoConfig = (PersonalSafetyHomePromoConfig) new k().f(((AbstractC20597i) c20592g.f57707B3.m10941a(c20592g, C20592g.f57695p6[237])).mo10938g(), PersonalSafetyHomePromoConfig.class);
                if (personalSafetyHomePromoConfig == null) {
                    personalSafetyHomePromoConfig = new PersonalSafetyHomePromoConfig(null, null, 0L, null, 15, null);
                }
            } catch (Exception e) {
                personalSafetyHomePromoConfig = new PersonalSafetyHomePromoConfig(null, null, 0L, null, 15, null);
            }
            return personalSafetyHomePromoConfig;
        }
    }

    @Inject
    public C21835g(Context context, AbstractC21843a abstractC21843a, C8601l0 c8601l0, @Named("features_registry") C20592g c20592g) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC21843a, "settings");
        l.e(c8601l0, "timestampUtil");
        l.e(c20592g, "featuresRegistry");
        this.f60699b = context;
        this.f60700c = abstractC21843a;
        this.f60701d = c8601l0;
        this.f60702e = c20592g;
    }

    @Override // p193e.p194a.p1399z.AbstractC21834f
    /* renamed from: a */
    public String mo9021a() {
        String text = m9014h().getText();
        if (!((text.length() > 0) && m9013i())) {
            text = null;
        }
        if (text == null) {
            text = this.f60699b.getString(C4318R.string.personal_safety_promo_text);
            l.d(text, "context.getString(R.stri…rsonal_safety_promo_text)");
        }
        return text;
    }

    @Override // p193e.p194a.p1399z.AbstractC21834f
    /* renamed from: b */
    public boolean mo9020b() {
        boolean z;
        Long valueOf = Long.valueOf(m9014h().getDurationDays());
        boolean z2 = true;
        if (!(valueOf.longValue() > 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            long millis = TimeUnit.DAYS.toMillis(valueOf.longValue());
            try {
                this.f60699b.getPackageManager().getPackageInfo("com.truecaller.guardians", 1);
                z = true;
            } catch (PackageManager.NameNotFoundException e) {
                z = false;
            }
            if (z || !this.f60701d.m28259b(this.f60700c.mo9004u1(), millis)) {
                z2 = false;
            }
            return z2;
        }
        return false;
    }

    @Override // p193e.p194a.p1399z.AbstractC21834f
    /* renamed from: c */
    public String mo9019c(PersonalSafetyLinkSource personalSafetyLinkSource) {
        String str;
        l.e(personalSafetyLinkSource, "linkSource");
        boolean z = true;
        this.f60700c.mo9006A1(true);
        int ordinal = personalSafetyLinkSource.ordinal();
        if (ordinal != 1) {
            str = ordinal != 3 ? "https://grdns.page.link/true1" : "https://grdns.page.link/truecaller";
        } else {
            str = m9014h().getLaunchUrl();
            if (str.length() <= 0) {
                z = false;
            }
            if (!z) {
                str = null;
            }
            if (str == null) {
                str = "market://details?id=com.truecaller.guardians";
            }
        }
        return str;
    }

    @Override // p193e.p194a.p1399z.AbstractC21834f
    /* renamed from: d */
    public void mo9018d() {
        this.f60700c.mo9003y(this.f60701d.m28258c());
    }

    @Override // p193e.p194a.p1399z.AbstractC21834f
    /* renamed from: e */
    public String mo9017e() {
        String title = m9014h().getTitle();
        if (!((title.length() > 0) && m9013i())) {
            title = null;
        }
        if (title == null) {
            title = this.f60699b.getString(C4318R.string.personal_safety_promo_title);
            l.d(title, "context.getString(R.stri…sonal_safety_promo_title)");
        }
        return title;
    }

    @Override // p193e.p194a.p1399z.AbstractC21834f
    /* renamed from: f */
    public boolean mo9016f() {
        return this.f60700c.mo9005T1();
    }

    @Override // p193e.p194a.p1399z.AbstractC21834f
    /* renamed from: g */
    public boolean mo9015g() {
        boolean z = true;
        try {
            this.f60699b.getPackageManager().getPackageInfo("com.truecaller.guardians", 1);
        } catch (PackageManager.NameNotFoundException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public final PersonalSafetyHomePromoConfig m9014h() {
        return (PersonalSafetyHomePromoConfig) this.f60698a.getValue();
    }

    /* renamed from: i */
    public final boolean m9013i() {
        Locale locale;
        if (Build.VERSION.SDK_INT >= 24) {
            Resources resources = this.f60699b.getResources();
            l.d(resources, "context.resources");
            Configuration configuration = resources.getConfiguration();
            l.d(configuration, "context.resources.configuration");
            locale = configuration.getLocales().get(0);
        } else {
            Resources resources2 = this.f60699b.getResources();
            l.d(resources2, "context.resources");
            locale = resources2.getConfiguration().locale;
        }
        l.d(locale, AnalyticsConstants.LOCALE);
        return locale.getLanguage().equals("en");
    }
}
