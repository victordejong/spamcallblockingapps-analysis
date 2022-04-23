package com.google.android.datatransport.runtime;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/j.class */
final class j implements Executor {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f20448a;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/j$a.class */
    static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Runnable f20449a;

        a(Runnable runnable) {
            this.f20449a = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f20449a.run();
            } catch (Exception e) {
                com.google.android.datatransport.runtime.b.a.a("Executor", "Background execution failure.", (Throwable) e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Executor executor) {
        this.f20448a = executor;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f20448a.execute(new a(runnable));
    }
}
