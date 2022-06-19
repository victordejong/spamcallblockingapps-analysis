package io.opencensus.trace;

import io.opencensus.trace.p335u.AbstractC9537b;
import java.util.logging.Level;
import java.util.logging.Logger;
import p321d.p323b.p327b.C9474a;
/* renamed from: io.opencensus.trace.t */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/t.class */
public final class C9535t {

    /* renamed from: a */
    private static final Logger f40471a = Logger.getLogger(C9535t.class.getName());

    /* renamed from: b */
    private static final AbstractC9518o f40472b = m391c(AbstractC9518o.class.getClassLoader());

    private C9535t() {
    }

    /* renamed from: a */
    public static AbstractC9537b m393a() {
        return f40472b.mo416a();
    }

    /* renamed from: b */
    public static AbstractC9529r m392b() {
        return f40472b.mo415b();
    }

    /* renamed from: c */
    static AbstractC9518o m391c(ClassLoader classLoader) {
        try {
            return (AbstractC9518o) C9474a.m514a(Class.forName("io.opencensus.impl.trace.TraceComponentImpl", true, classLoader), AbstractC9518o.class);
        } catch (ClassNotFoundException e) {
            f40471a.log(Level.FINE, "Couldn't load full implementation for TraceComponent, now trying to load lite implementation.", (Throwable) e);
            try {
                return (AbstractC9518o) C9474a.m514a(Class.forName("io.opencensus.impllite.trace.TraceComponentImplLite", true, classLoader), AbstractC9518o.class);
            } catch (ClassNotFoundException e2) {
                f40471a.log(Level.FINE, "Couldn't load lite implementation for TraceComponent, now using default implementation for TraceComponent.", (Throwable) e2);
                return AbstractC9518o.m417c();
            }
        }
    }
}
