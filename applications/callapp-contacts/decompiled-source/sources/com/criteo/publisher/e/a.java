package com.criteo.publisher.e;

import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/a.class */
public abstract class a {

    /* renamed from: com.criteo.publisher.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/e/a$a.class */
    public final class C0341a {

        /* renamed from: b  reason: collision with root package name */
        private final AtomicBoolean f17230b = new AtomicBoolean(false);

        public C0341a() {
        }

        public final void a() {
            this.f17230b.compareAndSet(false, true);
        }
    }
}
