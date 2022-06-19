package p193e.p194a.p1315v4.p1321s0.p1326m.p1327a;

import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.android.sdk.TrueProfile;
import com.truecaller.android.sdk.oAuth.SdkOptionsDataBundle;
import com.truecaller.sdk.C4417R;
import com.truecaller.sdk.oAuth.networking.data.PartnerDetailsResponse;
import e.m.f.a.e;
import e.m.f.a.j;
import e.m.f.a.o;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19231g0;
import p193e.p194a.p1221t.p1230b.p1236e.C20385b;
import p193e.p194a.p1315v4.AbstractC21040l;
import p193e.p194a.p1315v4.C21017a;
import p193e.p194a.p1315v4.C21018a0;
import p193e.p194a.p1315v4.C21154v;
import p193e.p194a.p1315v4.p1321s0.AbstractC21081b;
import p193e.p194a.p1315v4.p1321s0.C21080a;
import p193e.p194a.p1315v4.p1321s0.p1323l.AbstractC21098b;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p417k.C8494c;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.f0.r;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.v4.s0.m.a.e */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/m/a/e.class */
public final class C21120e extends AbstractC21119d {

    /* renamed from: b */
    public AbstractC21081b f59253b;

    /* renamed from: c */
    public C20385b f59254c;

    /* renamed from: d */
    public Locale f59255d;

    /* renamed from: e */
    public final f f59256e;

    /* renamed from: f */
    public final PackageManager f59257f;

    /* renamed from: g */
    public final C21154v f59258g;

    /* renamed from: h */
    public final AbstractC8541a f59259h;

    /* renamed from: i */
    public final AbstractC8438a f59260i;

    /* renamed from: j */
    public final C21018a0 f59261j;

    /* renamed from: k */
    public final C21017a f59262k;

    /* renamed from: l */
    public final AbstractC19233h0 f59263l;

    /* renamed from: m */
    public final AbstractC21098b f59264m;

    /* renamed from: n */
    public final AbstractC21040l f59265n;

