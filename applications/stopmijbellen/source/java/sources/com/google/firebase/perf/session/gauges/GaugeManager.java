package com.google.firebase.perf.session.gauges;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.emoji2.text.RunnableC0365e;
import com.google.android.gms.internal.ads.C1676a;
import java.util.Objects;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p081e6.C2583a;
import p081e6.C2594k;
import p081e6.C2595l;
import p081e6.C2597n;
import p081e6.C2598o;
import p104g6.C2905a;
import p147k6.C3325a;
import p158l6.C3505b;
import p158l6.C3508e;
import p158l6.C3509f;
import p158l6.RunnableC3504a;
import p158l6.RunnableC3506c;
import p158l6.RunnableC3507d;
import p169m6.C3652e;
import p180n6.C3720b;
import p180n6.C3729e;
import p180n6.C3731f;
import p180n6.EnumC3723d;
import p191o6.C3894b;
import p191o6.C3903e;
import p191o6.C3906f;
import p191o6.C3909g;
import p191o6.EnumC3901d;
@Keep
/* loaded from: classes-dex2jar.jar:com/google/firebase/perf/session/gauges/GaugeManager.class */
public class GaugeManager {
    private static final long APPROX_NUMBER_OF_DATA_POINTS_PER_GAUGE_METRIC = 20;
    private static final long INVALID_GAUGE_COLLECTION_FREQUENCY = -1;
    private static final long TIME_TO_WAIT_BEFORE_FLUSHING_GAUGES_QUEUE_MS = 20;
    private EnumC3901d applicationProcessState;
    private final C2583a configResolver;
    private final C3505b cpuGaugeCollector;
    private ScheduledFuture gaugeManagerDataCollectionJob;
    private final ScheduledExecutorService gaugeManagerExecutor;
    private C3508e gaugeMetadataManager;
    private final C3509f memoryGaugeCollector;
    private String sessionId;
    private final C3652e transportManager;
    private static final C2905a logger = C2905a.m2869b();
    private static final GaugeManager instance = new GaugeManager();

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private GaugeManager() {
        /*
            r8 = this;
            java.util.concurrent.ScheduledExecutorService r0 = java.util.concurrent.Executors.newSingleThreadScheduledExecutor()
            r9 = r0
            m6.e r0 = p169m6.C3652e.f11967s
            r10 = r0
            e6.a r0 = p081e6.C2583a.m3412e()
            r11 = r0
            l6.b r0 = p158l6.C3505b.f11626i
            if (r0 != 0) goto L1c
            l6.b r0 = new l6.b
            r1 = r0
            r1.<init>()
            p158l6.C3505b.f11626i = r0
        L1c:
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = r11
            r4 = 0
            l6.b r5 = p158l6.C3505b.f11626i
            l6.f r6 = p158l6.C3509f.f11648g
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.perf.session.gauges.GaugeManager.<init>():void");
    }

    public GaugeManager(ScheduledExecutorService scheduledExecutorService, C3652e c3652e, C2583a c2583a, C3508e c3508e, C3505b c3505b, C3509f c3509f) {
        this.gaugeManagerDataCollectionJob = null;
        this.sessionId = null;
        this.applicationProcessState = EnumC3901d.APPLICATION_PROCESS_STATE_UNKNOWN;
        this.gaugeManagerExecutor = scheduledExecutorService;
        this.transportManager = c3652e;
        this.configResolver = c2583a;
        this.gaugeMetadataManager = c3508e;
        this.cpuGaugeCollector = c3505b;
        this.memoryGaugeCollector = c3509f;
    }

    private static void collectGaugeMetricOnce(C3505b c3505b, C3509f c3509f, C3729e c3729e) {
        synchronized (c3505b) {
            try {
                c3505b.f11628b.schedule(new RunnableC3504a(c3505b, c3729e, 0), 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                C2905a c2905a = C3505b.f11624g;
                c2905a.m2866e("Unable to collect Cpu Metric: " + e.getMessage());
            }
        }
        synchronized (c3509f) {
            try {
                c3509f.f11649a.schedule(new RunnableC3504a(c3509f, c3729e, 1), 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e2) {
                C2905a c2905a2 = C3509f.f11647f;
                c2905a2.m2866e("Unable to collect Memory Metric: " + e2.getMessage());
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    private long getCpuGaugeCollectionFrequencyMs(EnumC3901d enumC3901d) {
        char c;
        C2595l c2595l;
        C2594k c2594k;
        int ordinal = enumC3901d.ordinal();
        boolean z = true;
        if (ordinal == 1) {
            C2583a c2583a = this.configResolver;
            Objects.requireNonNull(c2583a);
            synchronized (C2595l.class) {
                try {
                    if (C2595l.f9022a == null) {
                        C2595l.f9022a = new C2595l();
                    }
                    c2595l = C2595l.f9022a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            C3720b<Long> m3409h = c2583a.m3409h(c2595l);
            if (!m3409h.m1843c() || !c2583a.m3403n(m3409h.m1844b().longValue())) {
                C3720b<Long> c3720b = c2583a.f9008a.getLong("fpr_session_gauge_cpu_capture_frequency_fg_ms");
                if (!c3720b.m1843c() || !c2583a.m3403n(c3720b.m1844b().longValue())) {
                    C3720b<Long> m3414c = c2583a.m3414c(c2595l);
                    if (!m3414c.m1843c() || !c2583a.m3403n(m3414c.m1844b().longValue())) {
                        Long l = 100L;
                        c = l.longValue();
                    } else {
                        c = m3414c.m1844b().longValue();
                    }
                } else {
                    c = ((Long) C1676a.m4790g(c3720b.m1844b(), c2583a.f9010c, "com.google.firebase.perf.SessionsCpuCaptureFrequencyForegroundMs", c3720b)).longValue();
                }
            } else {
                c = m3409h.m1844b().longValue();
            }
        } else if (ordinal != 2) {
            c = 65535;
        } else {
            C2583a c2583a2 = this.configResolver;
            Objects.requireNonNull(c2583a2);
            synchronized (C2594k.class) {
                try {
                    if (C2594k.f9021a == null) {
                        C2594k.f9021a = new C2594k();
                    }
                    c2594k = C2594k.f9021a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            C3720b<Long> m3409h2 = c2583a2.m3409h(c2594k);
            if (!m3409h2.m1843c() || !c2583a2.m3403n(m3409h2.m1844b().longValue())) {
                C3720b<Long> c3720b2 = c2583a2.f9008a.getLong("fpr_session_gauge_cpu_capture_frequency_bg_ms");
                if (!c3720b2.m1843c() || !c2583a2.m3403n(c3720b2.m1844b().longValue())) {
                    C3720b<Long> m3414c2 = c2583a2.m3414c(c2594k);
                    if (!m3414c2.m1843c() || !c2583a2.m3403n(m3414c2.m1844b().longValue())) {
                        Long l2 = 0L;
                        c = l2.longValue();
                    } else {
                        c = m3414c2.m1844b().longValue();
                    }
                } else {
                    c = ((Long) C1676a.m4790g(c3720b2.m1844b(), c2583a2.f9010c, "com.google.firebase.perf.SessionsCpuCaptureFrequencyBackgroundMs", c3720b2)).longValue();
                }
            } else {
                c = m3409h2.m1844b().longValue();
            }
        }
        C2905a c2905a = C3505b.f11624g;
        if (c > 0) {
            z = false;
        }
        return z ? INVALID_GAUGE_COLLECTION_FREQUENCY : c;
    }

    private C3906f getGaugeMetadata() {
        C3906f.C3908b m1693F = C3906f.m1693F();
        String str = this.gaugeMetadataManager.f11645d;
        m1693F.m4282n();
        C3906f.m1691z((C3906f) m1693F.f7078b, str);
        C3508e c3508e = this.gaugeMetadataManager;
        EnumC3723d enumC3723d = EnumC3723d.f12116d;
        int m1836b = C3731f.m1836b(enumC3723d.m1841a(c3508e.f11644c.totalMem));
        m1693F.m4282n();
        C3906f.m1696C((C3906f) m1693F.f7078b, m1836b);
        int m1836b2 = C3731f.m1836b(enumC3723d.m1841a(this.gaugeMetadataManager.f11642a.maxMemory()));
        m1693F.m4282n();
        C3906f.m1698A((C3906f) m1693F.f7078b, m1836b2);
        int m1836b3 = C3731f.m1836b(EnumC3723d.f12114b.m1841a(this.gaugeMetadataManager.f11643b.getMemoryClass()));
        m1693F.m4282n();
        C3906f.m1697B((C3906f) m1693F.f7078b, m1836b3);
        return m1693F.m4284l();
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

    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v110, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v94, types: [long] */
    private long getMemoryGaugeCollectionFrequencyMs(EnumC3901d enumC3901d) {
        char c;
        C2598o c2598o;
        C2597n c2597n;
        int ordinal = enumC3901d.ordinal();
        boolean z = true;
        if (ordinal == 1) {
            C2583a c2583a = this.configResolver;
            Objects.requireNonNull(c2583a);
            synchronized (C2598o.class) {
                try {
                    if (C2598o.f9025a == null) {
                        C2598o.f9025a = new C2598o();
                    }
                    c2598o = C2598o.f9025a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            C3720b<Long> m3409h = c2583a.m3409h(c2598o);
            if (!m3409h.m1843c() || !c2583a.m3403n(m3409h.m1844b().longValue())) {
                C3720b<Long> c3720b = c2583a.f9008a.getLong("fpr_session_gauge_memory_capture_frequency_fg_ms");
                if (!c3720b.m1843c() || !c2583a.m3403n(c3720b.m1844b().longValue())) {
                    C3720b<Long> m3414c = c2583a.m3414c(c2598o);
                    if (!m3414c.m1843c() || !c2583a.m3403n(m3414c.m1844b().longValue())) {
                        Long l = 100L;
                        c = l.longValue();
                    } else {
                        c = m3414c.m1844b().longValue();
                    }
                } else {
                    c = ((Long) C1676a.m4790g(c3720b.m1844b(), c2583a.f9010c, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs", c3720b)).longValue();
                }
            } else {
                c = m3409h.m1844b().longValue();
            }
        } else if (ordinal != 2) {
            c = 65535;
        } else {
            C2583a c2583a2 = this.configResolver;
            Objects.requireNonNull(c2583a2);
            synchronized (C2597n.class) {
                try {
                    if (C2597n.f9024a == null) {
                        C2597n.f9024a = new C2597n();
                    }
                    c2597n = C2597n.f9024a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            C3720b<Long> m3409h2 = c2583a2.m3409h(c2597n);
            if (!m3409h2.m1843c() || !c2583a2.m3403n(m3409h2.m1844b().longValue())) {
                C3720b<Long> c3720b2 = c2583a2.f9008a.getLong("fpr_session_gauge_memory_capture_frequency_bg_ms");
                if (!c3720b2.m1843c() || !c2583a2.m3403n(c3720b2.m1844b().longValue())) {
                    C3720b<Long> m3414c2 = c2583a2.m3414c(c2597n);
                    if (!m3414c2.m1843c() || !c2583a2.m3403n(m3414c2.m1844b().longValue())) {
                        Long l2 = 0L;
                        c = l2.longValue();
                    } else {
                        c = m3414c2.m1844b().longValue();
                    }
                } else {
                    c = ((Long) C1676a.m4790g(c3720b2.m1844b(), c2583a2.f9010c, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyBackgroundMs", c3720b2)).longValue();
                }
            } else {
                c = m3409h2.m1844b().longValue();
            }
        }
        C2905a c2905a = C3509f.f11647f;
        if (c > 0) {
            z = false;
        }
        return z ? INVALID_GAUGE_COLLECTION_FREQUENCY : c;
    }

    private boolean startCollectingCpuMetrics(long j, C3729e c3729e) {
        if (j == INVALID_GAUGE_COLLECTION_FREQUENCY) {
            C2905a c2905a = logger;
            if (!c2905a.f9793b) {
                return false;
            }
            Objects.requireNonNull(c2905a.f9792a);
            return false;
        }
        C3505b c3505b = this.cpuGaugeCollector;
        long j2 = c3505b.f11630d;
        if (j2 == INVALID_GAUGE_COLLECTION_FREQUENCY || j2 == 0) {
            return true;
        }
        if (j <= 0) {
            return true;
        }
        ScheduledFuture scheduledFuture = c3505b.f11631e;
        if (scheduledFuture == null) {
            c3505b.m2223a(j, c3729e);
            return true;
        } else if (c3505b.f11632f == j) {
            return true;
        } else {
            scheduledFuture.cancel(false);
            c3505b.f11631e = null;
            c3505b.f11632f = INVALID_GAUGE_COLLECTION_FREQUENCY;
            c3505b.m2223a(j, c3729e);
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    private long startCollectingGauges(EnumC3901d enumC3901d, C3729e c3729e) {
        char cpuGaugeCollectionFrequencyMs = getCpuGaugeCollectionFrequencyMs(enumC3901d);
        if (!startCollectingCpuMetrics(cpuGaugeCollectionFrequencyMs, c3729e)) {
            cpuGaugeCollectionFrequencyMs = 65535;
        }
        ?? memoryGaugeCollectionFrequencyMs = getMemoryGaugeCollectionFrequencyMs(enumC3901d);
        char c = cpuGaugeCollectionFrequencyMs;
        if (startCollectingMemoryMetrics(memoryGaugeCollectionFrequencyMs, c3729e)) {
            c = cpuGaugeCollectionFrequencyMs == INVALID_GAUGE_COLLECTION_FREQUENCY ? memoryGaugeCollectionFrequencyMs : Math.min((long) cpuGaugeCollectionFrequencyMs, (long) memoryGaugeCollectionFrequencyMs);
        }
        return c;
    }

    private boolean startCollectingMemoryMetrics(long j, C3729e c3729e) {
        if (j == INVALID_GAUGE_COLLECTION_FREQUENCY) {
            C2905a c2905a = logger;
            if (!c2905a.f9793b) {
                return false;
            }
            Objects.requireNonNull(c2905a.f9792a);
            return false;
        }
        C3509f c3509f = this.memoryGaugeCollector;
        Objects.requireNonNull(c3509f);
        if (j <= 0) {
            return true;
        }
        ScheduledFuture scheduledFuture = c3509f.f11652d;
        if (scheduledFuture == null) {
            c3509f.m2221a(j, c3729e);
            return true;
        } else if (c3509f.f11653e == j) {
            return true;
        } else {
            scheduledFuture.cancel(false);
            c3509f.f11652d = null;
            c3509f.f11653e = INVALID_GAUGE_COLLECTION_FREQUENCY;
            c3509f.m2221a(j, c3729e);
            return true;
        }
    }

    /* renamed from: syncFlush */
    public void lambda$stopCollectingGauges$1(String str, EnumC3901d enumC3901d) {
        C3909g.C3911b m1681J = C3909g.m1681J();
        while (!this.cpuGaugeCollector.f11627a.isEmpty()) {
            C3903e poll = this.cpuGaugeCollector.f11627a.poll();
            m1681J.m4282n();
            C3909g.m1688C((C3909g) m1681J.f7078b, poll);
        }
        while (!this.memoryGaugeCollector.f11650b.isEmpty()) {
            C3894b poll2 = this.memoryGaugeCollector.f11650b.poll();
            m1681J.m4282n();
            C3909g.m1690A((C3909g) m1681J.f7078b, poll2);
        }
        m1681J.m4282n();
        C3909g.m1679z((C3909g) m1681J.f7078b, str);
        C3652e c3652e = this.transportManager;
        c3652e.f11976i.execute(new RunnableC0365e(c3652e, m1681J.m4284l(), enumC3901d, 1));
    }

    public void collectGaugeMetricOnce(C3729e c3729e) {
        collectGaugeMetricOnce(this.cpuGaugeCollector, this.memoryGaugeCollector, c3729e);
    }

    public boolean logGaugeMetadata(String str, EnumC3901d enumC3901d) {
        if (this.gaugeMetadataManager != null) {
            C3909g.C3911b m1681J = C3909g.m1681J();
            m1681J.m4282n();
            C3909g.m1679z((C3909g) m1681J.f7078b, str);
            C3906f gaugeMetadata = getGaugeMetadata();
            m1681J.m4282n();
            C3909g.m1689B((C3909g) m1681J.f7078b, gaugeMetadata);
            C3909g m4284l = m1681J.m4284l();
            C3652e c3652e = this.transportManager;
            c3652e.f11976i.execute(new RunnableC0365e(c3652e, m4284l, enumC3901d, 1));
            return true;
        }
        return false;
    }

    public void setApplicationContext(Context context) {
        this.gaugeMetadataManager = new C3508e(context);
    }

    public void startCollectingGauges(C3325a c3325a, EnumC3901d enumC3901d) {
        if (this.sessionId != null) {
            stopCollectingGauges();
        }
        long startCollectingGauges = startCollectingGauges(enumC3901d, c3325a.f11282b);
        if (startCollectingGauges == INVALID_GAUGE_COLLECTION_FREQUENCY) {
            C2905a c2905a = logger;
            if (!c2905a.f9793b) {
                return;
            }
            Objects.requireNonNull(c2905a.f9792a);
            Log.w("FirebasePerformance", "Invalid gauge collection frequency. Unable to start collecting Gauges.");
            return;
        }
        String str = c3325a.f11281a;
        this.sessionId = str;
        this.applicationProcessState = enumC3901d;
        try {
            ScheduledExecutorService scheduledExecutorService = this.gaugeManagerExecutor;
            RunnableC3506c runnableC3506c = new RunnableC3506c(this, str, enumC3901d, 0);
            long j = startCollectingGauges * 20;
            this.gaugeManagerDataCollectionJob = scheduledExecutorService.scheduleAtFixedRate(runnableC3506c, j, j, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e) {
            C2905a c2905a2 = logger;
            StringBuilder m8752j = C0082b.m8752j("Unable to start collecting Gauges: ");
            m8752j.append(e.getMessage());
            c2905a2.m2866e(m8752j.toString());
        }
    }

    public void stopCollectingGauges() {
        String str = this.sessionId;
        if (str == null) {
            return;
        }
        EnumC3901d enumC3901d = this.applicationProcessState;
        C3505b c3505b = this.cpuGaugeCollector;
        ScheduledFuture scheduledFuture = c3505b.f11631e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            c3505b.f11631e = null;
            c3505b.f11632f = INVALID_GAUGE_COLLECTION_FREQUENCY;
        }
        C3509f c3509f = this.memoryGaugeCollector;
        ScheduledFuture scheduledFuture2 = c3509f.f11652d;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(false);
            c3509f.f11652d = null;
            c3509f.f11653e = INVALID_GAUGE_COLLECTION_FREQUENCY;
        }
        ScheduledFuture scheduledFuture3 = this.gaugeManagerDataCollectionJob;
        if (scheduledFuture3 != null) {
            scheduledFuture3.cancel(false);
        }
        this.gaugeManagerExecutor.schedule(new RunnableC3507d(this, str, enumC3901d, 0), 20L, TimeUnit.MILLISECONDS);
        this.sessionId = null;
        this.applicationProcessState = EnumC3901d.APPLICATION_PROCESS_STATE_UNKNOWN;
    }
}
