package com.bumptech.glide.e;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/e.class */
public interface e {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/e$a.class */
    public enum a {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);
        
        private final boolean isComplete;

        a(boolean z) {
            this.isComplete = z;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final boolean isComplete() {
            return this.isComplete;
        }
    }

    boolean b(d dVar);

    boolean c(d dVar);

    boolean d(d dVar);

    void e(d dVar);

    void f(d dVar);

    boolean g();

    e h();
}
