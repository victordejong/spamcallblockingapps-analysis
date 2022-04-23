package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.TransportRuntime;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.concurrent.Executor;
import java.util.logging.Logger;
import javax.inject.Inject;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/DefaultScheduler.class */
public class DefaultScheduler implements Scheduler {

    /* renamed from: f */
    private static final Logger f6685f = Logger.getLogger(TransportRuntime.class.getName());

    /* renamed from: a */
    private final WorkScheduler f6686a;

    /* renamed from: b */
    private final Executor f6687b;

    /* renamed from: c */
    private final BackendRegistry f6688c;

    /* renamed from: d */
    private final EventStore f6689d;

    /* renamed from: e */
    private final SynchronizationGuard f6690e;

    @Inject
    public DefaultScheduler(Executor executor, BackendRegistry backendRegistry, WorkScheduler workScheduler, EventStore eventStore, SynchronizationGuard synchronizationGuard) {
        this.f6687b = executor;
        this.f6688c = backendRegistry;
        this.f6686a = workScheduler;
        this.f6689d = eventStore;
        this.f6690e = synchronizationGuard;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static /* synthetic */ Object m15368b(DefaultScheduler defaultScheduler, TransportContext transportContext, EventInternal eventInternal) {
        defaultScheduler.f6689d.mo15256f0(transportContext, eventInternal);
        defaultScheduler.f6686a.mo15304a(transportContext, 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ void m15367c(DefaultScheduler defaultScheduler, TransportContext transportContext, TransportScheduleCallback transportScheduleCallback, EventInternal eventInternal) {
        try {
            TransportBackend transportBackend = defaultScheduler.f6688c.get(transportContext.mo15426b());
            if (transportBackend == null) {
                String format = String.format("Transport backend '%s' is not registered", transportContext.mo15426b());
                f6685f.warning(format);
                transportScheduleCallback.onSchedule(new IllegalArgumentException(format));
                return;
            }
            defaultScheduler.f6690e.mo15197a(DefaultScheduler$$Lambda$2.m15365a(defaultScheduler, transportContext, transportBackend.mo15377b(eventInternal)));
            transportScheduleCallback.onSchedule(null);
        } catch (Exception e) {
            Logger logger = f6685f;
            logger.warning("Error scheduling event " + e.getMessage());
            transportScheduleCallback.onSchedule(e);
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.Scheduler
    /* renamed from: a */
    public void mo15362a(TransportContext transportContext, EventInternal eventInternal, TransportScheduleCallback transportScheduleCallback) {
        this.f6687b.execute(DefaultScheduler$$Lambda$1.m15366a(this, transportContext, transportScheduleCallback, eventInternal));
    }
}
