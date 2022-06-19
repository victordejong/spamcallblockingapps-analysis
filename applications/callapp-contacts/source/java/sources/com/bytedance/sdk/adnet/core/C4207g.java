package com.bytedance.sdk.adnet.core;

import android.os.Handler;
import android.os.SystemClock;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.AbstractC4249c;
import com.bytedance.sdk.adnet.p142c.AbstractC4188c;
import com.bytedance.sdk.adnet.p142c.C4191f;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* renamed from: com.bytedance.sdk.adnet.core.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/g.class */
public class C4207g implements AbstractC4249c {

    /* renamed from: a */
    private final Executor f15436a;

    /* renamed from: b */
    private final Executor f15437b = Executors.newCachedThreadPool();

    /* renamed from: c */
    private AbstractC4188c f15438c = C4191f.m36225a();

    /* renamed from: com.bytedance.sdk.adnet.core.g$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/g$a.class */
    public static class RunnableC4209a implements Runnable {

        /* renamed from: a */
        private final Request f15441a;

        /* renamed from: b */
        private final C4218m f15442b;

        /* renamed from: c */
        private final Runnable f15443c;

        public RunnableC4209a(Request request, C4218m c4218m, Runnable runnable) {
            this.f15441a = request;
            this.f15442b = c4218m;
            this.f15443c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f15441a.isCanceled()) {
                this.f15441a.m36199a("canceled-at-delivery");
                return;
            }
            this.f15442b.f15474g = this.f15441a.getExtra();
            this.f15442b.m36114a(SystemClock.elapsedRealtime() - this.f15441a.getStartTime());
            this.f15442b.m36110b(this.f15441a.getNetDuration());
            try {
                if (this.f15442b.m36115a()) {
                    this.f15441a.mo33323a(this.f15442b);
                } else {
                    this.f15441a.deliverError(this.f15442b);
                }
            } catch (Throwable th) {
            }
            if (this.f15442b.f15471d) {
                this.f15441a.addMarker("intermediate-response");
            } else {
                this.f15441a.m36199a("done");
            }
            Runnable runnable = this.f15443c;
            if (runnable == null) {
                return;
            }
            try {
                runnable.run();
            } catch (Throwable th2) {
            }
        }
    }

    public C4207g(final Handler handler) {
        this.f15436a = new Executor() { // from class: com.bytedance.sdk.adnet.core.g.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    /* renamed from: a */
    private Executor m36145a(Request<?> request) {
        return (request == null || request.isResponseOnMain()) ? this.f15436a : this.f15437b;
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4249c
    /* renamed from: a */
    public void mo36062a(Request<?> request, C4218m<?> c4218m) {
        mo36061a(request, c4218m, null);
        AbstractC4188c abstractC4188c = this.f15438c;
        if (abstractC4188c != null) {
            abstractC4188c.mo36221a(request, c4218m);
        }
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4249c
    /* renamed from: a */
    public void mo36061a(Request<?> request, C4218m<?> c4218m, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        m36145a(request).execute(new RunnableC4209a(request, c4218m, runnable));
        AbstractC4188c abstractC4188c = this.f15438c;
        if (abstractC4188c != null) {
            abstractC4188c.mo36221a(request, c4218m);
        }
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4249c
    /* renamed from: a */
    public void mo36060a(Request<?> request, VAdError vAdError) {
        request.addMarker("post-error");
        m36145a(request).execute(new RunnableC4209a(request, C4218m.m36113a(vAdError), null));
        AbstractC4188c abstractC4188c = this.f15438c;
        if (abstractC4188c != null) {
            abstractC4188c.mo36220a(request, vAdError);
        }
    }
}
