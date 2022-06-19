package p193e.p1512i.p1516b.p1519d2;

import android.content.SharedPreferences;
import java.util.Objects;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import p193e.p1512i.p1516b.p1531s2.C23091n;
import s1.z.c.l;
/* renamed from: e.i.b.d2.c */
/* loaded from: classes-dex2jar.jar:e/i/b/d2/c.class */
public class C22935c {

    /* renamed from: a */
    public final C23091n f63623a;

    /* renamed from: b */
    public final SharedPreferences f63624b;

    /* renamed from: c */
    public final C22934b f63625c;

    public C22935c(SharedPreferences sharedPreferences, C22934b c22934b) {
        l.f(sharedPreferences, "sharedPreferences");
        l.f(c22934b, "integrationDetector");
        this.f63624b = sharedPreferences;
        this.f63625c = c22934b;
        this.f63623a = new C23091n(sharedPreferences);
    }

    /* renamed from: a */
    public void m7620a(EnumC22933a enumC22933a) {
        l.f(enumC22933a, "integration");
        this.f63624b.edit().putString("CriteoCachedIntegration", enumC22933a.name()).apply();
    }

    /* renamed from: b */
    public int m7619b() {
        boolean z;
        EnumC22933a enumC22933a = EnumC22933a.FALLBACK;
        Objects.requireNonNull(this.f63625c);
        boolean z2 = true;
        try {
            Class.forName("com.criteo.mediation.mopub.CriteoBannerAdapter", false, C22934b.class.getClassLoader());
            z = true;
        } catch (ClassNotFoundException | LinkageError e) {
            z = false;
        }
        Objects.requireNonNull(this.f63625c);
        try {
            Class.forName("com.criteo.mediation.google.CriteoAdapter", false, C22934b.class.getClassLoader());
        } catch (ClassNotFoundException | LinkageError e2) {
            z2 = false;
        }
        EnumC22933a enumC22933a2 = (!z || !z2) ? z ? EnumC22933a.MOPUB_MEDIATION : z2 ? EnumC22933a.ADMOB_MEDIATION : null : enumC22933a;
        if (enumC22933a2 == null) {
            String m7557a = this.f63623a.m7557a("CriteoCachedIntegration", enumC22933a.name());
            if (m7557a == null) {
                l.k();
                throw null;
            }
            l.b(m7557a, "safeSharedPreferences.ge…ion.FALLBACK.name\n    )!!");
            try {
                enumC22933a2 = EnumC22933a.valueOf(m7557a);
            } catch (IllegalArgumentException e3) {
                C23089l.m7560a(e3);
                enumC22933a2 = enumC22933a;
            }
        }
        return enumC22933a2.f63622a;
    }
}
