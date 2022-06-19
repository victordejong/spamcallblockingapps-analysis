package com.criteo.publisher.p245e;

import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.criteo.publisher.e.a */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/a.class */
public abstract class AbstractC8274a {

    /* renamed from: com.criteo.publisher.e.a$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/a$a.class */
    public final class C8275a {

        /* renamed from: b */
        private final AtomicBoolean f29850b = new AtomicBoolean(false);

        public C8275a() {
            AbstractC8274a.this = r6;
        }

        /* renamed from: a */
        public final void m25927a() {
            this.f29850b.compareAndSet(false, true);
        }
    }
}
