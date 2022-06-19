package com.bumptech.glide.request;

import com.bumptech.glide.request.RequestCoordinator;
/* renamed from: com.bumptech.glide.request.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/g.class */
public class C4403g implements RequestCoordinator, AbstractC4399c {

    /* renamed from: a */
    private final RequestCoordinator f13475a;

    /* renamed from: b */
    private final Object f13476b;

    /* renamed from: c */
    private volatile AbstractC4399c f13477c;

    /* renamed from: d */
    private volatile AbstractC4399c f13478d;

    /* renamed from: e */
    private RequestCoordinator.RequestState f13479e;

    /* renamed from: f */
    private RequestCoordinator.RequestState f13480f;

    /* renamed from: g */
    private boolean f13481g;

    public C4403g(Object obj, RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f13479e = requestState;
        this.f13480f = requestState;
        this.f13476b = obj;
        this.f13475a = requestCoordinator;
    }

    /* renamed from: l */
    private boolean m22573l() {
        RequestCoordinator requestCoordinator = this.f13475a;
        return requestCoordinator == null || requestCoordinator.mo22574k(this);
    }

    /* renamed from: m */
    private boolean m22572m() {
        RequestCoordinator requestCoordinator = this.f13475a;
        return requestCoordinator == null || requestCoordinator.mo22580e(this);
    }

