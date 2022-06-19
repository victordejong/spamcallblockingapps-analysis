package p193e.p194a.p1060m4.p1061c;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import com.truecaller.profile.data.dto.Address;
import com.truecaller.profile.data.dto.Branding;
import com.truecaller.profile.data.dto.BusinessData;
import com.truecaller.profile.data.dto.Company;
import com.truecaller.profile.data.dto.OnlineIds;
import com.truecaller.profile.data.dto.PersonalData;
import com.truecaller.profile.data.dto.Profile;
import java.util.List;
import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p394b.p404m.C8410d;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.f0.r;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.m4.c.b */
/* loaded from: classes12-dex2jar.jar:e/a/m4/c/b.class */
public final class C18203b {

    /* renamed from: a */
    public final Map<String, String> f51468a;

    /* renamed from: b */
    public final AbstractC8541a f51469b;

    /* renamed from: c */
    public final AbstractC8438a f51470c;

    /* renamed from: d */
    public final long f51471d;

    public C18203b(Map<String, String> map, AbstractC8541a abstractC8541a, AbstractC8438a abstractC8438a, long j) {
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC8438a, "accountSettings");
        this.f51468a = map;
        this.f51469b = abstractC8541a;
        this.f51470c = abstractC8438a;
        this.f51471d = j;
    }

    /* renamed from: a */
    public final Address m15452a(boolean z) {
        String m15449d = m15449d("profileStreet");
        String m15449d2 = m15449d("profileCity");
        String m15449d3 = m15449d("profileZip");
        Map<String, String> map = this.f51468a;
        String str = map != null ? map.get(C8410d.f26089b.get("profileCountryIso")) : null;
        String string = this.f51470c.getString("profileCountryIso", "");
        if (str == null) {
            str = string;
        }
        l.d(str, "StringUtils.defaultStrin…String(key, \"\")\n        )");
        return new Address(m15449d, m15449d2, m15449d3, str, z ? m15451b("profileLatitude") : null, z ? m15451b("profileLongitude") : null);
    }

    /* renamed from: b */
    public final Double m15451b(String str) {
        Double valueOf = Double.valueOf(this.f51469b.m28411E(str, PlaceLikelihood.LIKELIHOOD_MIN_VALUE));
        if (!(valueOf.doubleValue() != PlaceLikelihood.LIKELIHOOD_MIN_VALUE)) {
            valueOf = null;
        }
        return valueOf;
    }

    /* renamed from: c */
    public final Profile m15450c(String str, List<Long> list, boolean z) {
        Profile profile;
        l.e(str, "avatarUrl");
        l.e(list, "tags");
        String m15449d = m15449d("profileFirstName");
        String m15449d2 = m15449d("profileLastName");
        String m15449d3 = m15449d("profileGender");
        if (m15449d3.length() == 0) {
            m15449d3 = "N";
        }
        String m15449d4 = m15449d("profileCompanyName");
        String m15449d5 = m15449d("profileCompanyJob");
        String m15449d6 = m15449d("profileStatus");
        String m15449d7 = m15449d("profileAcceptAuto");
        String str2 = (l.a(m15449d7, "1") || l.a(m15449d7, "2")) ? "Public" : "Private";
        String m15449d8 = m15449d("profileBirthday");
        String str3 = m15449d8;
        if (r.p(m15449d8)) {
            str3 = null;
        }
        boolean z2 = this.f51469b.getBoolean("profileIsCredUser");
        if (z) {
            s sVar = s.a;
            profile = new Profile(m15449d, m15449d2, null, new BusinessData(C25225a.m3962T1(Long.valueOf(this.f51471d)), str, m15449d5, m15449d6, list, m15448e(), new Company(m15449d4, sVar, m15452a(true), new Branding(m15449d("profileBackgroundColor"), sVar), m15449d("profileSize"))), 4, null);
        } else {
            profile = new Profile(m15449d, m15449d2, new PersonalData(C25225a.m3962T1(Long.valueOf(this.f51471d)), m15449d3, m15452a(false), m15448e(), str, list, m15449d4, m15449d5, str2, m15449d6, str3, Boolean.valueOf(z2)), null, 8, null);
        }
        return profile;
    }

    /* renamed from: d */
    public final String m15449d(String str) {
        Map<String, String> map = this.f51468a;
        String str2 = map != null ? map.get(C8410d.f26089b.get(str)) : null;
        String string = this.f51469b.getString(str, "");
        String str3 = str2;
        if (str2 == null) {
            str3 = string;
        }
        l.d(str3, "StringUtils.defaultStrin…String(key, \"\")\n        )");
        return str3;
    }

    /* renamed from: e */
    public final OnlineIds m15448e() {
        return new OnlineIds(m15449d("profileFacebook"), m15449d("profileEmail"), m15449d("profileWeb"), m15449d("profileTwitter"), m15449d("profileGoogleIdToken"));
    }
}
