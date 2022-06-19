package com.truecaller.background_work.persistence;

import androidx.annotation.Keep;
import com.truecaller.background_work.WorkActionPeriod;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.C21761g;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001a\b\u0081\b\u0018�� #2\u00020\u0001:\u0001$B'\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\b\u0012\u0006\u0010\u0011\u001a\u00020\u000b¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ8\u0010\u0012\u001a\u00020��2\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\b2\b\b\u0002\u0010\u0011\u001a\u00020\u000bHÆ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0015\u0010\rJ\u001a\u0010\u0017\u001a\u00020\b2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0019\u0010\u000f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007R\u0019\u0010\u0010\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001b\u001a\u0004\b\u001c\u0010\nR\u0019\u0010\u0011\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001d\u001a\u0004\b\u001e\u0010\rR\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001f\u001a\u0004\b \u0010\u0004¨\u0006%"}, d2 = {"Lcom/truecaller/background_work/persistence/WorkActionRetryResult;", "", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/background_work/WorkActionPeriod;", "component2", "()Lcom/truecaller/background_work/WorkActionPeriod;", "", "component3", "()Z", "", "component4", "()I", "actionName", "period", "internetRequired", "retriedTimes", "copy", "(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)Lcom/truecaller/background_work/persistence/WorkActionRetryResult;", "toString", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/background_work/WorkActionPeriod;", "getPeriod", "Z", "getInternetRequired", "I", "getRetriedTimes", "Ljava/lang/String;", "getActionName", "<init>", "(Ljava/lang/String;Lcom/truecaller/background_work/WorkActionPeriod;ZI)V", "Companion", "a", "background-work_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/persistence/WorkActionRetryResult.class */
public final class WorkActionRetryResult {
    public static final C3464a Companion = new C3464a(null);
    private final String actionName;
    private final boolean internetRequired;
    private final WorkActionPeriod period;
    private final int retriedTimes;

    /* renamed from: com.truecaller.background_work.persistence.WorkActionRetryResult$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/persistence/WorkActionRetryResult$a.class */
    public static final class C3464a {
        public C3464a(f fVar) {
        }

        /* renamed from: a */
        public final List<WorkActionRetryResult> m35888a(List<String> list, C21761g c21761g) {
            l.e(list, "names");
            l.e(c21761g, "bucket");
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (String str : list) {
                arrayList.add(new WorkActionRetryResult(str, c21761g.f60598b, c21761g.f60599c, 0));
            }
            return arrayList;
        }
    }

    public WorkActionRetryResult(String str, WorkActionPeriod workActionPeriod, boolean z, int i) {
        l.e(str, "actionName");
        l.e(workActionPeriod, "period");
        this.actionName = str;
        this.period = workActionPeriod;
        this.internetRequired = z;
        this.retriedTimes = i;
    }

    public static /* synthetic */ WorkActionRetryResult copy$default(WorkActionRetryResult workActionRetryResult, String str, WorkActionPeriod workActionPeriod, boolean z, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = workActionRetryResult.actionName;
        }
        if ((i2 & 2) != 0) {
            workActionPeriod = workActionRetryResult.period;
        }
        if ((i2 & 4) != 0) {
            z = workActionRetryResult.internetRequired;
        }
        if ((i2 & 8) != 0) {
            i = workActionRetryResult.retriedTimes;
        }
        return workActionRetryResult.copy(str, workActionPeriod, z, i);
    }

    public static final List<WorkActionRetryResult> fromActionNames(List<String> list, C21761g c21761g) {
        return Companion.m35888a(list, c21761g);
    }

    public final String component1() {
        return this.actionName;
    }

    public final WorkActionPeriod component2() {
        return this.period;
    }

    public final boolean component3() {
        return this.internetRequired;
    }

    public final int component4() {
        return this.retriedTimes;
    }

    public final WorkActionRetryResult copy(String str, WorkActionPeriod workActionPeriod, boolean z, int i) {
        l.e(str, "actionName");
        l.e(workActionPeriod, "period");
        return new WorkActionRetryResult(str, workActionPeriod, z, i);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof WorkActionRetryResult)) {
                return false;
            }
            WorkActionRetryResult workActionRetryResult = (WorkActionRetryResult) obj;
            return l.a(this.actionName, workActionRetryResult.actionName) && l.a(this.period, workActionRetryResult.period) && this.internetRequired == workActionRetryResult.internetRequired && this.retriedTimes == workActionRetryResult.retriedTimes;
        }
        return true;
    }

    public final String getActionName() {
        return this.actionName;
    }

    public final boolean getInternetRequired() {
        return this.internetRequired;
    }

    public final WorkActionPeriod getPeriod() {
        return this.period;
    }

    public final int getRetriedTimes() {
        return this.retriedTimes;
    }

    public int hashCode() {
        String str = this.actionName;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        WorkActionPeriod workActionPeriod = this.period;
        if (workActionPeriod != null) {
            i = workActionPeriod.hashCode();
        }
        boolean z = this.internetRequired;
        int i2 = z ? 1 : 0;
        if (z) {
            i2 = 1;
        }
        return (((((hashCode * 31) + i) * 31) + i2) * 31) + this.retriedTimes;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WorkActionRetryResult(actionName=");
        m8728C.append(this.actionName);
        m8728C.append(", period=");
        m8728C.append(this.period);
        m8728C.append(", internetRequired=");
        m8728C.append(this.internetRequired);
        m8728C.append(", retriedTimes=");
        return C22128a.m8697J2(m8728C, this.retriedTimes, ")");
    }
}
