package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Set;
/* renamed from: c.d.b.b.i.y.j.d */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/d.class */
public final class C2617d extends SchedulerConfig.AbstractC7119b {

    /* renamed from: a */
    public final long f9697a;

    /* renamed from: b */
    public final long f9698b;

    /* renamed from: c */
    public final Set<SchedulerConfig.Flag> f9699c;

    /* renamed from: c.d.b.b.i.y.j.d$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/d$b.class */
    public static final class C2619b extends SchedulerConfig.AbstractC7119b.AbstractC7120a {

        /* renamed from: a */
        public Long f9700a;

        /* renamed from: b */
        public Long f9701b;

        /* renamed from: c */
        public Set<SchedulerConfig.Flag> f9702c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC7119b.AbstractC7120a
        /* renamed from: a */
        public SchedulerConfig.AbstractC7119b.AbstractC7120a mo18717a(long j) {
            this.f9700a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC7119b.AbstractC7120a
        /* renamed from: a */
        public SchedulerConfig.AbstractC7119b.AbstractC7120a mo18716a(Set<SchedulerConfig.Flag> set) {
            if (set != null) {
                this.f9702c = set;
                return this;
            }
            throw new NullPointerException("Null flags");
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC7119b.AbstractC7120a
        /* renamed from: a */
        public SchedulerConfig.AbstractC7119b mo18718a() {
            String str = "";
            if (this.f9700a == null) {
                str = " delta";
            }
            String str2 = str;
            if (this.f9701b == null) {
                str2 = str + " maxAllowedDelay";
            }
            String str3 = str2;
            if (this.f9702c == null) {
                str3 = str2 + " flags";
            }
            if (str3.isEmpty()) {
                return new C2617d(this.f9700a.longValue(), this.f9701b.longValue(), this.f9702c);
            }
            throw new IllegalStateException("Missing required properties:" + str3);
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC7119b.AbstractC7120a
        /* renamed from: b */
        public SchedulerConfig.AbstractC7119b.AbstractC7120a mo18715b(long j) {
            this.f9701b = Long.valueOf(j);
            return this;
        }
    }

    public C2617d(long j, long j2, Set<SchedulerConfig.Flag> set) {
        this.f9697a = j;
        this.f9698b = j2;
        this.f9699c = set;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC7119b
    /* renamed from: a */
    public long mo18722a() {
        return this.f9697a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC7119b
    /* renamed from: b */
    public Set<SchedulerConfig.Flag> mo18721b() {
        return this.f9699c;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig.AbstractC7119b
    /* renamed from: c */
    public long mo18720c() {
        return this.f9698b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig.AbstractC7119b)) {
            return false;
        }
        SchedulerConfig.AbstractC7119b bVar = (SchedulerConfig.AbstractC7119b) obj;
        if (!(this.f9697a == bVar.mo18722a() && this.f9698b == bVar.mo18720c() && this.f9699c.equals(bVar.mo18721b()))) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f9697a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f9698b;
        return this.f9699c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f9697a + ", maxAllowedDelay=" + this.f9698b + ", flags=" + this.f9699c + "}";
    }
}
