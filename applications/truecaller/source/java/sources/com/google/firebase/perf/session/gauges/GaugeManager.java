package com.google.firebase.perf.session.gauges;

import android.content.Context;
import androidx.annotation.Keep;
import com.google.firebase.perf.session.PerfSession;
import com.google.firebase.perf.util.Timer;
import com.google.firebase.perf.v1.AndroidMemoryReading;
import com.google.firebase.perf.v1.CpuMetricReading;
import com.google.firebase.perf.v1.GaugeMetadata;
import com.google.firebase.perf.v1.GaugeMetric;
import com.google.protobuf.GeneratedMessageLite;
import e.m.d.m.c0;
import e.m.d.z.g.d;
import e.m.d.z.g.n;
import e.m.d.z.g.o;
import e.m.d.z.g.q;
import e.m.d.z.g.r;
import e.m.d.z.g.x;
import e.m.d.z.i.a;
import e.m.d.z.l.c.c;
import e.m.d.z.l.c.f;
import e.m.d.z.l.c.g;
import e.m.d.z.l.c.i;
import e.m.d.z.l.c.j;
import e.m.d.z.l.c.k;
import e.m.d.z.l.c.l;
import e.m.d.z.n.e;
import e.m.d.z.n.h;
import e.m.d.z.o.b;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Keep
/* loaded from: classes3-dex2jar.jar:com/google/firebase/perf/session/gauges/GaugeManager.class */
public class GaugeManager {
    private static final long APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC = 20;
    private static final long INVALID_GAUGE_COLLECTION_FREQUENCY = -1;
    private static final long TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS = 20;

    /* renamed from: a */
    public static final /* synthetic */ int f7076a = 0;
    private b applicationProcessState;
    private final d configResolver;
    private final c0<j> cpuGaugeCollector;
    private ScheduledFuture gaugeManagerDataCollectionJob;
    private final c0<ScheduledExecutorService> gaugeManagerExecutor;
    private k gaugeMetadataManager;
    private final c0<l> memoryGaugeCollector;
    private String sessionId;
    private final e.m.d.z.m.k transportManager;
    private static final a logger = a.b();
    private static final GaugeManager instance = new GaugeManager();

    private GaugeManager() {
        this(new c0(e.m.d.z.l.c.d.a), e.m.d.z.m.k.s, d.e(), null, new c0(g.a), new c0(f.a));
    }

    public GaugeManager(c0<ScheduledExecutorService> c0Var, e.m.d.z.m.k kVar, d dVar, k kVar2, c0<j> c0Var2, c0<l> c0Var3) {
        this.gaugeManagerDataCollectionJob = null;
        this.sessionId = null;
        this.applicationProcessState = b.b;
        this.gaugeManagerExecutor = c0Var;
        this.transportManager = kVar;
        this.configResolver = dVar;
        this.gaugeMetadataManager = kVar2;
        this.cpuGaugeCollector = c0Var2;
        this.memoryGaugeCollector = c0Var3;
    }

