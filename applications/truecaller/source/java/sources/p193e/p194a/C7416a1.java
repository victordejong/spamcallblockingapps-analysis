package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.searchwarnings.supernova.SetSupernovaSettingsWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
/* renamed from: e.a.a1 */
/* loaded from: classes4-dex2jar.jar:e/a/a1.class */
public class C7416a1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f23558a;

    public C7416a1(C19813r1 c19813r1) {
        this.f23558a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        return new SetSupernovaSettingsWorker(context, workerParameters, this.f23558a.f55161P.m12283mc());
    }
}
