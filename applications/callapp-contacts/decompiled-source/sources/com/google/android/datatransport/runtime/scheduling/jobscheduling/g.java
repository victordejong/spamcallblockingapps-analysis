package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import com.google.android.datatransport.d;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.d;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g.class */
public abstract class g {

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public com.google.android.datatransport.runtime.d.a f20564a;

        /* renamed from: b  reason: collision with root package name */
        public Map<d, b> f20565b = new HashMap();

        public final a a(d dVar, b bVar) {
            this.f20565b.put(dVar, bVar);
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$b.class */
    public static abstract class b {

        /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$b$a.class */
        public static abstract class a {
            public abstract a a();

            public abstract a a(long j);

            public abstract a a(Set<c> set);

            public abstract b b();
        }

        public static a d() {
            return new d.a().a(Collections.emptySet());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Set<c> c();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/g$c.class */
    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    private static long a(int i, long j) {
        int i2;
        return (long) (Math.pow(3.0d, i - 1) * j * Math.max(1.0d, Math.log(10000.0d) / Math.log((j > 1 ? j : 2) * i2)));
    }

    private static void a(JobInfo.Builder builder, Set<c> set) {
        if (set.contains(c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    public final long a(com.google.android.datatransport.d dVar, long j, int i) {
        long a2 = a().a();
        b bVar = b().get(dVar);
        return Math.min(Math.max(a(i, bVar.a()), j - a2), bVar.b());
    }

    public final JobInfo.Builder a(JobInfo.Builder builder, com.google.android.datatransport.d dVar, long j, int i) {
        builder.setMinimumLatency(a(dVar, j, i));
        a(builder, b().get(dVar).c());
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract com.google.android.datatransport.runtime.d.a a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Map<com.google.android.datatransport.d, b> b();
}
