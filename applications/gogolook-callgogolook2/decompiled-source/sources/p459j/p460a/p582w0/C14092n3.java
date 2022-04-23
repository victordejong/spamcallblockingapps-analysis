package p459j.p460a.p582w0;

import androidx.core.app.Person;
import p081h.p160h.p179e.p180a.C6334a;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.n3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/n3.class */
public final class C14092n3 {
    static {
        new C14092n3();
    }

    /* renamed from: a */
    public static final String m2584a(String str, String str2) {
        C15149k.m377b(str, Person.KEY_KEY);
        String a = C6334a.m23211s().m23246a(str, str2, true);
        if (a == null) {
            a = "";
        }
        return a;
    }

    /* renamed from: a */
    public static final void m2586a(long j) {
        String[] strArr;
        if (j < 61200000) {
            for (String str : new String[]{"userNumber", "numberlist_cache", "block_history_newest_name", "google_id", "gmailAccount", "gaid", "fbAccount", "post_current_json", "KEY_USER_SEARCHED", "verifying_country_code", "verifying_number", "userId", "accessToken"}) {
                if (C13915b3.m3067a(str)) {
                    m2583b(str, C13915b3.m3056b(str, ""));
                    C13915b3.m3061a(str);
                }
            }
        }
    }

    /* renamed from: a */
    public static final boolean m2585a(String str) {
        C15149k.m377b(str, Person.KEY_KEY);
        C6334a s = C6334a.m23211s();
        C15149k.m383a((Object) s, "WCApiManager.getInstance()");
        return s.m23216n().contains(str);
    }

    /* renamed from: b */
    public static final void m2583b(String str, String str2) {
        C15149k.m377b(str, Person.KEY_KEY);
        C6334a.m23211s().m23233b(str, str2, true);
    }
}
