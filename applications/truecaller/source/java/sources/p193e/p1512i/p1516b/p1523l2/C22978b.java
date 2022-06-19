package p193e.p1512i.p1516b.p1523l2;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1523l2.p1524c.C22981d;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1531s2.C23091n;
/* renamed from: e.i.b.l2.b */
/* loaded from: classes-dex2jar.jar:e/i/b/l2/b.class */
public class C22978b {

    /* renamed from: e */
    public static final Pattern f63702e = Pattern.compile("^1([YN\\-yn]){3}$");

    /* renamed from: f */
    public static final List<String> f63703f = Arrays.asList("1ynn", "1yny", "1---", "", "1yn-", "1-n-");

    /* renamed from: g */
    public static final List<String> f63704g = Arrays.asList("explicit_no", "potential_whitelist", "dnt");

    /* renamed from: a */
    public final C23021h f63705a = C23023i.m7583a(C22978b.class);

    /* renamed from: b */
    public final C23091n f63706b;

    /* renamed from: c */
    public final SharedPreferences f63707c;

    /* renamed from: d */
    public final C22981d f63708d;

    public C22978b(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        C22981d c22981d = new C22981d(context);
        this.f63707c = defaultSharedPreferences;
        this.f63706b = new C23091n(defaultSharedPreferences);
        this.f63708d = c22981d;
    }

    /* renamed from: a */
    public void m7606a(String str) {
        SharedPreferences.Editor edit = this.f63707c.edit();
        edit.putString("MoPubConsent_String", str);
        edit.apply();
        this.f63705a.m7586a(new C23019f(0, C22128a.m8543z2("MoPub consent set: ", str), null, null, 13));
    }

    /* renamed from: b */
    public void m7605b(boolean z) {
        SharedPreferences.Editor edit = this.f63707c.edit();
        edit.putString("USPrivacy_Optout", String.valueOf(z));
        edit.apply();
        C23021h c23021h = this.f63705a;
        c23021h.m7586a(new C23019f(0, "CCPA opt-out set: " + z, null, null, 13));
    }

    /* renamed from: c */
    public String m7604c() {
        return this.f63706b.m7557a("IABUSPrivacy_String", "");
    }
}
