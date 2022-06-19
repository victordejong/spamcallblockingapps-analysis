package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.datatransport.runtime.scheduling.jobscheduling.c */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/c.class */
public final class C4776c extends SchedulerConfig {

    /* renamed from: a */
    private final AbstractC4746a f14394a;

    /* renamed from: b */
    private final Map<Priority, SchedulerConfig.AbstractC4772b> f14395b;

    public C4776c(AbstractC4746a abstractC4746a, Map<Priority, SchedulerConfig.AbstractC4772b> map) {
        Objects.requireNonNull(abstractC4746a, "Null clock");
        this.f14394a = abstractC4746a;
        Objects.requireNonNull(map, "Null values");
        this.f14395b = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    /* renamed from: e */
    public AbstractC4746a mo21799e() {
        return this.f14394a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SchedulerConfig)) {
            return false;
        }
        SchedulerConfig schedulerConfig = (SchedulerConfig) obj;
        if (!this.f14394a.equals(schedulerConfig.mo21799e()) || !this.f14395b.equals(schedulerConfig.mo21798h())) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    /* renamed from: h */
    public Map<Priority, SchedulerConfig.AbstractC4772b> mo21798h() {
        return this.f14395b;
    }

    public int hashCode() {
        return ((this.f14394a.hashCode() ^ 1000003) * 1000003) ^ this.f14395b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f14394a + ", values=" + this.f14395b + "}";
    }
}
