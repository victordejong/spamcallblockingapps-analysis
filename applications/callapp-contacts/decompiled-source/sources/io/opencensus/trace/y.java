package io.opencensus.trace;

import io.opencensus.b.a;
import io.opencensus.trace.a.b;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/y.class */
public final class y {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f36345a = Logger.getLogger(y.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final t f36346b = a(t.class.getClassLoader());

    private y() {
    }

    private static t a(ClassLoader classLoader) {
        try {
            return (t) a.a(Class.forName("io.opencensus.impl.trace.TraceComponentImpl", true, classLoader), t.class);
        } catch (ClassNotFoundException e) {
            f36345a.log(Level.FINE, "Couldn't load full implementation for TraceComponent, now trying to load lite implementation.", (Throwable) e);
            try {
                return (t) a.a(Class.forName("io.opencensus.impllite.trace.TraceComponentImplLite", true, classLoader), t.class);
            } catch (ClassNotFoundException e2) {
                f36345a.log(Level.FINE, "Couldn't load lite implementation for TraceComponent, now using default implementation for TraceComponent.", (Throwable) e2);
                return t.c();
            }
        }
    }

    public static w a() {
        return f36346b.a();
    }

    public static b b() {
        return f36346b.b();
    }
}
