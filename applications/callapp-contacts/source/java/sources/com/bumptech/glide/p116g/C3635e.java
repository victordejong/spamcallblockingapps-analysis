package com.bumptech.glide.p116g;

import java.util.concurrent.Executor;
/* renamed from: com.bumptech.glide.g.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/e.class */
public final class C3635e {

    /* renamed from: a */
    private static final Executor f13746a = new Executor() { // from class: com.bumptech.glide.g.e.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            C3644k.m37576a(runnable);
        }
    };

    /* renamed from: b */
    private static final Executor f13747b = new Executor() { // from class: com.bumptech.glide.g.e.2
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    private C3635e() {
    }

    /* renamed from: a */
    public static Executor m37595a() {
        return f13746a;
    }

    /* renamed from: b */
    public static Executor m37594b() {
        return f13747b;
    }
}
