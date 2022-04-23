package com.bytedance.sdk.adnet.core;

import android.os.Handler;
import android.os.SystemClock;
import com.bytedance.sdk.adnet.c.f;
import com.bytedance.sdk.adnet.err.VAdError;
import com.bytedance.sdk.adnet.face.c;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/g.class */
public class g implements c {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f8310a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f8311b = Executors.newCachedThreadPool();

    /* renamed from: c  reason: collision with root package name */
    private com.bytedance.sdk.adnet.c.c f8312c = f.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/g$a.class */
    public static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Request f8315a;

        /* renamed from: b  reason: collision with root package name */
        private final m f8316b;

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f8317c;

        public a(Request request, m mVar, Runnable runnable) {
            this.f8315a = request;
            this.f8316b = mVar;
            this.f8317c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f8315a.isCanceled()) {
                this.f8315a.a("canceled-at-delivery");
                return;
            }
            this.f8316b.g = this.f8315a.getExtra();
            this.f8316b.a(SystemClock.elapsedRealtime() - this.f8315a.getStartTime());
            this.f8316b.b(this.f8315a.getNetDuration());
            try {
                if (this.f8316b.a()) {
                    this.f8315a.a(this.f8316b);
                } else {
                    this.f8315a.deliverError(this.f8316b);
                }
            } catch (Throwable th) {
            }
            if (this.f8316b.f8335d) {
                this.f8315a.addMarker("intermediate-response");
            } else {
                this.f8315a.a("done");
            }
            Runnable runnable = this.f8317c;
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (Throwable th2) {
                }
            }
        }
    }

    public g(final Handler handler) {
        this.f8310a = new Executor() { // from class: com.bytedance.sdk.adnet.core.g.1
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    private Executor a(Request<?> request) {
        return (request == null || request.isResponseOnMain()) ? this.f8310a : this.f8311b;
    }

    @Override // com.bytedance.sdk.adnet.face.c
    public void a(Request<?> request, m<?> mVar) {
        a(request, mVar, null);
        com.bytedance.sdk.adnet.c.c cVar = this.f8312c;
        if (cVar != null) {
            cVar.a(request, mVar);
        }
    }

    @Override // com.bytedance.sdk.adnet.face.c
    public void a(Request<?> request, m<?> mVar, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        a(request).execute(new a(request, mVar, runnable));
        com.bytedance.sdk.adnet.c.c cVar = this.f8312c;
        if (cVar != null) {
            cVar.a(request, mVar);
        }
    }

    @Override // com.bytedance.sdk.adnet.face.c
    public void a(Request<?> request, VAdError vAdError) {
        request.addMarker("post-error");
        a(request).execute(new a(request, m.a(vAdError), null));
        com.bytedance.sdk.adnet.c.c cVar = this.f8312c;
        if (cVar != null) {
            cVar.a(request, vAdError);
        }
    }
}
