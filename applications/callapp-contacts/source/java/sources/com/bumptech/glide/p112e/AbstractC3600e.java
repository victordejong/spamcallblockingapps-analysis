package com.bumptech.glide.p112e;
/* renamed from: com.bumptech.glide.e.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/e.class */
public interface AbstractC3600e {

    /* renamed from: com.bumptech.glide.e.e$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/e/e$a.class */
    public enum EnumC3601a {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);
        
        private final boolean isComplete;

        EnumC3601a(boolean z) {
            this.isComplete = z;
        }

        public final boolean isComplete() {
            return this.isComplete;
        }
    }

    /* renamed from: b */
    boolean mo37631b(AbstractC3599d abstractC3599d);

    /* renamed from: c */
    boolean mo37629c(AbstractC3599d abstractC3599d);

    /* renamed from: d */
    boolean mo37627d(AbstractC3599d abstractC3599d);

    /* renamed from: e */
    void mo37625e(AbstractC3599d abstractC3599d);

    /* renamed from: f */
    void mo37623f(AbstractC3599d abstractC3599d);

    /* renamed from: g */
    boolean mo37622g();

    /* renamed from: h */
    AbstractC3600e mo37621h();
}
