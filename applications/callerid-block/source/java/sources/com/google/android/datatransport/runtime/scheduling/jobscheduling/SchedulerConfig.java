package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.p062h.p069y.AbstractC1325a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.d;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
@AutoValue
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig.class */
public abstract class SchedulerConfig {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$Flag.class */
    public enum Flag {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$a.class */
    public static class C1335a {

        /* renamed from: a */
        private AbstractC1325a f5410a;

        /* renamed from: b */
        private Map<Priority, AbstractC1336b> f5411b = new HashMap();

        /* renamed from: a */
        public C1335a m9095a(Priority priority, AbstractC1336b abstractC1336b) {
            this.f5411b.put(priority, abstractC1336b);
            return this;
        }

        /* renamed from: b */
        public SchedulerConfig m9094b() {
            if (this.f5410a != null) {
                if (this.f5411b.keySet().size() < Priority.values().length) {
                    throw new IllegalStateException("Not all priorities have been configured");
                }
                Map<Priority, AbstractC1336b> map = this.f5411b;
                this.f5411b = new HashMap();
                return SchedulerConfig.m9102d(this.f5410a, map);
            }
            throw new NullPointerException("missing required property: clock");
        }

        /* renamed from: c */
        public C1335a m9093c(AbstractC1325a abstractC1325a) {
            this.f5410a = abstractC1325a;
            return this;
        }
    }

    @AutoValue
    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$b.class */
    public static abstract class AbstractC1336b {

        @AutoValue.Builder
        /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$b$a.class */
        public static abstract class AbstractC1337a {
            /* renamed from: a */
            public abstract AbstractC1336b m9088a();

            /* renamed from: b */
            public abstract AbstractC1337a m9087b(long j);

            /* renamed from: c */
            public abstract AbstractC1337a m9086c(Set<Flag> set);

            /* renamed from: d */
            public abstract AbstractC1337a m9085d(long j);
        }

        /* renamed from: a */
        public static AbstractC1337a m9092a() {
            d.b bVar = new d.b();
            bVar.c(Collections.emptySet());
            return bVar;
        }

        /* renamed from: b */
        abstract long m9091b();

        /* renamed from: c */
        abstract Set<Flag> m9090c();

        /* renamed from: d */
        abstract long m9089d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    private long m9105a(int i, long j) {
        int i2 = i - 1;
        double max = Math.max(1.0d, Math.log(10000.0d) / Math.log((((j > 1L ? 1 : (j == 1L ? 0 : -1)) > 0 ? j : true) == true ? 1L : 0L) * i2));
        double pow = Math.pow(3.0d, i2);
        double d = (double) j;
        Double.isNaN(d);
        return (long) (pow * d * max);
    }

    /* renamed from: b */
    public static C1335a m9104b() {
        return new C1335a();
    }

    /* renamed from: d */
    static SchedulerConfig m9102d(AbstractC1325a abstractC1325a, Map<Priority, AbstractC1336b> map) {
        return new c(abstractC1325a, map);
    }

    /* renamed from: f */
    public static SchedulerConfig m9100f(AbstractC1325a abstractC1325a) {
        C1335a m9104b = m9104b();
        Priority priority = Priority.DEFAULT;
        AbstractC1336b.AbstractC1337a m9092a = AbstractC1336b.m9092a();
        m9092a.m9087b(30000L);
        m9092a.m9085d(86400000L);
        m9104b.m9095a(priority, m9092a.m9088a());
        Priority priority2 = Priority.HIGHEST;
        AbstractC1336b.AbstractC1337a m9092a2 = AbstractC1336b.m9092a();
        m9092a2.m9087b(1000L);
        m9092a2.m9085d(86400000L);
        m9104b.m9095a(priority2, m9092a2.m9088a());
        Priority priority3 = Priority.VERY_LOW;
        AbstractC1336b.AbstractC1337a m9092a3 = AbstractC1336b.m9092a();
        m9092a3.m9087b(86400000L);
        m9092a3.m9085d(86400000L);
        m9092a3.m9086c(m9097i(Flag.NETWORK_UNMETERED, Flag.DEVICE_IDLE));
        m9104b.m9095a(priority3, m9092a3.m9088a());
        m9104b.m9093c(abstractC1325a);
        return m9104b.m9094b();
    }

    /* renamed from: i */
    private static <T> Set<T> m9097i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    /* renamed from: j */
    private void m9096j(JobInfo.Builder builder, Set<Flag> set) {
        if (set.contains(Flag.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(Flag.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(Flag.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    /* renamed from: c */
    public JobInfo.Builder m9103c(JobInfo.Builder builder, Priority priority, long j, int i) {
        builder.setMinimumLatency(m9099g(priority, j, i));
        m9096j(builder, m9098h().get(priority).m9090c());
        return builder;
    }

    /* renamed from: e */
    abstract AbstractC1325a m9101e();

    /* renamed from: g */
    public long m9099g(Priority priority, long j, int i) {
        long m9138a = m9101e().m9138a();
        AbstractC1336b abstractC1336b = m9098h().get(priority);
        return Math.min(Math.max(m9105a(i, abstractC1336b.m9091b()), j - m9138a), abstractC1336b.m9089d());
    }

    /* renamed from: h */
    abstract Map<Priority, AbstractC1336b> m9098h();
}
