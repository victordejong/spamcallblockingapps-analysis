package p193e.p1512i.p1516b.p1531s2;

import android.content.SharedPreferences;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.i.b.s2.n */
/* loaded from: classes-dex2jar.jar:e/i/b/s2/n.class */
public class C23091n {

    /* renamed from: a */
    public final SharedPreferences f63917a;

    public C23091n(SharedPreferences sharedPreferences) {
        this.f63917a = sharedPreferences;
    }

    /* renamed from: a */
    public String m7557a(String str, String str2) {
        try {
            str2 = this.f63917a.getString(str, str2);
        } catch (ClassCastException e) {
            C23089l.m7560a(new IllegalStateException(C22128a.m8543z2("Expected a String type when reading: ", str), e));
        }
        return str2;
    }
}
