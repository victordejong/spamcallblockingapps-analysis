package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.insights.workers.InsightsOneOffEnrichmentWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p552i.p556d.AbstractC10315a;
/* renamed from: e.a.p1 */
/* loaded from: classes4-dex2jar.jar:e/a/p1.class */
public class C19203p1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f53572a;

    public C19203p1(C19813r1 c19813r1) {
        this.f53572a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f53572a.f55161P;
        return new InsightsOneOffEnrichmentWorker(context, workerParameters, (AbstractC19462a) c19813r1.f55237T.get(), (C20592g) c19813r1.f55219S0.get(), (AbstractC10315a) c19813r1.f55617m9.get(), c19813r1.m12461Za(), (AbstractC9691j) c19813r1.f55007H3.get());
    }
}
