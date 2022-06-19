package p193e.p194a.p1392y2.p1393p;

import com.truecaller.background_work.WorkActionPeriod;
import com.truecaller.background_work.persistence.WorkActionRetryResult;
import java.util.Collection;
import java.util.List;
import p193e.p194a.p1392y2.C21761g;
import s1.z.c.l;
/* renamed from: e.a.y2.p.c */
/* loaded from: classes5-dex2jar.jar:e/a/y2/p/c.class */
public abstract class AbstractC21776c {
    /* renamed from: a */
    public abstract void mo9093a(List<String> list, WorkActionPeriod workActionPeriod, boolean z);

    /* renamed from: b */
    public abstract void mo9092b(WorkActionPeriod workActionPeriod, boolean z);

    /* renamed from: c */
    public abstract List<WorkActionRetryResult> mo9091c(WorkActionPeriod workActionPeriod, boolean z, Collection<String> collection);

    /* renamed from: d */
    public abstract void mo9090d(WorkActionPeriod workActionPeriod, boolean z, List<String> list);

    /* renamed from: e */
    public abstract void mo9089e(List<WorkActionRetryResult> list);

    /* renamed from: f */
    public void mo9088f(List<String> list, C21761g c21761g) {
        l.e(list, "actionNames");
        l.e(c21761g, "bucket");
        mo9090d(c21761g.f60598b, c21761g.f60599c, list);
        mo9089e(WorkActionRetryResult.Companion.m35888a(list, c21761g));
    }
}
