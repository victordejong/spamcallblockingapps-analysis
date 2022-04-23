package org.apache.commons.lang3.concurrent;

import org.apache.commons.lang3.h;
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/concurrent/a.class */
public final class a {
    private a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Throwable a(Throwable th) {
        h.a(th != null && !(th instanceof RuntimeException) && !(th instanceof Error), "Not a checked exception: ".concat(String.valueOf(th)), new Object[0]);
        return th;
    }
}
