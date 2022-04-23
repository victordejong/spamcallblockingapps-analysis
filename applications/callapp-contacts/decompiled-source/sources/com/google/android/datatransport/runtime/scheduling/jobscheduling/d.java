package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/d.class */
final class d extends g.b {

    /* renamed from: a  reason: collision with root package name */
    private final long f20553a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20554b;

    /* renamed from: c  reason: collision with root package name */
    private final Set<g.c> f20555c;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/d$a.class */
    static final class a extends g.b.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f20556a;

        /* renamed from: b  reason: collision with root package name */
        private Long f20557b;

        /* renamed from: c  reason: collision with root package name */
        private Set<g.c> f20558c;

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public final g.b.a a() {
            this.f20557b = 86400000L;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public final g.b.a a(long j) {
            this.f20556a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public final g.b.a a(Set<g.c> set) {
            Objects.requireNonNull(set, "Null flags");
            this.f20558c = set;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b.a
        public final g.b b() {
            String str = "";
            if (this.f20556a == null) {
                str = " delta";
            }
            String str2 = str;
            if (this.f20557b == null) {
                str2 = str + " maxAllowedDelay";
            }
            String str3 = str2;
            if (this.f20558c == null) {
                str3 = str2 + " flags";
            }
            if (str3.isEmpty()) {
                return new d(this.f20556a.longValue(), this.f20557b.longValue(), this.f20558c);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str3)));
        }
    }

    private d(long j, long j2, Set<g.c> set) {
        this.f20553a = j;
        this.f20554b = j2;
        this.f20555c = set;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    final long a() {
        return this.f20553a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    final long b() {
        return this.f20554b;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g.b
    final Set<g.c> c() {
        return this.f20555c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g.b)) {
            return false;
        }
        g.b bVar = (g.b) obj;
        return this.f20553a == bVar.a() && this.f20554b == bVar.b() && this.f20555c.equals(bVar.c());
    }

    public final int hashCode() {
        long j = this.f20553a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f20554b;
        return this.f20555c.hashCode() ^ ((((i ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f20553a + ", maxAllowedDelay=" + this.f20554b + ", flags=" + this.f20555c + "}";
    }
}
