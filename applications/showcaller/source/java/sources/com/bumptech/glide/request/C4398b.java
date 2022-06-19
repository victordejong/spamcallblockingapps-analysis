package com.bumptech.glide.request;

import com.bumptech.glide.request.RequestCoordinator;
/* renamed from: com.bumptech.glide.request.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/request/b.class */
public final class C4398b implements RequestCoordinator, AbstractC4399c {

    /* renamed from: a */
    private final Object f13469a;

    /* renamed from: b */
    private final RequestCoordinator f13470b;

    /* renamed from: c */
    private volatile AbstractC4399c f13471c;

    /* renamed from: d */
    private volatile AbstractC4399c f13472d;

    /* renamed from: e */
    private RequestCoordinator.RequestState f13473e;

    /* renamed from: f */
    private RequestCoordinator.RequestState f13474f;

    public C4398b(Object obj, RequestCoordinator requestCoordinator) {
        RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
        this.f13473e = requestState;
        this.f13474f = requestState;
        this.f13469a = obj;
        this.f13470b = requestCoordinator;
    }

    /* renamed from: l */
    private boolean m22597l(AbstractC4399c abstractC4399c) {
        return abstractC4399c.equals(this.f13471c) || (this.f13473e == RequestCoordinator.RequestState.FAILED && abstractC4399c.equals(this.f13472d));
    }

    /* renamed from: m */
    private boolean m22596m() {
        RequestCoordinator requestCoordinator = this.f13470b;
        return requestCoordinator == null || requestCoordinator.mo22574k(this);
    }

    /* renamed from: n */
    private boolean m22595n() {
        RequestCoordinator requestCoordinator = this.f13470b;
        return requestCoordinator == null || requestCoordinator.mo22580e(this);
    }

    /* renamed from: o */
    private boolean m22594o() {
        RequestCoordinator requestCoordinator = this.f13470b;
        return requestCoordinator == null || requestCoordinator.mo22578g(this);
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: a */
    public void mo22584a(AbstractC4399c abstractC4399c) {
        synchronized (this.f13469a) {
            if (abstractC4399c.equals(this.f13472d)) {
                this.f13474f = RequestCoordinator.RequestState.FAILED;
                RequestCoordinator requestCoordinator = this.f13470b;
                if (requestCoordinator != null) {
                    requestCoordinator.mo22584a(this);
                }
                return;
            }
            this.f13473e = RequestCoordinator.RequestState.FAILED;
            RequestCoordinator.RequestState requestState = this.f13474f;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState != requestState2) {
                this.f13474f = requestState2;
                this.f13472d.mo22577h();
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator, com.bumptech.glide.request.AbstractC4399c
    /* renamed from: b */
    public boolean mo22583b() {
        boolean z;
        synchronized (this.f13469a) {
            if (!this.f13471c.mo22583b() && !this.f13472d.mo22583b()) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: c */
    public RequestCoordinator mo22582c() {
        C4398b mo22582c;
        synchronized (this.f13469a) {
            RequestCoordinator requestCoordinator = this.f13470b;
            mo22582c = requestCoordinator != null ? requestCoordinator.mo22582c() : this;
        }
        return mo22582c;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public void clear() {
        synchronized (this.f13469a) {
            RequestCoordinator.RequestState requestState = RequestCoordinator.RequestState.CLEARED;
            this.f13473e = requestState;
            this.f13471c.clear();
            if (this.f13474f != requestState) {
                this.f13474f = requestState;
                this.f13472d.clear();
            }
        }
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: d */
    public boolean mo22581d(AbstractC4399c abstractC4399c) {
        boolean z = false;
        if (abstractC4399c instanceof C4398b) {
            C4398b c4398b = (C4398b) abstractC4399c;
            z = false;
            if (this.f13471c.mo22581d(c4398b.f13471c)) {
                z = false;
                if (this.f13472d.mo22581d(c4398b.f13472d)) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: e */
    public boolean mo22580e(AbstractC4399c abstractC4399c) {
        boolean z;
        synchronized (this.f13469a) {
            z = m22595n() && m22597l(abstractC4399c);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: f */
    public boolean mo22579f() {
        boolean z;
        synchronized (this.f13469a) {
            RequestCoordinator.RequestState requestState = this.f13473e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.CLEARED;
            z = requestState == requestState2 && this.f13474f == requestState2;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: g */
    public boolean mo22578g(AbstractC4399c abstractC4399c) {
        boolean z;
        synchronized (this.f13469a) {
            z = m22594o() && m22597l(abstractC4399c);
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: h */
    public void mo22577h() {
        synchronized (this.f13469a) {
            RequestCoordinator.RequestState requestState = this.f13473e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState != requestState2) {
                this.f13473e = requestState2;
                this.f13471c.mo22577h();
            }
        }
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: i */
    public void mo22576i(AbstractC4399c abstractC4399c) {
        synchronized (this.f13469a) {
            if (abstractC4399c.equals(this.f13471c)) {
                this.f13473e = RequestCoordinator.RequestState.SUCCESS;
            } else if (abstractC4399c.equals(this.f13472d)) {
                this.f13474f = RequestCoordinator.RequestState.SUCCESS;
            }
            RequestCoordinator requestCoordinator = this.f13470b;
            if (requestCoordinator != null) {
                requestCoordinator.mo22576i(this);
            }
        }
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public boolean isRunning() {
        boolean z;
        synchronized (this.f13469a) {
            RequestCoordinator.RequestState requestState = this.f13473e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState != requestState2 && this.f13474f != requestState2) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    /* renamed from: j */
    public boolean mo22575j() {
        boolean z;
        synchronized (this.f13469a) {
            RequestCoordinator.RequestState requestState = this.f13473e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.SUCCESS;
            if (requestState != requestState2 && this.f13474f != requestState2) {
                z = false;
            }
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.request.RequestCoordinator
    /* renamed from: k */
    public boolean mo22574k(AbstractC4399c abstractC4399c) {
        boolean z;
        synchronized (this.f13469a) {
            z = m22596m() && m22597l(abstractC4399c);
        }
        return z;
    }

    /* renamed from: p */
    public void m22593p(AbstractC4399c abstractC4399c, AbstractC4399c abstractC4399c2) {
        this.f13471c = abstractC4399c;
        this.f13472d = abstractC4399c2;
    }

    @Override // com.bumptech.glide.request.AbstractC4399c
    public void pause() {
        synchronized (this.f13469a) {
            RequestCoordinator.RequestState requestState = this.f13473e;
            RequestCoordinator.RequestState requestState2 = RequestCoordinator.RequestState.RUNNING;
            if (requestState == requestState2) {
                this.f13473e = RequestCoordinator.RequestState.PAUSED;
                this.f13471c.pause();
            }
            if (this.f13474f == requestState2) {
                this.f13474f = RequestCoordinator.RequestState.PAUSED;
                this.f13472d.pause();
            }
        }
    }
}
