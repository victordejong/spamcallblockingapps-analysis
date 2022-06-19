package p078c.p084c.p085a.p086a.p095c;

import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.internal.C7941a;
/* renamed from: c.c.a.a.c.e */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/c/e.class */
public final class C1882e {

    /* renamed from: a */
    public static final C5984a.C5994g<C7941a> f6785a;

    /* renamed from: b */
    public static final C5984a.C5994g<C7941a> f6786b;

    /* renamed from: c */
    public static final C5984a.AbstractC5985a<C7941a, C1878a> f6787c;

    /* renamed from: d */
    static final C5984a.AbstractC5985a<C7941a, C1881d> f6788d;

    /* renamed from: e */
    public static final Scope f6789e = new Scope("profile");

    /* renamed from: f */
    public static final Scope f6790f = new Scope("email");

    /* renamed from: g */
    public static final C5984a<C1878a> f6791g;

    /* renamed from: h */
    public static final C5984a<C1881d> f6792h;

    static {
        C5984a.C5994g<C7941a> c5994g = new C5984a.C5994g<>();
        f6785a = c5994g;
        C5984a.C5994g<C7941a> c5994g2 = new C5984a.C5994g<>();
        f6786b = c5994g2;
        C1879b c1879b = new C1879b();
        f6787c = c1879b;
        C1880c c1880c = new C1880c();
        f6788d = c1880c;
        f6791g = new C5984a<>("SignIn.API", c1879b, c5994g);
        f6792h = new C5984a<>("SignIn.INTERNAL_API", c1880c, c5994g2);
    }
}
