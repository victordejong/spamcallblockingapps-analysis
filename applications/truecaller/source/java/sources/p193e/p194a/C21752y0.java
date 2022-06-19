package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.voip.notification.missed.MissedVoipCallsWorker;
import java.util.Objects;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p619d.p637c0.C11433m0;
import p193e.p194a.p619d.p666y.p669c.C12316d;
import p193e.p194a.p619d.p666y.p669c.C12323j;
import p193e.p194a.p682e.C12864a2;
/* renamed from: e.a.y0 */
/* loaded from: classes4-dex2jar.jar:e/a/y0.class */
public class C21752y0 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f60579a;

    public C21752y0(C19813r1 c19813r1) {
        this.f60579a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f60579a.f55161P;
        Objects.requireNonNull(c19813r1);
        MissedVoipCallsWorker missedVoipCallsWorker = new MissedVoipCallsWorker(context, workerParameters);
        missedVoipCallsWorker.f16389a = new C12323j(C12864a2.m22570X(c19813r1.f55467f), C12864a2.m22571W(c19813r1.f55467f), new C12316d(c19813r1.mo12335j(), c19813r1.m12499Wc()), new C11433m0(c19813r1.mo12335j(), C12864a2.m22572V(c19813r1.f55467f)));
        missedVoipCallsWorker.f16390b = c19813r1.m12499Wc();
        return missedVoipCallsWorker;
    }
}
