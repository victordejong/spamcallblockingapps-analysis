package p459j.p460a.p521j0.p529x;

import android.text.TextUtils;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14021h2;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p582w0.p587d5.C13980g;
import p626l.C14986p;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.j0.x.a */
/* loaded from: classes3-dex2jar.jar:j/a/j0/x/a.class */
public final class C12754a {
    static {
        new C12754a();
    }

    /* renamed from: a */
    public static final boolean m5431a() {
        return m5428d() && m5430b() && m5429c() && m5427e();
    }

    /* renamed from: b */
    public static final boolean m5430b() {
        return C13980g.f31390a.m9462a("has_sms_filter_initial_infer_completed", (Boolean) false);
    }

    /* renamed from: c */
    public static final boolean m5429c() {
        return C13980g.f31390a.m9462a("has_sms_filter_intro_complete", (Boolean) false);
    }

    /* renamed from: d */
    public static final boolean m5428d() {
        return C13978e.f31386a.m9462a("enable_sms_filter", (Boolean) false);
    }

    /* renamed from: e */
    public static final boolean m5427e() {
        String o = C14217x3.m2120o();
        if (TextUtils.isEmpty(o) || o.length() <= 1 || !C14021h2.m2779g()) {
            return false;
        }
        C15149k.m383a((Object) o, "uid");
        int length = o.length();
        if (o != null) {
            String substring = o.substring(length - 1);
            C15149k.m383a((Object) substring, "(this as java.lang.String).substring(startIndex)");
            return C13640c.m3745d().m3746c("is_sms_assistant_available").contains(substring);
        }
        throw new C14986p("null cannot be cast to non-null type java.lang.String");
    }

    /* renamed from: f */
    public static final boolean m5426f() {
        return m5427e() && m5429c() && !m5428d();
    }
}
