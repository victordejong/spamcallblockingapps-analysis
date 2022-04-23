package com.criteo.publisher.f;

import com.criteo.publisher.logging.e;
import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/f.class */
public final class f {
    static {
        new f();
    }

    private f() {
    }

    public static final e a(Exception exception) {
        p.c(exception, "exception");
        return new e(5, "Error while reading queue file. Recovering by recreating it or using in-memory queue", exception, "onRecoveringFromStaleQueueFile");
    }

    public static final e b(Exception exception) {
        p.c(exception, "exception");
        return new e(5, "Error when polling element from queue file", exception, "onErrorWhenPollingQueueFile");
    }
}
