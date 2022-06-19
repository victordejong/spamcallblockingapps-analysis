package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C4777d;
import com.google.auto.value.AutoValue;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
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
    public static class C4771a {

        /* renamed from: a */
        private AbstractC4746a f14386a;

        /* renamed from: b */
        private Map<Priority, AbstractC4772b> f14387b = new HashMap();

        /* renamed from: a */
        public C4771a m21805a(Priority priority, AbstractC4772b abstractC4772b) {
            this.f14387b.put(priority, abstractC4772b);
            return this;
        }

        /* renamed from: b */
        public SchedulerConfig m21804b() {
            Objects.requireNonNull(this.f14386a, "missing required property: clock");
            if (this.f14387b.keySet().size() >= Priority.values().length) {
                Map<Priority, AbstractC4772b> map = this.f14387b;
                this.f14387b = new HashMap();
                return SchedulerConfig.m21810d(this.f14386a, map);
            }
            throw new IllegalStateException("Not all priorities have been configured");
        }

        /* renamed from: c */
        public C4771a m21803c(AbstractC4746a abstractC4746a) {
            this.f14386a = abstractC4746a;
            return this;
        }
    }

    @AutoValue
    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$b.class */
    public static abstract class AbstractC4772b {

        @AutoValue.Builder
        /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig$b$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/SchedulerConfig$b$a.class */
        public static abstract class AbstractC4773a {
            /* renamed from: a */
            public abstract AbstractC4772b mo21794a();

            /* renamed from: b */
            public abstract AbstractC4773a mo21793b(long j);

            /* renamed from: c */
            public abstract AbstractC4773a mo21792c(Set<Flag> set);

            /* renamed from: d */
            public abstract AbstractC4773a mo21791d(long j);
        }

        /* renamed from: a */
        public static AbstractC4773a m21802a() {
            return new C4777d.C4779b().mo21792c(Collections.emptySet());
        }

        /* renamed from: b */
        public abstract long mo21797b();

        /* renamed from: c */
        public abstract Set<Flag> mo21796c();

        /* renamed from: d */
        public abstract long mo21795d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    private long m21813a(int i, long j) {
        int i2;
        return (long) (Math.pow(3.0d, i - 1) * ((double) j) * Math.max(1.0d, Math.log(10000.0d) / Math.log((((j > 1L ? 1 : (j == 1L ? 0 : -1)) > 0 ? j : true) == true ? 1L : 0L) * i2)));
    }

    /* renamed from: b */
    public static C4771a m21812b() {
        return new C4771a();
    }

    /* renamed from: d */
    static SchedulerConfig m21810d(AbstractC4746a abstractC4746a, Map<Priority, AbstractC4772b> map) {
        return new C4776c(abstractC4746a, map);
    }

    /* renamed from: f */
    public static SchedulerConfig m21809f(AbstractC4746a abstractC4746a) {
        return m21812b().m21805a(Priority.DEFAULT, AbstractC4772b.m21802a().mo21793b(30000L).mo21791d(86400000L).mo21794a()).m21805a(Priority.HIGHEST, AbstractC4772b.m21802a().mo21793b(1000L).mo21791d(86400000L).mo21794a()).m21805a(Priority.VERY_LOW, AbstractC4772b.m21802a().mo21793b(86400000L).mo21791d(86400000L).mo21792c(m21807i(Flag.NETWORK_UNMETERED, Flag.DEVICE_IDLE)).mo21794a()).m21803c(abstractC4746a).m21804b();
    }

    /* renamed from: i */
    private static <T> Set<T> m21807i(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }

    /* renamed from: j */
    private void m21806j(JobInfo.Builder builder, Set<Flag> set) {
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
    public JobInfo.Builder m21811c(JobInfo.Builder builder, Priority priority, long j, int i) {
        builder.setMinimumLatency(m21808g(priority, j, i));
        m21806j(builder, mo21798h().get(priority).mo21796c());
        return builder;
    }

    /* renamed from: e */
    public abstract AbstractC4746a mo21799e();

    /* renamed from: g */
    public long m21808g(Priority priority, long j, int i) {
        long mo21847a = mo21799e().mo21847a();
        AbstractC4772b abstractC4772b = mo21798h().get(priority);
        return Math.min(Math.max(m21813a(i, abstractC4772b.mo21797b()), j - mo21847a), abstractC4772b.mo21795d());
    }

    /* renamed from: h */
    public abstract Map<Priority, AbstractC4772b> mo21798h();
}
