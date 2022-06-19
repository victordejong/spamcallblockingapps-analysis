package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.videocallerid.worker.VideoCallerIdCachingWorker;
import java.util.Objects;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p981q.AbstractC16268e;
/* renamed from: e.a.e1 */
/* loaded from: classes4-dex2jar.jar:e/a/e1.class */
public class C13346e1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f38757a;

    public C13346e1(C19813r1 c19813r1) {
        this.f38757a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f38757a.f55161P;
        Objects.requireNonNull(c19813r1);
        VideoCallerIdCachingWorker videoCallerIdCachingWorker = new VideoCallerIdCachingWorker(context, workerParameters);
        videoCallerIdCachingWorker.f16222a = (AbstractC19462a) c19813r1.f55237T.get();
        videoCallerIdCachingWorker.f16223b = (C20592g) c19813r1.f55219S0.get();
        videoCallerIdCachingWorker.f16224c = (AbstractC16044q) c19813r1.f55714r6.get();
        videoCallerIdCachingWorker.f16225d = c19813r1.m12686Ic();
        videoCallerIdCachingWorker.f16226e = c19813r1.m12799A9();
        videoCallerIdCachingWorker.f16227f = (AbstractC16268e) c19813r1.f55754t6.get();
        return videoCallerIdCachingWorker;
    }
}
