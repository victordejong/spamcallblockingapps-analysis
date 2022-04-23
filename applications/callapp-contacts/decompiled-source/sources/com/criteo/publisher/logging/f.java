package com.criteo.publisher.logging;

import kotlin.jvm.internal.p;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/logging/f.class */
public final class f {
    static {
        new f();
    }

    private f() {
    }

    public static final String a(String str) {
        p.c(str, "str");
        return kotlin.h.p.i("CriteoSdk".concat(String.valueOf(str)));
    }
}
