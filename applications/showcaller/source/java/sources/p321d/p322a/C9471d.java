package p321d.p322a;

import java.util.logging.Level;
import java.util.logging.Logger;
import p321d.p322a.C9458b;
/* renamed from: d.a.d */
/* loaded from: classes2-dex2jar.jar:d/a/d.class */
public final class C9471d extends C9458b.AbstractC9465g {

    /* renamed from: a */
    private static final Logger f40342a = Logger.getLogger(C9471d.class.getName());

    /* renamed from: b */
    static final ThreadLocal<C9458b> f40343b = new ThreadLocal<>();

    @Override // p321d.p322a.C9458b.AbstractC9465g
    /* renamed from: b */
    public C9458b mo519b() {
        C9458b c9458b = f40343b.get();
        C9458b c9458b2 = c9458b;
        if (c9458b == null) {
            c9458b2 = C9458b.f40317f;
        }
        return c9458b2;
    }

    @Override // p321d.p322a.C9458b.AbstractC9465g
    /* renamed from: c */
    public void mo518c(C9458b c9458b, C9458b c9458b2) {
        if (mo519b() != c9458b) {
            f40342a.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (c9458b2 != C9458b.f40317f) {
            f40343b.set(c9458b2);
        } else {
            f40343b.set(null);
        }
    }

    @Override // p321d.p322a.C9458b.AbstractC9465g
    /* renamed from: d */
    public C9458b mo517d(C9458b c9458b) {
        C9458b mo519b = mo519b();
        f40343b.set(c9458b);
        return mo519b;
    }
}
