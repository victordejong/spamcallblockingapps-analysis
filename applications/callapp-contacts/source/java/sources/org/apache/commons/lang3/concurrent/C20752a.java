package org.apache.commons.lang3.concurrent;

import org.apache.commons.lang3.C20766h;
/* renamed from: org.apache.commons.lang3.concurrent.a */
/* loaded from: classes5-dex2jar.jar:org/apache/commons/lang3/concurrent/a.class */
public final class C20752a {
    private C20752a() {
    }

    /* renamed from: a */
    public static Throwable m532a(Throwable th) {
        C20766h.m512a(th != null && !(th instanceof RuntimeException) && !(th instanceof Error), "Not a checked exception: ".concat(String.valueOf(th)), new Object[0]);
        return th;
    }
}