    private static void collectGaugeMetricOnce(j jVar, l lVar, Timer timer) {
        synchronized (jVar) {
            try {
                jVar.b.schedule((Runnable) new e.m.d.z.l.c.a(jVar, timer), 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                a aVar = j.g;
                aVar.c("Unable to collect Cpu Metric: " + e.getMessage());
            }
        }
        synchronized (lVar) {
            try {
                lVar.a.schedule((Runnable) new i(lVar, timer), 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e2) {
                a aVar2 = l.f;
                aVar2.c("Unable to collect Memory Metric: " + e2.getMessage());
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    private long getCpuGaugeCollectionFrequencyMs(b bVar) {
        char c;
        o oVar;
        n nVar;
        int ordinal = bVar.ordinal();
        boolean z = true;
        if (ordinal == 1) {
            d dVar = this.configResolver;
            Objects.requireNonNull(dVar);
            synchronized (o.class) {
                try {
                    if (o.a == null) {
                        o.a = new o();
                    }
                    oVar = o.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            e h = dVar.h(oVar);
            if (!h.c() || !dVar.n(((Long) h.b()).longValue())) {
                e k = dVar.k(oVar);
                if (!k.c() || !dVar.n(((Long) k.b()).longValue())) {
                    e c2 = dVar.c(oVar);
                    if (!c2.c() || !dVar.n(((Long) c2.b()).longValue())) {
                        Objects.requireNonNull(oVar);
                        Long l = 100L;
                        c = l.longValue();
                    } else {
                        c = ((Long) c2.b()).longValue();
                    }
                } else {
                    x xVar = dVar.c;
                    Objects.requireNonNull(oVar);
                    c = ((Long) C22128a.m8722D1((Long) k.b(), xVar, "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs", k)).longValue();
                }
            } else {
                c = ((Long) h.b()).longValue();
            }
        } else if (ordinal != 2) {
            c = 65535;
        } else {
            d dVar2 = this.configResolver;
            Objects.requireNonNull(dVar2);
            synchronized (n.class) {
                try {
                    if (n.a == null) {
                        n.a = new n();
                    }
                    nVar = n.a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            e h2 = dVar2.h(nVar);
            if (!h2.c() || !dVar2.n(((Long) h2.b()).longValue())) {
                e k2 = dVar2.k(nVar);
                if (!k2.c() || !dVar2.n(((Long) k2.b()).longValue())) {
                    e c3 = dVar2.c(nVar);
                    if (!c3.c() || !dVar2.n(((Long) c3.b()).longValue())) {
                        Objects.requireNonNull(nVar);
                        Long l2 = 0L;
                        c = l2.longValue();
                    } else {
                        c = ((Long) c3.b()).longValue();
                    }
                } else {
                    x xVar2 = dVar2.c;
                    Objects.requireNonNull(nVar);
                    c = ((Long) C22128a.m8722D1((Long) k2.b(), xVar2, "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs", k2)).longValue();
                }
            } else {
                c = ((Long) h2.b()).longValue();
            }
        }
        a aVar = j.g;
        if (c > 0) {
            z = false;
        }
        if (z) {
            return -1L;
        }
        return c;
    }

    private GaugeMetadata getGaugeMetadata() {
        GaugeMetadata.b newBuilder = GaugeMetadata.newBuilder();
        String str = this.gaugeMetadataManager.d;
        newBuilder.copyOnWrite();
        GaugeMetadata.access$100(((GeneratedMessageLite.Builder) newBuilder).instance, str);
        k kVar = this.gaugeMetadataManager;
        e.m.d.z.n.g gVar = e.m.d.z.n.g.f;
        int b = h.b(gVar.a(kVar.c.totalMem));
        newBuilder.copyOnWrite();
        GaugeMetadata.access$800(((GeneratedMessageLite.Builder) newBuilder).instance, b);
        int b2 = h.b(gVar.a(this.gaugeMetadataManager.a.maxMemory()));
        newBuilder.copyOnWrite();
        GaugeMetadata.access$1000(((GeneratedMessageLite.Builder) newBuilder).instance, b2);
        int b3 = h.b(e.m.d.z.n.g.d.a(this.gaugeMetadataManager.b.getMemoryClass()));
        newBuilder.copyOnWrite();
        GaugeMetadata.access$1200(((GeneratedMessageLite.Builder) newBuilder).instance, b3);
        return newBuilder.build();
    }

    public static GaugeManager getInstance() {
        GaugeManager gaugeManager;
        synchronized (GaugeManager.class) {
            try {
                gaugeManager = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gaugeManager;
    }

    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r0v61, types: [long] */
    /* JADX WARN: Type inference failed for: r0v92, types: [long] */
    /* JADX WARN: Type inference failed for: r0v98, types: [long] */
    private long getMemoryGaugeCollectionFrequencyMs(b bVar) {
        char c;
        r rVar;
        q qVar;
        int ordinal = bVar.ordinal();
        boolean z = true;
        if (ordinal == 1) {
            d dVar = this.configResolver;
            Objects.requireNonNull(dVar);
            synchronized (r.class) {
                try {
                    if (r.a == null) {
                        r.a = new r();
                    }
                    rVar = r.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            e h = dVar.h(rVar);
            if (!h.c() || !dVar.n(((Long) h.b()).longValue())) {
                e k = dVar.k(rVar);
                if (!k.c() || !dVar.n(((Long) k.b()).longValue())) {
                    e c2 = dVar.c(rVar);
                    if (!c2.c() || !dVar.n(((Long) c2.b()).longValue())) {
                        Objects.requireNonNull(rVar);
                        Long l = 100L;
                        c = l.longValue();
                    } else {
                        c = ((Long) c2.b()).longValue();
                    }
                } else {
                    x xVar = dVar.c;
                    Objects.requireNonNull(rVar);
                    c = ((Long) C22128a.m8722D1((Long) k.b(), xVar, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs", k)).longValue();
                }
            } else {
                c = ((Long) h.b()).longValue();
            }
        } else if (ordinal != 2) {
            c = 65535;
        } else {
            d dVar2 = this.configResolver;
            Objects.requireNonNull(dVar2);
            synchronized (q.class) {
                try {
                    if (q.a == null) {
                        q.a = new q();
                    }
                    qVar = q.a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            e h2 = dVar2.h(qVar);
            if (!h2.c() || !dVar2.n(((Long) h2.b()).longValue())) {
                e k2 = dVar2.k(qVar);
                if (!k2.c() || !dVar2.n(((Long) k2.b()).longValue())) {
                    e c3 = dVar2.c(qVar);
                    if (!c3.c() || !dVar2.n(((Long) c3.b()).longValue())) {
                        Objects.requireNonNull(qVar);
                        Long l2 = 0L;
                        c = l2.longValue();
                    } else {
                        c = ((Long) c3.b()).longValue();
                    }
                } else {
                    x xVar2 = dVar2.c;
                    Objects.requireNonNull(qVar);
                    c = ((Long) C22128a.m8722D1((Long) k2.b(), xVar2, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs", k2)).longValue();
                }
            } else {
                c = ((Long) h2.b()).longValue();
            }
        }
        a aVar = l.f;
        if (c > 0) {
            z = false;
        }
        if (z) {
            return -1L;
        }
        return c;
    }

    private boolean startCollectingCpuMetrics(long j, Timer timer) {
        if (j == -1) {
            a aVar = logger;
            if (!aVar.b) {
                return false;
            }
            Objects.requireNonNull(aVar.a);
            return false;
        }
        j jVar = (j) this.cpuGaugeCollector.get();
        long j2 = jVar.d;
        if (j2 == -1 || j2 == 0) {
            return true;
        }
        if (j <= 0) {
            return true;
        }
        ScheduledFuture scheduledFuture = jVar.e;
        if (scheduledFuture == null) {
            jVar.a(j, timer);
            return true;
        } else if (jVar.f == j) {
            return true;
        } else {
            scheduledFuture.cancel(false);
            jVar.e = null;
            jVar.f = -1L;
            jVar.a(j, timer);
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private long startCollectingGauges(b bVar, Timer timer) {
        char cpuGaugeCollectionFrequencyMs = getCpuGaugeCollectionFrequencyMs(bVar);
        if (!startCollectingCpuMetrics(cpuGaugeCollectionFrequencyMs, timer)) {
            cpuGaugeCollectionFrequencyMs = 65535;
        }
        ?? memoryGaugeCollectionFrequencyMs = getMemoryGaugeCollectionFrequencyMs(bVar);
        char c = cpuGaugeCollectionFrequencyMs;
        if (startCollectingMemoryMetrics(memoryGaugeCollectionFrequencyMs, timer)) {
            c = cpuGaugeCollectionFrequencyMs == -1 ? memoryGaugeCollectionFrequencyMs : Math.min((long) cpuGaugeCollectionFrequencyMs, (long) memoryGaugeCollectionFrequencyMs);
        }
        return c;
    }

    private boolean startCollectingMemoryMetrics(long j, Timer timer) {
        if (j == -1) {
            a aVar = logger;
            if (!aVar.b) {
                return false;
            }
            Objects.requireNonNull(aVar.a);
            return false;
        }
        l lVar = (l) this.memoryGaugeCollector.get();
        Objects.requireNonNull(lVar);
        if (j <= 0) {
            return true;
        }
        ScheduledFuture scheduledFuture = lVar.d;
        if (scheduledFuture == null) {
            lVar.a(j, timer);
            return true;
        } else if (lVar.e == j) {
            return true;
        } else {
            scheduledFuture.cancel(false);
            lVar.d = null;
            lVar.e = -1L;
            lVar.a(j, timer);
            return true;
        }
    }

    /* renamed from: syncFlush */
    public void m38298b(String str, b bVar) {
        GaugeMetric.b newBuilder = GaugeMetric.newBuilder();
        while (!((j) this.cpuGaugeCollector.get()).a.isEmpty()) {
            CpuMetricReading cpuMetricReading = (CpuMetricReading) ((j) this.cpuGaugeCollector.get()).a.poll();
            newBuilder.copyOnWrite();
            GaugeMetric.access$800(((GeneratedMessageLite.Builder) newBuilder).instance, cpuMetricReading);
        }
        while (!((l) this.memoryGaugeCollector.get()).b.isEmpty()) {
            AndroidMemoryReading androidMemoryReading = (AndroidMemoryReading) ((l) this.memoryGaugeCollector.get()).b.poll();
            newBuilder.copyOnWrite();
            GaugeMetric.access$1400(((GeneratedMessageLite.Builder) newBuilder).instance, androidMemoryReading);
        }
        newBuilder.copyOnWrite();
        GaugeMetric.access$100(((GeneratedMessageLite.Builder) newBuilder).instance, str);
        e.m.d.z.m.k kVar = this.transportManager;
        kVar.i.execute(new e.m.d.z.m.b(kVar, newBuilder.build(), bVar));
    }

    public void collectGaugeMetricOnce(Timer timer) {
        collectGaugeMetricOnce((j) this.cpuGaugeCollector.get(), (l) this.memoryGaugeCollector.get(), timer);
    }

    public void initializeGaugeMetadataManager(Context context) {
        this.gaugeMetadataManager = new k(context);
    }

    public boolean logGaugeMetadata(String str, b bVar) {
        if (this.gaugeMetadataManager != null) {
            GaugeMetric.b newBuilder = GaugeMetric.newBuilder();
            newBuilder.copyOnWrite();
            GaugeMetric.access$100(((GeneratedMessageLite.Builder) newBuilder).instance, str);
            GaugeMetadata gaugeMetadata = getGaugeMetadata();
            newBuilder.copyOnWrite();
            GaugeMetric.access$400(((GeneratedMessageLite.Builder) newBuilder).instance, gaugeMetadata);
            GaugeMetric build = newBuilder.build();
            e.m.d.z.m.k kVar = this.transportManager;
            kVar.i.execute(new e.m.d.z.m.b(kVar, build, bVar));
            return true;
        }
        return false;
    }

    public void startCollectingGauges(PerfSession perfSession, b bVar) {
        if (this.sessionId != null) {
            stopCollectingGauges();
        }
        long startCollectingGauges = startCollectingGauges(bVar, perfSession.f7074b);
        if (startCollectingGauges == -1) {
            a aVar = logger;
            if (!aVar.b) {
                return;
            }
            Objects.requireNonNull(aVar.a);
            return;
        }
        String str = perfSession.f7073a;
        this.sessionId = str;
        this.applicationProcessState = bVar;
        try {
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) this.gaugeManagerExecutor.get();
            c cVar = new c(this, str, bVar);
            long j = startCollectingGauges * 20;
            this.gaugeManagerDataCollectionJob = scheduledExecutorService.scheduleAtFixedRate(cVar, j, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            a aVar2 = logger;
            StringBuilder m8728C = C22128a.m8728C("Unable to start collecting Gauges: ");
            m8728C.append(e.getMessage());
            aVar2.c(m8728C.toString());
        }
    }

    public void stopCollectingGauges() {
        String str = this.sessionId;
        if (str == null) {
            return;
        }
        b bVar = this.applicationProcessState;
        j jVar = (j) this.cpuGaugeCollector.get();
        ScheduledFuture scheduledFuture = jVar.e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            jVar.e = null;
            jVar.f = -1L;
        }
        l lVar = (l) this.memoryGaugeCollector.get();
        ScheduledFuture scheduledFuture2 = lVar.d;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(false);
            lVar.d = null;
            lVar.e = -1L;
        }
        ScheduledFuture scheduledFuture3 = this.gaugeManagerDataCollectionJob;
        if (scheduledFuture3 != null) {
            scheduledFuture3.cancel(false);
        }
        ((ScheduledExecutorService) this.gaugeManagerExecutor.get()).schedule((Runnable) new e.m.d.z.l.c.e(this, str, bVar), 20L, TimeUnit.MILLISECONDS);
        this.sessionId = null;
        this.applicationProcessState = b.b;
    }
}
