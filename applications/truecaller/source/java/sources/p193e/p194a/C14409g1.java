package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.contactfeedback.workers.VoteCommentWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
/* renamed from: e.a.g1 */
/* loaded from: classes4-dex2jar.jar:e/a/g1.class */
public class C14409g1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f41556a;

    public C14409g1(C19813r1 c19813r1) {
        this.f41556a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        return new VoteCommentWorker(context, workerParameters, this.f41556a.f55161P.m12636M9());
    }
}
