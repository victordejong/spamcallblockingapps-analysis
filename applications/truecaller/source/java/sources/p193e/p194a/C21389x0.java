package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.insights.workers.InsightsResyncEventLogWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p437c.p524b.AbstractC9691j;
/* renamed from: e.a.x0 */
/* loaded from: classes4-dex2jar.jar:e/a/x0.class */
public class C21389x0 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f59853a;

    public C21389x0(C19813r1 c19813r1) {
        this.f59853a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f59853a.f55161P;
        return new InsightsResyncEventLogWorker(context, workerParameters, (AbstractC19462a) c19813r1.f55237T.get(), (C20592g) c19813r1.f55219S0.get(), (AbstractC9691j) c19813r1.f55007H3.get(), c19813r1.m12461Za());
    }
}