    @Inject
    public C21120e(@Named("UI") f fVar, PackageManager packageManager, C21154v c21154v, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, C21018a0 c21018a0, C21017a c21017a, AbstractC19233h0 abstractC19233h0, AbstractC21098b abstractC21098b, AbstractC21040l abstractC21040l) {
        l.e(fVar, "uiContext");
        l.e(packageManager, "packageManager");
        l.e(c21154v, "sdkAccountManager");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        l.e(c21018a0, "sdkLocaleManager");
        l.e(c21017a, "activityHelper");
        l.e(abstractC19233h0, "themedResourceProvider");
        l.e(abstractC21098b, "oAuthNetworkManager");
        l.e(abstractC21040l, "eventsTrackerHolder");
        this.f59256e = fVar;
        this.f59257f = packageManager;
        this.f59258g = c21154v;
        this.f59259h = abstractC8541a;
        this.f59260i = abstractC8438a;
        this.f59261j = c21018a0;
        this.f59262k = c21017a;
        this.f59263l = abstractC19233h0;
        this.f59264m = abstractC21098b;
        this.f59265n = abstractC21040l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.v4.s0.m.a.f, PV, java.lang.Object] */
    @Override // p193e.p194a.p1315v4.AbstractC21026e
    /* renamed from: a */
    public void mo10314a(AbstractC21121f abstractC21121f) {
        AbstractC21121f abstractC21121f2 = abstractC21121f;
        l.e(abstractC21121f2, "presenterView");
        this.f59029a = abstractC21121f2;
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != 0) {
            abstractC21081b.mo10336o(abstractC21121f2);
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.AbstractC21026e
    /* renamed from: b */
    public void mo10313b() {
        this.f59029a = null;
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.mo10339c();
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: c */
    public void mo10312c(String str) {
        l.e(str, "newLanguage");
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b == null) {
            l.l("oAuthSdkPartner");
            throw null;
        } else if (!(!l.a(str, abstractC21081b.mo10356u()))) {
        } else {
            AbstractC21081b abstractC21081b2 = this.f59253b;
            if (abstractC21081b2 != null) {
                abstractC21081b2.mo10341v(str);
            } else {
                l.l("oAuthSdkPartner");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: d */
    public void mo10311d(PartnerDetailsResponse partnerDetailsResponse) {
        C20385b c20385b;
        String str;
        SdkOptionsDataBundle sdkOptionsDataBundle;
        l.e(partnerDetailsResponse, "partnerDetails");
        AbstractC21121f abstractC21121f = (AbstractC21121f) this.f59029a;
        if (abstractC21121f == null || (c20385b = this.f59254c) == null) {
            return;
        }
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b == null) {
            l.l("oAuthSdkPartner");
            throw null;
        }
        TrueProfile mo10338g = abstractC21081b.mo10338g();
        abstractC21121f.mo10282g6(C17422k.m16115C(partnerDetailsResponse.getAppName()));
        String appLogoUrl = partnerDetailsResponse.getAppLogoUrl();
        if (appLogoUrl != null) {
            Uri parse = Uri.parse(appLogoUrl);
            l.d(parse, "Uri.parse(it)");
            abstractC21121f.mo10278p4(parse);
        }
        SdkOptionsDataBundle sdkOptionsDataBundle2 = c20385b.f57262b;
        l.d(sdkOptionsDataBundle2, "sdkOptionsEvaluatorTemp.sdkOptionsDataBundle");
        int i = sdkOptionsDataBundle2.f10009a;
        if (i == 0) {
            i = this.f59263l.mo13769a(C4417R.color.primary_dark);
        }
        abstractC21121f.mo10294Q1(Color.argb(C25225a.m4001J2(Color.alpha(i) * 0.35f), Color.red(i), Color.green(i), Color.blue(i)));
        abstractC21121f.mo10286X3(i);
        abstractC21121f.mo10272z1(i);
        abstractC21121f.mo10296N5();
        String appName = partnerDetailsResponse.getAppName();
        String[] mo13761i = this.f59263l.mo13761i(C4417R.array.SdkPartnerLoginIntentOptionsArray);
        C20385b c20385b2 = this.f59254c;
        String str2 = mo13761i[(c20385b2 == null || (sdkOptionsDataBundle = c20385b2.f57262b) == null) ? 0 : sdkOptionsDataBundle.f10011c];
        l.d(str2, "themedResourceProvider\n …)[getConsentTitleIndex()]");
        String format = String.format(str2, Arrays.copyOf(new Object[]{appName}, 1));
        l.d(format, "java.lang.String.format(format, *args)");
        abstractC21121f.mo10285X9(format);
        String m13813D = C19231g0.m13813D(StringConstant.SPACE, mo10338g.firstName, mo10338g.lastName);
        l.d(m13813D, "StringUtils.combine(\" \",…me, trueProfile.lastName)");
        abstractC21121f.mo10281i6(m13813D);
        try {
            o R = j.q().R(mo10338g.phoneNumber, mo10338g.countryCode);
            l.d(R, "phoneNumberUtil.parse(tr… trueProfile.countryCode)");
            str = String.valueOf(R.d);
        } catch (e e) {
            str = mo10338g.phoneNumber;
            l.d(str, "trueProfile.phoneNumber");
        }
        abstractC21121f.mo10274t9(str);
        abstractC21121f.mo10287V3(c20385b.m11213a() ? C4417R.C4418drawable.background_confirm_button : C4417R.C4418drawable.background_rounded_confirm_button);
        SdkOptionsDataBundle sdkOptionsDataBundle3 = c20385b.f57262b;
        l.d(sdkOptionsDataBundle3, "sdkOptionsEvaluatorTemp.sdkOptionsDataBundle");
        String str3 = this.f59263l.mo13761i(C4417R.array.SdkPartnerCTAOptionsArray)[sdkOptionsDataBundle3.f10012d];
        AbstractC21121f abstractC21121f2 = (AbstractC21121f) this.f59029a;
        if (abstractC21121f2 != null) {
            int i2 = sdkOptionsDataBundle3.f10009a;
            if (i2 == 0) {
                i2 = this.f59263l.mo13769a(C4417R.color.primary_dark);
            }
            int i3 = sdkOptionsDataBundle3.f10010b;
            if (i3 == 0) {
                i3 = this.f59263l.mo13769a(C4417R.color.white);
            }
            l.d(str3, "buttonText");
            abstractC21121f2.mo10295P6(i2, i3, str3);
        }
        abstractC21121f.mo10298C6(partnerDetailsResponse.getScopes());
        SdkOptionsDataBundle sdkOptionsDataBundle4 = c20385b.f57262b;
        Integer num = null;
        if (sdkOptionsDataBundle4 != null) {
            num = Integer.valueOf(sdkOptionsDataBundle4.f10013e);
        }
        String appName2 = partnerDetailsResponse.getAppName();
        String str4 = this.f59263l.mo13761i(C4417R.array.SdkPartnerLoginPrefixOptionsArray)[num != null ? num.intValue() : 1];
        String mo13768b = this.f59263l.mo13768b(C4417R.string.SdkInfo, appName2);
        l.d(mo13768b, "themedResourceProvider.g…ing.SdkInfo, partnerName)");
        String m13813D2 = C19231g0.m13813D(", ", str4, C22128a.m8562v(new Object[0], 0, mo13768b, "java.lang.String.format(format, *args)"));
        l.d(m13813D2, "StringUtils.combine(\", \", prefix, suffix)");
        abstractC21121f.mo10297E6(m13813D2);
        String privacyPolicyUrl = partnerDetailsResponse.getPrivacyPolicyUrl();
        if (!(privacyPolicyUrl == null || r.p(privacyPolicyUrl))) {
            abstractC21121f.mo10273y8(partnerDetailsResponse.getPrivacyPolicyUrl());
        }
        String tosUrl = partnerDetailsResponse.getTosUrl();
        if (!(tosUrl == null || r.p(tosUrl))) {
            abstractC21121f.mo10277q9(partnerDetailsResponse.getTosUrl());
        }
        String mo13768b2 = this.f59263l.mo13768b(c20385b.m11212b(1) ? C4417R.string.SdkSkip : c20385b.m11212b(4) ? C4417R.string.SdkUseAnotherMethod : c20385b.m11212b(8) ? C4417R.string.SdkEnterDetailsManually : c20385b.m11212b(16) ? C4417R.string.SdkWillDoLater : C4417R.string.SdkUseDifferentNumber, new Object[0]);
        l.d(mo13768b2, "themedResourceProvider.g…r\n            }\n        )");
        abstractC21121f.mo10293R1(mo13768b2);
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: e */
    public void mo10310e() {
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.onBackPressed();
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: f */
    public void mo10309f(int i) {
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.mo10335q(i);
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000d, code lost:
        if (r13 != null) goto L10;
     */
    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo10308g(android.os.Bundle r13) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.C21120e.mo10308g(android.os.Bundle):boolean");
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: h */
    public void mo10307h() {
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.mo10343n();
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: i */
    public void mo10306i() {
        Object obj;
        AbstractC21121f abstractC21121f = (AbstractC21121f) this.f59029a;
        if (abstractC21121f != null) {
            this.f59255d = this.f59261j.m10414a();
            C21080a c21080a = C21080a.f59179c;
            Iterator<T> it = C21080a.f59178b.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it.next();
                C8494c c8494c = (C8494c) obj;
                AbstractC21081b abstractC21081b = this.f59253b;
                if (abstractC21081b == null) {
                    l.l("oAuthSdkPartner");
                    throw null;
                } else if (l.a(abstractC21081b.mo10356u(), c8494c.f26267b)) {
                    break;
                }
            }
            C8494c c8494c2 = (C8494c) obj;
            if (c8494c2 == null) {
                C21080a c21080a2 = C21080a.f59179c;
                c8494c2 = C21080a.f59177a;
            }
            if (!r.p(c8494c2.f26266a)) {
                this.f59261j.m10413b(new Locale(c8494c2.f26267b));
            }
            AbstractC21121f abstractC21121f2 = (AbstractC21121f) this.f59029a;
            if (abstractC21121f2 != null) {
                abstractC21121f2.mo10279n6(c8494c2.f26266a);
            }
            abstractC21121f.mo10283g0();
            AbstractC21081b abstractC21081b2 = this.f59253b;
            if (abstractC21081b2 != null) {
                abstractC21081b2.mo10345h();
            } else {
                l.l("oAuthSdkPartner");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: j */
    public void mo10305j() {
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.mo10347a();
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: k */
    public void mo10304k(Bundle bundle) {
        l.e(bundle, "outState");
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.onSaveInstanceState(bundle);
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: l */
    public void mo10303l() {
        Locale m10414a = this.f59261j.m10414a();
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b == null) {
            l.l("oAuthSdkPartner");
            throw null;
        } else if (!(!l.a(m10414a, abstractC21081b.getLocale()))) {
        } else {
            C21018a0 c21018a0 = this.f59261j;
            AbstractC21081b abstractC21081b2 = this.f59253b;
            if (abstractC21081b2 != null) {
                c21018a0.m10413b(abstractC21081b2.getLocale());
            } else {
                l.l("oAuthSdkPartner");
                throw null;
            }
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: m */
    public void mo10302m() {
        Locale locale = this.f59255d;
        if (locale != null) {
            this.f59261j.m10413b(locale);
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: n */
    public void mo10301n() {
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.mo10346e();
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: o */
    public void mo10300o(String str, String str2) {
        l.e(str, "interactionType");
        l.e(str2, "url");
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.mo10344j(str, str2);
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }

    @Override // p193e.p194a.p1315v4.p1321s0.p1326m.p1327a.AbstractC21119d
    /* renamed from: p */
    public void mo10299p() {
        AbstractC21081b abstractC21081b = this.f59253b;
        if (abstractC21081b != null) {
            abstractC21081b.mo10342s();
        } else {
            l.l("oAuthSdkPartner");
            throw null;
        }
    }
}
