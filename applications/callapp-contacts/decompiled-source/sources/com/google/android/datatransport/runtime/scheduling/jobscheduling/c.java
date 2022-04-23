package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.d;
import com.google.android.datatransport.runtime.d.a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.g;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/c.class */
public final class c extends g {

    /* renamed from: a  reason: collision with root package name */
    private final a f20551a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<d, g.b> f20552b;

    public c(a aVar, Map<d, g.b> map) {
        Objects.requireNonNull(aVar, "Null clock");
        this.f20551a = aVar;
        Objects.requireNonNull(map, "Null values");
        this.f20552b = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g
    public final a a() {
        return this.f20551a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.g
    public final Map<d, g.b> b() {
        return this.f20552b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f20551a.equals(gVar.a()) && this.f20552b.equals(gVar.b());
    }

    public final int hashCode() {
        return ((this.f20551a.hashCode() ^ 1000003) * 1000003) ^ this.f20552b.hashCode();
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f20551a + ", values=" + this.f20552b + "}";
    }
}
