package p193e.p194a;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.truecaller.messaging.defaultsms.DmaAdsWorker;
import java.util.Objects;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p195a.p280s0.AbstractC7258j;
/* renamed from: e.a.m1 */
/* loaded from: classes4-dex2jar.jar:e/a/m1.class */
public class C18141m1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f51052a;

    public C18141m1(C19813r1 c19813r1) {
        this.f51052a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f51052a.f55161P;
        Objects.requireNonNull(c19813r1);
        DmaAdsWorker dmaAdsWorker = new DmaAdsWorker(context, workerParameters);
        dmaAdsWorker.f13487d = (AbstractC7258j) c19813r1.f55438da.get();
        return dmaAdsWorker;
    }
}
