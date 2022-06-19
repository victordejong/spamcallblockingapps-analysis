package com.pubmatic.sdk.common.utility;

import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.network.PMNetworkMonitor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBLooper.class */
public class POBLooper {

    /* renamed from: h */
    private static final ScheduledThreadPoolExecutor f569h = new ScheduledThreadPoolExecutor(1);

    /* renamed from: a */
    private long f570a;

    /* renamed from: b */
    private boolean f571b;

    /* renamed from: c */
    private PMNetworkMonitor.PMConnectivityListener f572c;

    /* renamed from: d */
    private PMNetworkMonitor f573d;

    /* renamed from: e */
    private ScheduledFuture<?> f574e = null;

    /* renamed from: f */
    private LooperListener f575f;

    /* renamed from: g */
    private boolean f576g;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBLooper$LooperListener.class */
    public interface LooperListener {
        void invoke();
    }

    /* renamed from: com.pubmatic.sdk.common.utility.POBLooper$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBLooper$a.class */
    public class RunnableC1889a implements Runnable {
        RunnableC1889a() {
            POBLooper.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            POBLooper.this.m981b();
        }
    }

    /* renamed from: com.pubmatic.sdk.common.utility.POBLooper$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBLooper$b.class */
    public class C1890b implements PMNetworkMonitor.PMConnectivityListener {
        C1890b() {
            POBLooper.this = r4;
        }

        @Override // com.pubmatic.sdk.common.network.PMNetworkMonitor.PMConnectivityListener
        public void onNetworkConnectionChanged(boolean z) {
            POBLooper.this.f571b = z;
            PMLog.debug("PMLooper", "Network connectivity = " + POBLooper.this.f571b, new Object[0]);
            POBLooper pOBLooper = POBLooper.this;
            pOBLooper.m982a(pOBLooper.f571b);
        }
    }

    /* renamed from: a */
    private void m986a() {
        if (this.f572c != null || this.f573d == null) {
            return;
        }
        C1890b c1890b = new C1890b();
        this.f572c = c1890b;
        this.f573d.registerConnectivityListener(c1890b);
    }

    /* renamed from: a */
    private void m985a(long j) {
        synchronized (this) {
            if (this.f574e == null) {
                PMLog.verbose("PMLooper", "Scheduling invoke after delay %d", Long.valueOf(j));
                this.f574e = f569h.schedule(new RunnableC1889a(), j, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* renamed from: a */
    public void m982a(boolean z) {
        if (z) {
            resume();
        } else {
            pause();
        }
    }

    /* renamed from: b */
    public void m981b() {
        if (this.f575f != null) {
            this.f576g = false;
            PMLog.verbose("PMLooper", "Invoking scheduled method", new Object[0]);
            this.f575f.invoke();
        }
    }

    /* renamed from: c */
    private void m978c() {
        ScheduledFuture<?> scheduledFuture = this.f574e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f574e = null;
        }
    }

    public void destroy() {
        PMNetworkMonitor pMNetworkMonitor = this.f573d;
        if (pMNetworkMonitor != null) {
            pMNetworkMonitor.unregisterConnectivityListener(this.f572c);
        }
        m978c();
        this.f576g = false;
    }

    public void loop(long j) {
        this.f576g = true;
        long j2 = j * 1000;
        PMLog.verbose("PMLooper", "Looping after %d milli seconds", Long.valueOf(j2));
        m978c();
        m985a(j2);
        this.f570a = j2;
        m986a();
    }

    public void pause() {
        ScheduledFuture<?> scheduledFuture;
        if (!this.f576g || (scheduledFuture = this.f574e) == null) {
            return;
        }
        this.f570a = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        this.f574e.cancel(true);
        this.f574e = null;
        PMLog.verbose("PMLooper", "Pausing refresh & saving remaining delay : %d", Long.valueOf(this.f570a));
    }

    public void resume() {
        if (!this.f576g || !this.f571b) {
            return;
        }
        ScheduledFuture<?> scheduledFuture = this.f574e;
        if (scheduledFuture != null) {
            this.f570a = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        }
        PMLog.verbose("PMLooper", "Resuming refresh with remaining delay : %d", Long.valueOf(this.f570a));
        m985a(this.f570a);
    }

    public void setListener(LooperListener looperListener) {
        this.f575f = looperListener;
    }

    public void setNetworkMonitor(PMNetworkMonitor pMNetworkMonitor) {
        this.f573d = pMNetworkMonitor;
        this.f571b = pMNetworkMonitor.isNetworkAvailable();
    }
}
