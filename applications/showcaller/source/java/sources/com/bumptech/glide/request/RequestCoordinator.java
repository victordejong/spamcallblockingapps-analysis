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

        public boolean isComplete() {
            return this.isComplete;
        }
    }

    /* renamed from: a */
    void mo22584a(AbstractC4399c abstractC4399c);

    /* renamed from: b */
    boolean mo22583b();

    /* renamed from: c */
    RequestCoordinator mo22582c();

    /* renamed from: e */
    boolean mo22580e(AbstractC4399c abstractC4399c);

    /* renamed from: g */
    boolean mo22578g(AbstractC4399c abstractC4399c);

    /* renamed from: i */
    void mo22576i(AbstractC4399c abstractC4399c);

    /* renamed from: k */
    boolean mo22574k(AbstractC4399c abstractC4399c);
}
