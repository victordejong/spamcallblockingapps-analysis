package com.bumptech.glide.g;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private static final Executor f7349a = new Executor() { // from class: com.bumptech.glide.g.e.1
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            k.a(runnable);
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private static final Executor f7350b = new Executor() { // from class: com.bumptech.glide.g.e.2
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            runnable.run();
        }
    };

    private e() {
    }

    public static Executor a() {
        return f7349a;
    }

    public static Executor b() {
        return f7350b;
    }
}
