package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.businesscard.BusinessCardBackgroundWorker;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p677d3.AbstractC12583b;
import p193e.p194a.p677d3.AbstractC12585d;
/* renamed from: e.a.k1 */
/* loaded from: classes4-dex2jar.jar:e/a/k1.class */
public class C16443k1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f46187a;

    public C16443k1(C19813r1 c19813r1) {
        this.f46187a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f46187a.f55161P;
        return new BusinessCardBackgroundWorker(context, workerParameters, (AbstractC8432l) c19813r1.f55313X.get(), c19813r1.mo12750E3(), (AbstractC12585d) c19813r1.f55733s5.get(), (AbstractC12583b) c19813r1.f55673p5.get(), (AbstractC8541a) c19813r1.f55332Y.get());
    }
}
