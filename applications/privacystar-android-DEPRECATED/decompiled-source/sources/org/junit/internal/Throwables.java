package org.junit.internal;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/Throwables.class */
public final class Throwables {
    private Throwables() {
    }

    private static <T extends Throwable> void rethrow(Throwable th) throws Throwable {
        throw th;
    }

    public static Exception rethrowAsException(Throwable th) throws Exception {
        rethrow(th);
        return null;
    }
}
