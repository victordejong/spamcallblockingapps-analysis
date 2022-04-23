package p081h.p203i.p204a.p224e.p290p;

import com.google.android.gms.common.api.Scope;
import p081h.p203i.p204a.p224e.p235d.p236k.C6805a;
import p081h.p203i.p204a.p224e.p290p.p291b.C9111a;
/* renamed from: h.i.a.e.p.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/p/c.class */
public final class C9120c {

    /* renamed from: a */
    public static final C6805a.C6817g<C9111a> f20799a = new C6805a.C6817g<>();

    /* renamed from: b */
    public static final C6805a.C6817g<C9111a> f20800b = new C6805a.C6817g<>();

    /* renamed from: c */
    public static final C6805a.AbstractC6806a<C9111a, C9109a> f20801c = new C9121d();

    /* renamed from: d */
    public static final C6805a.AbstractC6806a<C9111a, Object> f20802d = new C9122e();

    /* renamed from: e */
    public static final C6805a<C9109a> f20803e = new C6805a<>("SignIn.API", f20801c, f20799a);

    static {
        new Scope("profile");
        new Scope("email");
        new C6805a("SignIn.INTERNAL_API", f20802d, f20800b);
    }
}
