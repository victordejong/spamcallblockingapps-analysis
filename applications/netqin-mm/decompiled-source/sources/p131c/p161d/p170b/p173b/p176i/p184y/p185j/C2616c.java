package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig;
import java.util.Map;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
/* renamed from: c.d.b.b.i.y.j.c */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/c.class */
public final class C2616c extends SchedulerConfig {

    /* renamed from: a */
    public final AbstractC2541a f9695a;

    /* renamed from: b */
    public final Map<Priority, SchedulerConfig.AbstractC7119b> f9696b;

    public C2616c(AbstractC2541a aVar, Map<Priority, SchedulerConfig.AbstractC7119b> map) {
        if (aVar != null) {
            this.f9695a = aVar;
            if (map != null) {
                this.f9696b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    /* renamed from: a */
    public AbstractC2541a mo18735a() {
        return this.f9695a;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.jobscheduling.SchedulerConfig
    /* renamed from: b */
    public Map<Priority, SchedulerConfig.AbstractC7119b> mo18727b() {
        return this.f9696b;
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
        if (!this.f9695a.equals(schedulerConfig.mo18735a()) || !this.f9696b.equals(schedulerConfig.mo18727b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f9695a.hashCode() ^ 1000003) * 1000003) ^ this.f9696b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f9695a + ", values=" + this.f9696b + "}";
    }
}
