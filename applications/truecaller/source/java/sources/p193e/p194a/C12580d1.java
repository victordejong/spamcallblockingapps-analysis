package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.contactfeedback.workers.UploadContactFeedbackWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
/* renamed from: e.a.d1 */
/* loaded from: classes4-dex2jar.jar:e/a/d1.class */
public class C12580d1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f36716a;

    public C12580d1(C19813r1 c19813r1) {
        this.f36716a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        return new UploadContactFeedbackWorker(context, workerParameters, this.f36716a.f55161P.m12569R9());
    }
}
