package com.criteo.publisher.p251j0;

import com.criteo.publisher.logging.C8400e;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.j0.f */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/j0/f.class */
public final class C8363f {
    static {
        new C8363f();
    }

    private C8363f() {
    }

    /* renamed from: a */
    public static final C8400e m25792a(String requestPayload) {
        C18524p.m3841c(requestPayload, "requestPayload");
        return new C8400e(0, "CDB Request initiated: ".concat(String.valueOf(requestPayload)), null, null, 13, null);
    }

    /* renamed from: b */
    public static final C8400e m25791b(String responsePayload) {
        C18524p.m3841c(responsePayload, "responsePayload");
        return new C8400e(0, "CDB Response received: ".concat(String.valueOf(responsePayload)), null, null, 13, null);
    }
}
