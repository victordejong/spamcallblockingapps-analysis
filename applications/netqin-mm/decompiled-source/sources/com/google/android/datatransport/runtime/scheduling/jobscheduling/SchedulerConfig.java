package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import com.google.android.datatransport.Priority;
import com.mopub.common.privacy.AdvertisingId;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.C2616c;
import p131c.p161d.p170b.p173b.p176i.p184y.p185j.C2617d;
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
    public static class C7118a {

        /* renamed from: a */
        public AbstractC2541a f21938a;

        /* renamed from: b */
        public Map<Priority, AbstractC7119b> f21939b = new HashMap();

        /* renamed from: a */
        public C7118a m18724a(AbstractC2541a aVar) {
            this.f21938a = aVar;
            return this;
        }

        /* renamed from: a */
        public C7118a m18723a(Priority priority, AbstractC7119b bVar) {
            this.f21939b.put(priority, bVar);
            return this;
        }

        /* renamed from: a */
        public SchedulerConfig m18725a() {
            if (this.f21938a == null) {
                throw new NullPointerException("missing required property: clock");
            } else if (this.f21939b.keySet().size() >= Priority.values().length) {
                Map<Priority, AbstractC7119b> map = this.f21939b;
                this.f21939b = new HashMap();
                return SchedulerConfig.m18730a(this.f21938a, map);
            } else {
                throw new IllegalStateException("Not all priorities have been configured");
            }
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$b.class */
    public static abstract class AbstractC7119b {

        /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$b$a.class */
        public static abstract class AbstractC7120a {
            /* renamed from: a */
            public abstract AbstractC7120a mo18717a(long j);

            /* renamed from: a */
            public abstract AbstractC7120a mo18716a(Set<Flag> set);

            /* renamed from: a */
            public abstract AbstractC7119b mo18718a();

            /* renamed from: b */
            public abstract AbstractC7120a mo18715b(long j);
        }

        /* renamed from: d */
        public static AbstractC7120a m18719d() {
            C2617d.C2619b bVar = new C2617d.C2619b();
            bVar.mo18716a(Collections.emptySet());
            return bVar;
        }

        /* renamed from: a */
        public abstract long mo18722a();

        /* renamed from: b */
        public abstract Set<Flag> mo18721b();

        /* renamed from: c */
        public abstract long mo18720c();
    }

    /* renamed from: a */
    public static SchedulerConfig m18731a(AbstractC2541a aVar) {
        C7118a c = m18726c();
        Priority priority = Priority.DEFAULT;
        AbstractC7119b.AbstractC7120a d = AbstractC7119b.m18719d();
        d.mo18717a(30000L);
        d.mo18715b(AdvertisingId.ONE_DAY_MS);
        c.m18723a(priority, d.mo18718a());
        Priority priority2 = Priority.HIGHEST;
        AbstractC7119b.AbstractC7120a d2 = AbstractC7119b.m18719d();
        d2.mo18717a(1000L);
        d2.mo18715b(AdvertisingId.ONE_DAY_MS);
        c.m18723a(priority2, d2.mo18718a());
        Priority priority3 = Priority.VERY_LOW;
        AbstractC7119b.AbstractC7120a d3 = AbstractC7119b.m18719d();
        d3.mo18717a(AdvertisingId.ONE_DAY_MS);
        d3.mo18715b(AdvertisingId.ONE_DAY_MS);
        d3.mo18716a(m18728a(Flag.NETWORK_UNMETERED, Flag.DEVICE_IDLE));
        c.m18723a(priority3, d3.mo18718a());
        c.m18724a(aVar);
        return c.m18725a();
    }

    /* renamed from: a */
    public static SchedulerConfig m18730a(AbstractC2541a aVar, Map<Priority, AbstractC7119b> map) {
        return new C2616c(aVar, map);
    }

    /* renamed from: a */
    public static <T> Set<T> m18728a(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    /* renamed from: c */
    public static C7118a m18726c() {
        return new C7118a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* renamed from: a */
    public final long m18734a(int i, long j) {
        int i2 = i - 1;
        double max = Math.max(1.0d, Math.log(10000.0d) / Math.log((j > 1 ? j : 2) * i2));
        double pow = Math.pow(3.0d, i2);
        double d = j;
        Double.isNaN(d);
        return (long) (pow * d * max);
    }

    /* renamed from: a */
    public long m18729a(Priority priority, long j, int i) {
        long a = mo18735a().mo29554a();
        AbstractC7119b bVar = mo18727b().get(priority);
        return Math.min(Math.max(m18734a(i, bVar.mo18722a()), j - a), bVar.mo18720c());
    }

    /* renamed from: a */
    public JobInfo.Builder m18733a(JobInfo.Builder builder, Priority priority, long j, int i) {
        builder.setMinimumLatency(m18729a(priority, j, i));
        m18732a(builder, mo18727b().get(priority).mo18721b());
        return builder;
    }

    /* renamed from: a */
    public abstract AbstractC2541a mo18735a();

    /* renamed from: a */
    public final void m18732a(JobInfo.Builder builder, Set<Flag> set) {
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

    /* renamed from: b */
    public abstract Map<Priority, AbstractC7119b> mo18727b();
}
