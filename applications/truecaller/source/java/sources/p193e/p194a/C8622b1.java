package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.videocallerid.worker.ShareVideoUpdateWorker;
import java.util.Objects;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p947k.p969c.C16023l0;
/* renamed from: e.a.b1 */
/* loaded from: classes4-dex2jar.jar:e/a/b1.class */
public class C8622b1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f26474a;

    public C8622b1(C19813r1 c19813r1) {
        this.f26474a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f26474a.f55161P;
        Objects.requireNonNull(c19813r1);
        ShareVideoUpdateWorker shareVideoUpdateWorker = new ShareVideoUpdateWorker(context, workerParameters);
        shareVideoUpdateWorker.f16216a = c19813r1.m12700Hc();
        shareVideoUpdateWorker.f16217b = (C20592g) c19813r1.f55219S0.get();
        shareVideoUpdateWorker.f16218c = (AbstractC19462a) c19813r1.f55237T.get();
        shareVideoUpdateWorker.f16219d = new C16023l0(c19813r1.m12647Lc(), c19813r1.m12660Kc(), c19813r1.m12191tb(), c19813r1.mo12335j(), c19813r1.m12700Hc());
        return shareVideoUpdateWorker;
    }
}
