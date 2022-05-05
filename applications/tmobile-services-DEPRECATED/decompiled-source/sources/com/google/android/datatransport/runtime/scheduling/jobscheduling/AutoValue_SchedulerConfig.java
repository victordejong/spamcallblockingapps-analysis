package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import com.google.android.datatransport.runtime.time.Clock;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/jobscheduling/AutoValue_SchedulerConfig.class */
final class AutoValue_SchedulerConfig extends SchedulerConfig {

    /* renamed from: a */
    private final Clock f6714a;

    /* renamed from: b */
    private final Map<Priority, SchedulerConfig.ConfigValue> f6715b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AutoValue_SchedulerConfig(Clock clock, Map<Priority, SchedulerConfig.ConfigValue> map) {
        if (clock != null) {
            this.f6714a = clock;
            if (map != null) {
                this.f6715b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    /* renamed from: e */
    Clock mo15342e() {
        return this.f6714a;
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
        if (!this.f6714a.equals(schedulerConfig.mo15342e()) || !this.f6715b.equals(schedulerConfig.mo15339h())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    /* renamed from: h */
    Map<Priority, SchedulerConfig.ConfigValue> mo15339h() {
        return this.f6715b;
    }

    public int hashCode() {
        return ((this.f6714a.hashCode() ^ 1000003) * 1000003) ^ this.f6715b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f6714a + ", values=" + this.f6715b + "}";
    }
}
