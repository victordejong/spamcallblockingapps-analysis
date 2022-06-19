package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g;
import java.util.Objects;
import java.util.Set;
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/d.class */
final class C10803d extends AbstractC10808g.AbstractC10810b {

    /* renamed from: a */
    private final long f34715a;

    /* renamed from: b */
    private final long f34716b;

    /* renamed from: c */
    private final Set<AbstractC10808g.EnumC10812c> f34717c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/d$a.class */
    public static final class C10805a extends AbstractC10808g.AbstractC10810b.AbstractC10811a {

        /* renamed from: a */
        private Long f34718a;

        /* renamed from: b */
        private Long f34719b;

        /* renamed from: c */
        private Set<AbstractC10808g.EnumC10812c> f34720c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g.AbstractC10810b.AbstractC10811a
        /* renamed from: a */
        public final AbstractC10808g.AbstractC10810b.AbstractC10811a mo22337a() {
            this.f34719b = 86400000L;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g.AbstractC10810b.AbstractC10811a
        /* renamed from: a */
        public final AbstractC10808g.AbstractC10810b.AbstractC10811a mo22336a(long j) {
            this.f34718a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g.AbstractC10810b.AbstractC10811a
        /* renamed from: a */
        public final AbstractC10808g.AbstractC10810b.AbstractC10811a mo22335a(Set<AbstractC10808g.EnumC10812c> set) {
            Objects.requireNonNull(set, "Null flags");
            this.f34720c = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g.AbstractC10810b.AbstractC10811a
        /* renamed from: b */
        public final AbstractC10808g.AbstractC10810b mo22334b() {
            String str = "";
            if (this.f34718a == null) {
                str = " delta";
            }
            String str2 = str;
            if (this.f34719b == null) {
                str2 = str + " maxAllowedDelay";
            }
            String str3 = str2;
            if (this.f34720c == null) {
                str3 = str2 + " flags";
            }
            if (str3.isEmpty()) {
                return new C10803d(this.f34718a.longValue(), this.f34719b.longValue(), this.f34720c);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str3)));
        }
    }

    private C10803d(long j, long j2, Set<AbstractC10808g.EnumC10812c> set) {
        this.f34715a = j;
        this.f34716b = j2;
        this.f34717c = set;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g.AbstractC10810b
    /* renamed from: a */
    public final long mo22341a() {
        return this.f34715a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g.AbstractC10810b
    /* renamed from: b */
    public final long mo22340b() {
        return this.f34716b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.AbstractC10808g.AbstractC10810b
    /* renamed from: c */
    public final Set<AbstractC10808g.EnumC10812c> mo22339c() {
        return this.f34717c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10808g.AbstractC10810b)) {
            return false;
        }
        AbstractC10808g.AbstractC10810b abstractC10810b = (AbstractC10808g.AbstractC10810b) obj;
        return this.f34715a == abstractC10810b.mo22341a() && this.f34716b == abstractC10810b.mo22340b() && this.f34717c.equals(abstractC10810b.mo22339c());
    }

    public final int hashCode() {
        long j = this.f34715a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f34716b;
        return this.f34717c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f34715a + ", maxAllowedDelay=" + this.f34716b + ", flags=" + this.f34717c + "}";
    }
}
