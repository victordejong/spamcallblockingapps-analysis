package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.searchwarnings.supernova.GetSupernovaSettingsWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
/* renamed from: e.a.o1 */
/* loaded from: classes4-dex2jar.jar:e/a/o1.class */
public class C18891o1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f52995a;

    public C18891o1(C19813r1 c19813r1) {
        this.f52995a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f52995a.f55161P;
        return new GetSupernovaSettingsWorker(context, workerParameters, c19813r1.m12283mc(), (AbstractC8541a) c19813r1.f55332Y.get());
    }
}
