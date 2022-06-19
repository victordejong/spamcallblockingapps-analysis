package com.criteo.publisher.p246f;

import com.criteo.publisher.logging.C8400e;
import kotlin.jvm.internal.C18524p;
/* renamed from: com.criteo.publisher.f.f */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/f/f.class */
public final class C8296f {
    static {
        new C8296f();
    }

    private C8296f() {
    }

    /* renamed from: a */
    public static final C8400e m25915a(Exception exception) {
        C18524p.m3841c(exception, "exception");
        return new C8400e(5, "Error while reading queue file. Recovering by recreating it or using in-memory queue", exception, "onRecoveringFromStaleQueueFile");
    }

    /* renamed from: b */
    public static final C8400e m25914b(Exception exception) {
        C18524p.m3841c(exception, "exception");
        return new C8400e(5, "Error when polling element from queue file", exception, "onErrorWhenPollingQueueFile");
    }
}
