package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.contactfeedback.workers.CommentFeedbackUploadWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
/* renamed from: e.a.l1 */
/* loaded from: classes4-dex2jar.jar:e/a/l1.class */
public class C17398l1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f48743a;

    public C17398l1(C19813r1 c19813r1) {
        this.f48743a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        return new CommentFeedbackUploadWorker(context, workerParameters, this.f48743a.f55161P.m12569R9());
    }
}
