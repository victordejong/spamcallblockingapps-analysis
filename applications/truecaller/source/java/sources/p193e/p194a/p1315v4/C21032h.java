package p193e.p194a.p1315v4;

import android.app.NotificationManager;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.android.sdk.PartnerInformation;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.sdk.C4417R;
import e.m.f.a.e;
import e.m.f.a.j;
import e.m.f.a.o;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p1221t.p1230b.p1231c.C20358c;
import p193e.p194a.p1315v4.p1330u0.AbstractC21143g;
import p193e.p194a.p1315v4.p1330u0.C21137b;
import p193e.p194a.p1315v4.p1330u0.C21139d;
import p193e.p194a.p1315v4.p1330u0.C21140e;
import p193e.p194a.p1315v4.p1330u0.C21142f;
import p193e.p194a.p1315v4.p1330u0.C21145i;
import p193e.p194a.p1315v4.p1333w0.AbstractC21159b;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.f0.r;
import s1.k;
import s1.w.f;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.v4.h */
/* loaded from: classes12-dex2jar.jar:e/a/v4/h.class */
public class C21032h extends AbstractC21030g {

    /* renamed from: b */
    public Locale f59032b;

    /* renamed from: c */
    public C20358c f59033c;

    /* renamed from: d */
    public boolean f59034d;

    /* renamed from: e */
    public AbstractC21143g f59035e;

    /* renamed from: f */
    public final f f59036f;

    /* renamed from: g */
    public final AbstractC19868j f59037g;

    /* renamed from: h */
    public final AbstractC19854f<AbstractC21165y> f59038h;

    /* renamed from: i */
    public final TelephonyManager f59039i;

    /* renamed from: j */
    public final PackageManager f59040j;

    /* renamed from: k */
    public final NotificationManager f59041k;

    /* renamed from: l */
    public final AbstractC21040l f59042l;

    /* renamed from: m */
    public final C21020b0 f59043m;

    /* renamed from: n */
    public final C21154v f59044n;

    /* renamed from: o */
    public final AbstractC8541a f59045o;

    /* renamed from: p */
    public final AbstractC8438a f59046p;

    /* renamed from: q */
    public final C21018a0 f59047q;

    /* renamed from: r */
    public final C21017a f59048r;

    /* renamed from: s */
    public final AbstractC19233h0 f59049s;

