package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.WallTime;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import javax.inject.Inject;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader.class */
public class Uploader {

    /* renamed from: a */
    private final Context f6729a;

    /* renamed from: b */
    private final BackendRegistry f6730b;

    /* renamed from: c */
    private final EventStore f6731c;

    /* renamed from: d */
    private final WorkScheduler f6732d;

    /* renamed from: e */
    private final Executor f6733e;

    /* renamed from: f */
    private final SynchronizationGuard f6734f;

    /* renamed from: g */
    private final Clock f6735g;

    @Inject
    public Uploader(Context context, BackendRegistry backendRegistry, EventStore eventStore, WorkScheduler workScheduler, Executor executor, SynchronizationGuard synchronizationGuard, @WallTime Clock clock) {
        this.f6729a = context;
        this.f6730b = backendRegistry;
        this.f6731c = eventStore;
        this.f6732d = workScheduler;
        this.f6733e = executor;
        this.f6734f = synchronizationGuard;
        this.f6735g = clock;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ Object m15323c(Uploader uploader, BackendResponse backendResponse, Iterable iterable, TransportContext transportContext, int i) {
        if (backendResponse.mo15395c() == BackendResponse.Status.TRANSIENT_ERROR) {
            uploader.f6731c.mo15245n0(iterable);
            uploader.f6732d.mo15304a(transportContext, i + 1);
            return null;
        }
        uploader.f6731c.mo15255g(iterable);
        if (backendResponse.mo15395c() == BackendResponse.Status.OK) {
            uploader.f6731c.mo15235x(transportContext, uploader.f6735g.mo15188a() + backendResponse.mo15396b());
        }
        if (!uploader.f6731c.mo15246m0(transportContext)) {
            return null;
        }
        uploader.f6732d.mo15304a(transportContext, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static /* synthetic */ void m15321e(Uploader uploader, TransportContext transportContext, int i, Runnable runnable) {
        try {
            try {
                SynchronizationGuard synchronizationGuard = uploader.f6734f;
                EventStore eventStore = uploader.f6731c;
                eventStore.getClass();
                synchronizationGuard.mo15197a(Uploader$$Lambda$4.m15315a(eventStore));
                if (!uploader.m15325a()) {
                    uploader.f6734f.mo15197a(Uploader$$Lambda$5.m15314a(uploader, transportContext, i));
                } else {
                    uploader.m15320f(transportContext, i);
                }
            } catch (SynchronizationException e) {
                uploader.f6732d.mo15304a(transportContext, i + 1);
            }
        } finally {
            runnable.run();
        }
    }

    /* renamed from: a */
    boolean m15325a() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f6729a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: f */
    void m15320f(TransportContext transportContext, int i) {
        BackendResponse backendResponse;
        TransportBackend transportBackend = this.f6730b.get(transportContext.mo15426b());
        Iterable<PersistedEvent> iterable = (Iterable) this.f6734f.mo15197a(Uploader$$Lambda$2.m15317a(this, transportContext));
        if (iterable.iterator().hasNext()) {
            if (transportBackend == null) {
                Logging.m15376a("Uploader", "Unknown backend for %s, deleting event batch for it...", transportContext);
                backendResponse = BackendResponse.m15397a();
            } else {
                ArrayList arrayList = new ArrayList();
                for (PersistedEvent persistedEvent : iterable) {
                    arrayList.add(persistedEvent.mo15278b());
                }
                BackendRequest.Builder a = BackendRequest.m15403a();
                a.mo15399b(arrayList);
                a.mo15398c(transportContext.mo15425c());
                backendResponse = transportBackend.mo15378a(a.mo15400a());
            }
            this.f6734f.mo15197a(Uploader$$Lambda$3.m15316a(this, backendResponse, iterable, transportContext, i));
        }
    }

    /* renamed from: g */
    public void m15319g(TransportContext transportContext, int i, Runnable runnable) {
        this.f6733e.execute(Uploader$$Lambda$1.m15318a(this, transportContext, i, runnable));
    }
}
