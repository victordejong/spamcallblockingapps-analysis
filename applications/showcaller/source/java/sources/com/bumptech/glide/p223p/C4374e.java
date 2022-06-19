package com.bumptech.glide.p223p;

import java.util.concurrent.Executor;
/* renamed from: com.bumptech.glide.p.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/e.class */
public final class C4374e {

    /* renamed from: a */
    private static final Executor f13378a = new ExecutorC4375a();

    /* renamed from: b */
    private static final Executor f13379b = new ExecutorC4376b();

    /* renamed from: com.bumptech.glide.p.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/e$a.class */
    class ExecutorC4375a implements Executor {
        ExecutorC4375a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C4383k.m22698t(runnable);
        }
    }

    /* renamed from: com.bumptech.glide.p.e$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/e$b.class */
    class ExecutorC4376b implements Executor {
        ExecutorC4376b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public static Executor m22738a() {
        return f13379b;
    }

    /* renamed from: b */
    public static Executor m22737b() {
        return f13378a;
    }
}
