package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import com.google.android.datatransport.EnumC10676d;
import com.google.android.datatransport.runtime.p320d.AbstractC10719a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.C10803d;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g.class */
public abstract class AbstractC10808g {

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$a.class */
    public static final class C10809a {

        /* renamed from: a */
        public AbstractC10719a f34726a;

        /* renamed from: b */
        public Map<EnumC10676d, AbstractC10810b> f34727b = new HashMap();

        /* renamed from: a */
        public final C10809a m22342a(EnumC10676d enumC10676d, AbstractC10810b abstractC10810b) {
            this.f34727b.put(enumC10676d, abstractC10810b);
            return this;
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$b.class */
    public static abstract class AbstractC10810b {

        /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g$b$a */
        /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a.class */
        public static abstract class AbstractC10811a {
            /* renamed from: a */
            public abstract AbstractC10811a mo22337a();

            /* renamed from: a */
            public abstract AbstractC10811a mo22336a(long j);

            /* renamed from: a */
            public abstract AbstractC10811a mo22335a(Set<EnumC10812c> set);

            /* renamed from: b */
            public abstract AbstractC10810b mo22334b();
        }

        /* renamed from: d */
        public static AbstractC10811a m22338d() {
            return new C10803d.C10805a().mo22335a(Collections.emptySet());
        }

        /* renamed from: a */
        public abstract long mo22341a();

        /* renamed from: b */
        public abstract long mo22340b();

        /* renamed from: c */
        public abstract Set<EnumC10812c> mo22339c();
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.g$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$c.class */
    public enum EnumC10812c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    private static long m22347a(int i, long j) {
        int i2;
        return (long) (Math.pow(3.0d, i - 1) * ((double) j) * Math.max(1.0d, Math.log(10000.0d) / Math.log((((j > 1L ? 1 : (j == 1L ? 0 : -1)) > 0 ? j : true) == true ? 1L : 0L) * i2)));
    }

    /* renamed from: a */
    private static void m22345a(JobInfo.Builder builder, Set<EnumC10812c> set) {
        if (set.contains(EnumC10812c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(EnumC10812c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(EnumC10812c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    /* renamed from: a */
    public final long m22344a(EnumC10676d enumC10676d, long j, int i) {
        long mo22491a = mo22348a().mo22491a();
        AbstractC10810b abstractC10810b = mo22343b().get(enumC10676d);
        return Math.min(Math.max(m22347a(i, abstractC10810b.mo22341a()), j - mo22491a), abstractC10810b.mo22340b());
    }

    /* renamed from: a */
    public final JobInfo.Builder m22346a(JobInfo.Builder builder, EnumC10676d enumC10676d, long j, int i) {
        builder.setMinimumLatency(m22344a(enumC10676d, j, i));
        m22345a(builder, mo22343b().get(enumC10676d).mo22339c());
        return builder;
    }

    /* renamed from: a */
    public abstract AbstractC10719a mo22348a();

    /* renamed from: b */
    public abstract Map<EnumC10676d, AbstractC10810b> mo22343b();
}
