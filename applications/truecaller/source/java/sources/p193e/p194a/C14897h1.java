package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.contactfeedback.workers.AddContactFeedbackWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p1129p5.C19224d;
/* renamed from: e.a.h1 */
/* loaded from: classes4-dex2jar.jar:e/a/h1.class */
public class C14897h1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f42595a;

    public C14897h1(C19813r1 c19813r1) {
        this.f42595a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f42595a.f55161P;
        return new AddContactFeedbackWorker(context, workerParameters, new C19224d(), c19813r1.m12569R9(), c19813r1.mo12572R6());
    }
}
