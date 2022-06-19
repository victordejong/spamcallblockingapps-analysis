package p193e.p194a.p1124p.p1125a;

import com.truecaller.editprofile.p164ui.Gender;
import p193e.p194a.p1124p.p1125a.C19172m;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import s1.f0.q;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.p.a.s */
/* loaded from: classes9-dex2jar.jar:e/a/p/a/s.class */
public final class C19182s extends m implements a<C19172m.C19173a> {

    /* renamed from: b */
    public final /* synthetic */ C19172m f53547b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19182s(C19172m c19172m) {
        super(0);
        this.f53547b = c19172m;
    }

    public Object invoke() {
        C19172m c19172m = this.f53547b;
        String string = c19172m.f53504v.getString("profileFirstName", "");
        l.d(string, "coreSettings.getString(C…gs.PROFILE_FIRSTNAME, \"\")");
        String m13946Jj = c19172m.m13946Jj(string);
        C19172m c19172m2 = this.f53547b;
        String string2 = c19172m2.f53504v.getString("profileLastName", "");
        l.d(string2, "coreSettings.getString(C…ngs.PROFILE_LASTNAME, \"\")");
        String m13946Jj2 = c19172m2.m13946Jj(string2);
        C19172m c19172m3 = this.f53547b;
        String string3 = c19172m3.f53504v.getString("profileEmail", "");
        l.d(string3, "coreSettings.getString(C…ttings.PROFILE_EMAIL, \"\")");
        String m13946Jj3 = c19172m3.m13946Jj(string3);
        C19172m c19172m4 = this.f53547b;
        String string4 = c19172m4.f53504v.getString("profileStreet", "");
        l.d(string4, "coreSettings.getString(C…tings.PROFILE_STREET, \"\")");
        String m13946Jj4 = c19172m4.m13946Jj(string4);
        C19172m c19172m5 = this.f53547b;
        String string5 = c19172m5.f53504v.getString("profileCity", "");
        l.d(string5, "coreSettings.getString(C…ettings.PROFILE_CITY, \"\")");
        String m13946Jj5 = c19172m5.m13946Jj(string5);
        C19172m c19172m6 = this.f53547b;
        String string6 = c19172m6.f53504v.getString("profileCompanyName", "");
        l.d(string6, "coreSettings.getString(C…PROFILE_COMPANY_NAME, \"\")");
        String m13946Jj6 = c19172m6.m13946Jj(string6);
        C19172m c19172m7 = this.f53547b;
        String string7 = c19172m7.f53504v.getString("profileCompanyJob", "");
        l.d(string7, "coreSettings.getString(C….PROFILE_COMPANY_JOB, \"\")");
        String m13946Jj7 = c19172m7.m13946Jj(string7);
        C19172m c19172m8 = this.f53547b;
        String string8 = c19172m8.f53504v.getString("profileZip", "");
        l.d(string8, "coreSettings.getString(C…Settings.PROFILE_ZIP, \"\")");
        String m13946Jj8 = c19172m8.m13946Jj(string8);
        C19172m c19172m9 = this.f53547b;
        String string9 = c19172m9.f53504v.getString("profileWeb", "");
        l.d(string9, "coreSettings.getString(C…Settings.PROFILE_WEB, \"\")");
        String m13946Jj9 = c19172m9.m13946Jj(string9);
        C19172m c19172m10 = this.f53547b;
        String string10 = c19172m10.f53504v.getString("profileStatus", "");
        l.d(string10, "coreSettings.getString(C…tings.PROFILE_STATUS, \"\")");
        String m13946Jj10 = c19172m10.m13946Jj(string10);
        C19172m c19172m11 = this.f53547b;
        String string11 = c19172m11.f53504v.getString("profileBirthday", "");
        l.d(string11, "coreSettings.getString(C…ngs.PROFILE_BIRTHDAY, \"\")");
        String m13946Jj11 = c19172m11.m13946Jj(string11);
        AbstractC8541a abstractC8541a = this.f53547b.f53504v;
        Gender gender = Gender.N;
        String string12 = abstractC8541a.getString("profileGender", gender.name());
        l.d(string12, "coreSettings.getString(C…LE_GENDER, Gender.N.name)");
        if (!l.a(string12, Gender.M.name()) && !l.a(string12, Gender.F.name())) {
            string12 = gender.name();
        }
        String string13 = this.f53547b.f53504v.getString("profileTag", "");
        l.d(string13, "coreSettings.getString(C…Settings.PROFILE_TAG, \"\")");
        return new C19172m.C19173a(m13946Jj, m13946Jj2, m13946Jj3, m13946Jj4, m13946Jj8, m13946Jj5, m13946Jj6, m13946Jj7, m13946Jj9, m13946Jj10, m13946Jj11, string12, q.j(string13));
    }
}