    /* renamed from: n */
    private boolean m22571n() {
        RequestCoordinator requestCoordinator = this.f13475a;
        return requestCoordinator == null || requestCoordinator.mo22578g(this);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: a */
    public void mo22584a(AbstractC4399c abstractC4399c) {
        synchronized (this.f13476b) {
            if (!abstractC4399c.equals(this.f13477c)) {
                this.f13480f = RequestCoordinator.RequestState.FAILED;
                return;
            }
            this.f13479e = RequestCoordinator.RequestState.FAILED;
            RequestCoordinator requestCoordinator = this.f13475a;
            if (requestCoordinator != null) {
                requestCoordinator.mo22584a(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.AbstractC4399c
    /* renamed from: b */
    public boolean mo22583b() {
        boolean z;
        synchronized (this.f13476b) {
            if (!this.f13478d.mo22583b() && !this.f13477c.mo22583b()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: c */
    public RequestCoordinator mo22582c() {
        C4403g mo22582c;
        synchronized (this.f13476b) {
            RequestCoordinator requestCoordinator = this.f13475a;
            mo22582c = requestCoordinator != null ? requestCoordinator.mo22582c() : this;
        }
        return mo22582c;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public void clear() {
        synchronized (this.f13476b) {
            this.f13481g = false;
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f13479e = requestState;
            this.f13480f = requestState;
            this.f13478d.clear();
            this.f13477c.clear();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        if (r3.f13478d != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0041, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0048, code lost:
        if (r0.f13478d != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004e, code lost:
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x005e, code lost:
        if (r3.f13478d.mo22581d(r0.f13478d) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0061, code lost:
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0021, code lost:
        if (r0.f13477c == null) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        if (r3.f13477c.mo22581d(r0.f13477c) != false) goto L10;
     */
    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo22581d(com.bumptech.glide.request.AbstractC4399c r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof com.bumptech.glide.request.C4403g
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L64
            r0 = r4
            com.bumptech.glide.request.g r0 = (com.bumptech.glide.request.C4403g) r0
            r4 = r0
            r0 = r3
            com.bumptech.glide.request.c r0 = r0.f13477c
            if (r0 != 0) goto L27
            r0 = r6
            r7 = r0
            r0 = r4
            com.bumptech.glide.request.c r0 = r0.f13477c
            if (r0 != 0) goto L64
            goto L3a
        L27:
            r0 = r6
            r7 = r0
            r0 = r3
            com.bumptech.glide.request.c r0 = r0.f13477c
            r1 = r4
            com.bumptech.glide.request.c r1 = r1.f13477c
            boolean r0 = r0.mo22581d(r1)
            if (r0 == 0) goto L64
        L3a:
            r0 = r3
            com.bumptech.glide.request.c r0 = r0.f13478d
            if (r0 != 0) goto L4e
            r0 = r6
            r7 = r0
            r0 = r4
            com.bumptech.glide.request.c r0 = r0.f13478d
            if (r0 != 0) goto L64
            goto L61
        L4e:
            r0 = r6
            r7 = r0
            r0 = r3
            com.bumptech.glide.request.c r0 = r0.f13478d
            r1 = r4
            com.bumptech.glide.request.c r1 = r1.f13478d
            boolean r0 = r0.mo22581d(r1)
            if (r0 == 0) goto L64
        L61:
            r0 = 1
            r7 = r0
        L64:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.request.C4403g.mo22581d(com.bumptech.glide.request.c):boolean");
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: e */
    public boolean mo22580e(AbstractC4399c abstractC4399c) {
        boolean z;
        synchronized (this.f13476b) {
            z = m22572m() && abstractC4399c.equals(this.f13477c) && !mo22583b();
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: f */
    public boolean mo22579f() {
        boolean z;
        synchronized (this.f13476b) {
            z = this.f13479e == RequestCoordinator.RequestState.CLEARED;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: g */
    public boolean mo22578g(AbstractC4399c abstractC4399c) {
        boolean z;
        synchronized (this.f13476b) {
            z = m22571n() && (abstractC4399c.equals(this.f13477c) || this.f13479e != RequestCoordinator.RequestState.SUCCESS);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: h */
    public void mo22577h() {
        synchronized (this.f13476b) {
            this.f13481g = true;
            if (this.f13479e != RequestCoordinator.RequestState.SUCCESS) {
                RequestCoordinator.RequestState requestState = this.f13480f;
                RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
                if (requestState != requestState2) {
                    this.f13480f = requestState2;
                    this.f13478d.mo22577h();
                }
            }
            if (this.f13481g) {
                RequestCoordinator.RequestState requestState3 = this.f13479e;
                RequestCoordinator.RequestState requestState4 = RequestCoordinator.RequestState.RUNNING;
                if (requestState3 != requestState4) {
                    this.f13479e = requestState4;
                    this.f13477c.mo22577h();
                }
            }
            this.f13481g = false;
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: i */
    public void mo22576i(AbstractC4399c abstractC4399c) {
        synchronized (this.f13476b) {
            if (abstractC4399c.equals(this.f13478d)) {
                this.f13480f = RequestCoordinator.RequestState.SUCCESS;
                return;
            }
            this.f13479e = RequestCoordinator.RequestState.SUCCESS;
            RequestCoordinator requestCoordinator = this.f13475a;
            if (requestCoordinator != null) {
                requestCoordinator.mo22576i(this);
            }
            if (!this.f13480f.isComplete()) {
                this.f13478d.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public boolean isRunning() {
        boolean z;
        synchronized (this.f13476b) {
            z = this.f13479e == RequestCoordinator.RequestState.RUNNING;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: j */
    public boolean mo22575j() {
        boolean z;
        synchronized (this.f13476b) {
            z = this.f13479e == RequestCoordinator.RequestState.SUCCESS;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: k */
    public boolean mo22574k(AbstractC4399c abstractC4399c) {
        boolean z;
        synchronized (this.f13476b) {
            z = m22573l() && abstractC4399c.equals(this.f13477c) && this.f13479e != RequestCoordinator.RequestState.PAUSED;
        }
        return z;
    }

    /* renamed from: o */
    public void m22570o(AbstractC4399c abstractC4399c, AbstractC4399c abstractC4399c2) {
        this.f13477c = abstractC4399c;
        this.f13478d = abstractC4399c2;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public void pause() {
        synchronized (this.f13476b) {
            if (!this.f13480f.isComplete()) {
                this.f13480f = RequestCoordinator.RequestState.PAUSED;
                this.f13478d.pause();
            }
            if (!this.f13479e.isComplete()) {
                this.f13479e = RequestCoordinator.RequestState.PAUSED;
                this.f13477c.pause();
            }
        }
    }
}
