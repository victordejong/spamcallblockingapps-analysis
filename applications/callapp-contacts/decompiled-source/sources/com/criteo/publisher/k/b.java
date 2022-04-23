package com.criteo.publisher.k;

import com.criteo.publisher.logging.e;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/k/b.class */
public final class b {
    static {
        new b();
    }

    private b() {
    }

    public static final e a(String str) {
        return new e(0, "MoPub consent set: ".concat(String.valueOf(str)), null, null, 13, null);
    }

    public static final e a(boolean z) {
        return new e(0, "CCPA opt-out set: ".concat(String.valueOf(z)), null, null, 13, null);
    }
}
