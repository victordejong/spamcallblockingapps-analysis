package io.p500a;

import io.p500a.C17731a;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.a.d */
/* loaded from: classes5-dex2jar.jar:io/a/d.class */
public final class C17749d extends C17731a.AbstractC17739g {

    /* renamed from: b */
    private static final Logger f62627b = Logger.getLogger(C17749d.class.getName());

    /* renamed from: a */
    static final ThreadLocal<C17731a> f62626a = new ThreadLocal<>();

    @Override // io.p500a.C17731a.AbstractC17739g
    /* renamed from: a */
    public final C17731a mo4748a() {
        C17731a c17731a = f62626a.get();
        C17731a c17731a2 = c17731a;
        if (c17731a == null) {
            c17731a2 = C17731a.f62588b;
        }
        return c17731a2;
    }

    @Override // io.p500a.C17731a.AbstractC17739g
    /* renamed from: a */
    public final C17731a mo4747a(C17731a c17731a) {
        C17731a mo4748a = mo4748a();
        f62626a.set(c17731a);
        return mo4748a;
    }

    @Override // io.p500a.C17731a.AbstractC17739g
    /* renamed from: a */
    public final void mo4746a(C17731a c17731a, C17731a c17731a2) {
        if (mo4748a() != c17731a) {
            f62627b.log(Level.SEVERE, "Context was not attached when detaching", new Throwable().fillInStackTrace());
        }
        if (c17731a2 != C17731a.f62588b) {
            f62626a.set(c17731a2);
        } else {
            f62626a.set(null);
        }
    }
}
