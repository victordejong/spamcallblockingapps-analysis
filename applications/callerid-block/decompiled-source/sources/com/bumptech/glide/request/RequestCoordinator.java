package com.bumptech.glide.request;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/RequestCoordinator.class */
public interface RequestCoordinator {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/RequestCoordinator$RequestState.class */
    public enum RequestState {
        RUNNING(false),
        PAUSED(false),
        CLEARED(false),
        SUCCESS(true),
        FAILED(true);
        
        private final boolean isComplete;

        RequestState(boolean z) {
            this.isComplete = z;
        }

        boolean isComplete() {
            return this.isComplete;
        }
    }

    /* renamed from: a */
    void m10719a(AbstractC0867c cVar);

    /* renamed from: b */
    boolean m10718b();

    /* renamed from: c */
    boolean m10717c(AbstractC0867c cVar);

    /* renamed from: f */
    boolean m10716f(AbstractC0867c cVar);

    /* renamed from: g */
    RequestCoordinator m10715g();

    /* renamed from: i */
    void m10714i(AbstractC0867c cVar);

    /* renamed from: k */
    boolean m10713k(AbstractC0867c cVar);
}
