package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.ugc.EnhancedSearchStateWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p1079n5.AbstractC18498g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
/* renamed from: e.a.n1 */
/* loaded from: classes4-dex2jar.jar:e/a/n1.class */
public class C18463n1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f52145a;

    public C18463n1(C19813r1 c19813r1) {
        this.f52145a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f52145a.f55161P;
        return new EnhancedSearchStateWorker(context, workerParameters, (AbstractC8432l) c19813r1.f55313X.get(), (AbstractC18498g) c19813r1.f55609m1.get());
    }
}
