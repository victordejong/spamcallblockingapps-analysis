package com.bumptech.glide.p029o;

import java.util.concurrent.Executor;
/* renamed from: com.bumptech.glide.o.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/e.class */
public final class C0848e {

    /* renamed from: a */
    private static final Executor f3816a = new ExecutorC0849a();

    /* renamed from: b */
    private static final Executor f3817b = new ExecutorC0850b();

    /* renamed from: com.bumptech.glide.o.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/e$a.class */
    class ExecutorC0849a implements Executor {
        ExecutorC0849a() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            C0857k.m10738t(runnable);
        }
    }

    /* renamed from: com.bumptech.glide.o.e$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/e$b.class */
    class ExecutorC0850b implements Executor {
        ExecutorC0850b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public static Executor m10778a() {
        return f3817b;
    }

    /* renamed from: b */
    public static Executor m10777b() {
        return f3816a;
    }
}
