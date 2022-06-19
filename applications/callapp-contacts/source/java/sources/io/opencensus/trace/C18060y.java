package io.opencensus.trace;

import io.opencensus.p507b.C17992a;
import io.opencensus.trace.p508a.AbstractC18001b;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.opencensus.trace.y */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/y.class */
public final class C18060y {

    /* renamed from: a */
    private static final Logger f62983a = Logger.getLogger(C18060y.class.getName());

    /* renamed from: b */
    private static final AbstractC18047t f62984b = m4490a(AbstractC18047t.class.getClassLoader());

    private C18060y() {
    }

    /* renamed from: a */
    private static AbstractC18047t m4490a(ClassLoader classLoader) {
        try {
            return (AbstractC18047t) C17992a.m4563a(Class.forName("io.opencensus.impl.trace.TraceComponentImpl", true, classLoader), AbstractC18047t.class);
        } catch (ClassNotFoundException e) {
            f62983a.log(Level.FINE, "Couldn't load full implementation for TraceComponent, now trying to load lite implementation.", (Throwable) e);
            try {
                return (AbstractC18047t) C17992a.m4563a(Class.forName("io.opencensus.impllite.trace.TraceComponentImplLite", true, classLoader), AbstractC18047t.class);
            } catch (ClassNotFoundException e2) {
                f62983a.log(Level.FINE, "Couldn't load lite implementation for TraceComponent, now using default implementation for TraceComponent.", (Throwable) e2);
                return AbstractC18047t.m4509c();
            }
        }
    }

    /* renamed from: a */
    public static AbstractC18054w m4491a() {
        return f62984b.mo4508a();
    }

    /* renamed from: b */
    public static AbstractC18001b m4489b() {
        return f62984b.mo4507b();
    }
}
