package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Objects;
import java.util.Set;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.d */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/d.class */
final class C4777d extends SchedulerConfig.AbstractC4772b {

    /* renamed from: a */
    private final long f14396a;

    /* renamed from: b */
    private final long f14397b;

    /* renamed from: c */
    private final Set<SchedulerConfig.Flag> f14398c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/d$b.class */
    public static final class C4779b extends SchedulerConfig.AbstractC4772b.AbstractC4773a {

        /* renamed from: a */
        private Long f14399a;

        /* renamed from: b */
        private Long f14400b;

        /* renamed from: c */
        private Set<SchedulerConfig.Flag> f14401c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC4772b.AbstractC4773a
        /* renamed from: a */
        public SchedulerConfig.AbstractC4772b mo21794a() {
            String str = "";
            if (this.f14399a == null) {
                str = " delta";
            }
            String str2 = str;
            if (this.f14400b == null) {
                str2 = str + " maxAllowedDelay";
            }
            String str3 = str2;
            if (this.f14401c == null) {
                str3 = str2 + " flags";
            }
            if (str3.isEmpty()) {
                return new C4777d(this.f14399a.longValue(), this.f14400b.longValue(), this.f14401c);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC4772b.AbstractC4773a
        /* renamed from: b */
        public SchedulerConfig.AbstractC4772b.AbstractC4773a mo21793b(long j) {
            this.f14399a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC4772b.AbstractC4773a
        /* renamed from: c */
        public SchedulerConfig.AbstractC4772b.AbstractC4773a mo21792c(Set<SchedulerConfig.Flag> set) {
            Objects.requireNonNull(set, "Null flags");
            this.f14401c = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC4772b.AbstractC4773a
        /* renamed from: d */
        public SchedulerConfig.AbstractC4772b.AbstractC4773a mo21791d(long j) {
            this.f14400b = Long.valueOf(j);
            return this;
        }
    }

    private C4777d(long j, long j2, Set<SchedulerConfig.Flag> set) {
        this.f14396a = j;
        this.f14397b = j2;
        this.f14398c = set;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC4772b
    /* renamed from: b */
    public long mo21797b() {
        return this.f14396a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC4772b
    /* renamed from: c */
    public Set<SchedulerConfig.Flag> mo21796c() {
        return this.f14398c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC4772b
    /* renamed from: d */
    public long mo21795d() {
        return this.f14397b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.AbstractC4772b)) {
            return false;
        }
        SchedulerConfig.AbstractC4772b abstractC4772b = (SchedulerConfig.AbstractC4772b) obj;
        if (this.f14396a != abstractC4772b.mo21797b() || this.f14397b != abstractC4772b.mo21795d() || !this.f14398c.equals(abstractC4772b.mo21796c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f14396a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f14397b;
        return this.f14398c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f14396a + ", maxAllowedDelay=" + this.f14397b + ", flags=" + this.f14398c + "}";
    }
}
