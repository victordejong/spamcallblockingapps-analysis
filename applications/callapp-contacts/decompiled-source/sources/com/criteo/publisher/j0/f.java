package com.criteo.publisher.j0;

import com.criteo.publisher.logging.e;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/f.class */
public final class f {
    static {
        new f();
    }

    private f() {
    }

    public static final e a(String requestPayload) {
        p.c(requestPayload, "requestPayload");
        return new e(0, "CDB Request initiated: ".concat(String.valueOf(requestPayload)), null, null, 13, null);
    }

    public static final e b(String responsePayload) {
        p.c(responsePayload, "responsePayload");
        return new e(0, "CDB Response received: ".concat(String.valueOf(responsePayload)), null, null, 13, null);
    }
}
