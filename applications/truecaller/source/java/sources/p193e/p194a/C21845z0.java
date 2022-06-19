package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.surveys.data.PostSurveyAnswersWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p918j.p930c.AbstractC15446b;
/* renamed from: e.a.z0 */
/* loaded from: classes4-dex2jar.jar:e/a/z0.class */
public class C21845z0 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f60726a;

    public C21845z0(C19813r1 c19813r1) {
        this.f60726a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        return new PostSurveyAnswersWorker(context, workerParameters, (AbstractC15446b) this.f60726a.f55161P.f55738sa.get());
    }
}