    public C21032h(f fVar, AbstractC19868j abstractC19868j, AbstractC19854f<AbstractC21165y> abstractC19854f, TelephonyManager telephonyManager, PackageManager packageManager, NotificationManager notificationManager, AbstractC21040l abstractC21040l, C21020b0 c21020b0, C21154v c21154v, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, C21018a0 c21018a0, C21017a c21017a, AbstractC19233h0 abstractC19233h0) {
        l.e(fVar, "mUiContext");
        l.e(abstractC19868j, "mUiThread");
        l.e(abstractC19854f, "mSdkHelper");
        l.e(packageManager, "mPackageManager");
        l.e(notificationManager, "mNotificationManager");
        l.e(abstractC21040l, "mEventsTrackHolder");
        l.e(c21020b0, "mSdkRepository");
        l.e(c21154v, "mSdkAccountManager");
        l.e(abstractC8541a, "mCoreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(c21018a0, "mSdkLocaleManager");
        l.e(c21017a, "mActivityHelper");
        l.e(abstractC19233h0, "themedResourceProvider");
        this.f59036f = fVar;
        this.f59037g = abstractC19868j;
        this.f59038h = abstractC19854f;
        this.f59039i = telephonyManager;
        this.f59040j = packageManager;
        this.f59041k = notificationManager;
        this.f59042l = abstractC21040l;
        this.f59043m = c21020b0;
        this.f59044n = c21154v;
        this.f59045o = abstractC8541a;
        this.f59046p = abstractC8438a;
        this.f59047q = c21018a0;
        this.f59048r = c21017a;
        this.f59049s = abstractC19233h0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.v4.w0.b] */
    @Override // p193e.p194a.p1315v4.AbstractC21026e
    /* renamed from: a */
    public void mo10314a(AbstractC21159b abstractC21159b) {
        AbstractC21159b abstractC21159b2 = abstractC21159b;
        l.e(abstractC21159b2, "presenterView");
        this.f59029a = abstractC21159b2;
        AbstractC21143g abstractC21143g = this.f59035e;
        if (abstractC21143g != 0) {
            abstractC21143g.mo10241t(abstractC21159b2);
        } else {
            l.l("sdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21026e
    /* renamed from: b */
    public void mo10313b() {
        this.f59029a = null;
        AbstractC21143g abstractC21143g = this.f59035e;
        if (abstractC21143g != null) {
            abstractC21143g.mo10236c();
        } else {
            l.l("sdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: c */
    public void mo10407c(TrueProfile trueProfile) {
        l.e(trueProfile, "trueProfile");
        trueProfile.verificationTimestamp = this.f59045o.getLong("profileVerificationDate", 0L);
        trueProfile.verificationMode = this.f59045o.getString("profileVerificationMode");
        trueProfile.isSimChanged = m10394r();
        Locale locale = this.f59032b;
        if (locale != null) {
            trueProfile.userLocale = locale;
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: d */
    public void mo10406d() {
        AbstractC21143g abstractC21143g = this.f59035e;
        if (abstractC21143g != null) {
            abstractC21143g.onBackPressed();
        } else {
            l.l("sdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: e */
    public void mo10405e() {
        AbstractC21143g abstractC21143g = this.f59035e;
        if (abstractC21143g != null) {
            abstractC21143g.mo10240u();
        } else {
            l.l("sdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: f */
    public boolean mo10404f(Bundle bundle) {
        if (bundle == null) {
            Intent intent = this.f59048r.f59024a.getIntent();
            bundle = intent != null ? intent.getExtras() : null;
        }
        if (bundle != null) {
            f fVar = this.f59036f;
            NotificationManager notificationManager = this.f59041k;
            C21020b0 c21020b0 = this.f59043m;
            AbstractC19854f<AbstractC21165y> abstractC19854f = this.f59038h;
            AbstractC19868j abstractC19868j = this.f59037g;
            AbstractC8541a abstractC8541a = this.f59045o;
            AbstractC8438a abstractC8438a = this.f59046p;
            PackageManager packageManager = this.f59040j;
            AbstractC21040l abstractC21040l = this.f59042l;
            C21154v c21154v = this.f59044n;
            C21017a c21017a = this.f59048r;
            boolean a = l.a(c21017a.f59024a.getPackageName(), c21017a.f59024a.getCallingPackage());
            l.e(fVar, "uiContext");
            l.e(bundle, "extras");
            l.e(notificationManager, "notificationManager");
            l.e(c21020b0, "sdkRepository");
            l.e(abstractC19854f, "sdkHelper");
            l.e(abstractC19868j, "uiThread");
            l.e(abstractC8541a, "coreSettings");
            l.e(abstractC8438a, "accountSettings");
            l.e(packageManager, "packageManager");
            l.e(abstractC21040l, "eventsTrackerHolder");
            l.e(c21154v, "sdkAccountManager");
            C21140e c21140e = bundle.containsKey(PartnerInformation.TRUESDK_VERSION) ? new C21140e(fVar, bundle, abstractC8541a, abstractC8438a, abstractC19854f, abstractC19868j, packageManager, abstractC21040l, c21154v) : bundle.containsKey("a") ? new C21145i(bundle, notificationManager, c21020b0, abstractC8541a, abstractC8438a, abstractC21040l, c21154v, null, 128) : bundle.containsKey("qr_scan_code") ? new C21142f(bundle, null, abstractC8541a, abstractC8438a, c21020b0, abstractC21040l, c21154v, 2) : a ? new C21139d(bundle, abstractC8541a, abstractC8438a, abstractC21040l, c21154v) : new C21137b(bundle, abstractC8541a, abstractC8438a, c21020b0, abstractC21040l, c21154v);
            this.f59035e = c21140e;
            this.f59033c = c21140e.mo10234m();
            return true;
        }
        return false;
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: g */
    public void mo10383g() {
        PV pv = this.f59029a;
        if (pv != 0) {
            boolean z = !this.f59034d;
            this.f59034d = z;
            AbstractC21159b abstractC21159b = (AbstractC21159b) pv;
            if (abstractC21159b != null) {
                abstractC21159b.mo10205M5(z);
            }
            AbstractC21143g abstractC21143g = this.f59035e;
            if (abstractC21143g != null) {
                abstractC21143g.mo10242q(this.f59034d);
            } else {
                l.l("sdkPartner");
                throw null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c6, code lost:
        if (r8 != null) goto L32;
     */
    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10403h() {
        /*
            Method dump skipped, instructions count: 507
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.C21032h.mo10403h():void");
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: i */
    public void mo10402i() {
        AbstractC21143g abstractC21143g = this.f59035e;
        if (abstractC21143g != null) {
            abstractC21143g.mo10237a();
        } else {
            l.l("sdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: j */
    public void mo10401j(Bundle bundle) {
        l.e(bundle, "outState");
        AbstractC21143g abstractC21143g = this.f59035e;
        if (abstractC21143g != null) {
            abstractC21143g.onSaveInstanceState(bundle);
        } else {
            l.l("sdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: k */
    public void mo10400k() {
        Locale locale = this.f59032b;
        if (locale != null) {
            this.f59047q.m10413b(locale);
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: l */
    public void mo10399l() {
        AbstractC21143g abstractC21143g = this.f59035e;
        if (abstractC21143g != null) {
            abstractC21143g.mo10246e();
        } else {
            l.l("sdkPartner");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:146:0x075a, code lost:
        if (s1.f0.r.p(r0) != false) goto L147;
     */
    @Override // p193e.p194a.p1315v4.AbstractC21030g
    /* renamed from: m */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo10382m() {
        /*
            Method dump skipped, instructions count: 1971
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.C21032h.mo10382m():void");
    }

    /* renamed from: n */
    public final String m10398n(TrueProfile trueProfile) {
        l.e(trueProfile, "trueProfile");
        String m13813D = C19231g0.m13813D(StringConstant.SPACE, trueProfile.firstName, trueProfile.lastName);
        l.d(m13813D, "StringUtils.combine(\" \",…me, trueProfile.lastName)");
        return m13813D;
    }

    /* renamed from: o */
    public final k<String, Integer> m10397o(TrueProfile trueProfile) {
        int i;
        String str;
        String str2;
        AbstractC21159b abstractC21159b = (AbstractC21159b) this.f59029a;
        if (abstractC21159b != null && !TextUtils.isEmpty(trueProfile.gender) && (str2 = trueProfile.gender) != null) {
            int hashCode = str2.hashCode();
            if (hashCode != 70) {
                if (hashCode == 77 && str2.equals("M")) {
                    i = C4417R.C4418drawable.ic_sdk_male;
                    str = abstractC21159b.mo10204Q(C4417R.string.ProfileEditGenderMale);
                }
            } else if (str2.equals("F")) {
                i = C4417R.C4418drawable.ic_sdk_female;
                str = abstractC21159b.mo10204Q(C4417R.string.ProfileEditGenderFemale);
            }
            return new k<>(str, Integer.valueOf(i));
        }
        i = 0;
        str = "";
        return new k<>(str, Integer.valueOf(i));
    }

    /* renamed from: p */
    public final String m10396p(String str) {
        String[] mo13761i = this.f59049s.mo13761i(C4417R.array.SdkPartnerLoginIntentOptionsArray);
        C20358c c20358c = this.f59033c;
        String str2 = mo13761i[c20358c != null ? c20358c.f57195b : 4];
        l.d(str2, "themedResourceProvider\n …)[getConsentTitleIndex()]");
        return C22128a.m8562v(new Object[]{str}, 1, str2, "java.lang.String.format(format, *args)");
    }

    /* renamed from: q */
    public final String m10395q(TrueProfile trueProfile) {
        try {
            o R = j.q().R(trueProfile.phoneNumber, trueProfile.countryCode);
            l.d(R, "phoneNumberUtil.parse(tr… trueProfile.countryCode)");
            return String.valueOf(R.d);
        } catch (e e) {
            String str = trueProfile.phoneNumber;
            l.d(str, "trueProfile.phoneNumber");
            return str;
        }
    }

    /* renamed from: r */
    public final boolean m10394r() {
        String str;
        try {
            TelephonyManager telephonyManager = this.f59039i;
            str = null;
            if (telephonyManager != null) {
                str = telephonyManager.getSimSerialNumber();
            }
        } catch (SecurityException e) {
            str = null;
        }
        String string = this.f59045o.getString("profileSimNumber");
        AbstractC21159b abstractC21159b = (AbstractC21159b) this.f59029a;
        boolean z = false;
        if (abstractC21159b != null ? abstractC21159b.mo10199U8() : false) {
            z = false;
            if (!h.j(string)) {
                z = false;
                if (!h.j(str)) {
                    z = false;
                    if (!r.o(string, str, false, 2)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }
}
