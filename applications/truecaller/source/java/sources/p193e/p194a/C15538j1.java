package p193e.p194a;

import android.content.Context;
import android.content.Intent;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import com.truecaller.backup.worker.BackupWorker;
import com.truecaller.common.network.util.KnownEndpoints;
import java.util.Objects;
import javax.inject.Provider;
import p1727n3.p1861s.p1862a.AbstractC26979b;
import p193e.p194a.p1066n.AbstractC18319d2;
import p193e.p194a.p1066n.AbstractC18321e0;
import p193e.p194a.p1066n.AbstractC18380m;
import p193e.p194a.p1066n.AbstractC18435u;
import p193e.p194a.p1066n.p1069l2.C18370c;
import p193e.p194a.p1129p5.C19224d;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p682e.C12864a2;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.j1 */
/* loaded from: classes4-dex2jar.jar:e/a/j1.class */
public class C15538j1 implements AbstractC26979b {

    /* renamed from: a */
    public final /* synthetic */ C19813r1 f43999a;

    public C15538j1(C19813r1 c19813r1) {
        this.f43999a = c19813r1;
    }

    @Override // p1727n3.p1861s.p1862a.AbstractC26979b
    /* renamed from: a */
    public ListenableWorker mo1026a(Context context, WorkerParameters workerParameters) {
        C19813r1 c19813r1 = this.f43999a.f55161P;
        C20592g c20592g = (C20592g) c19813r1.f55219S0.get();
        AbstractC19462a abstractC19462a = (AbstractC19462a) c19813r1.f55237T.get();
        Provider<Intent> provider = c19813r1.f55133N9;
        f m22571W = C12864a2.m22571W(c19813r1.f55467f);
        f m22570X = C12864a2.m22570X(c19813r1.f55467f);
        AbstractC18380m abstractC18380m = (AbstractC18380m) c19813r1.f55342Y9.get();
        C20592g c20592g2 = (C20592g) c19813r1.f55219S0.get();
        Context mo12335j = c19813r1.mo12335j();
        l.e(mo12335j, AnalyticsConstants.CONTEXT);
        l.e(mo12335j, "$this$backupSupport");
        Context applicationContext = mo12335j.getApplicationContext();
        Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.backup.BackupSupport");
        AbstractC18319d2 mo15288e = ((AbstractC18321e0) applicationContext).mo15288e();
        Objects.requireNonNull(mo15288e, "Cannot return null from a non-@Nullable @Provides method");
        AbstractC8541a abstractC8541a = (AbstractC8541a) c19813r1.f55332Y.get();
        C19224d c19224d = new C19224d();
        AbstractC18435u abstractC18435u = (AbstractC18435u) C8367d.m28633a(KnownEndpoints.BACKUP, AbstractC18435u.class);
        Objects.requireNonNull(abstractC18435u, "Cannot return null from a non-@Nullable @Provides method");
        return new BackupWorker(context, workerParameters, c20592g, abstractC19462a, provider, new C18370c(m22571W, m22570X, abstractC18380m, c20592g2, mo15288e, abstractC8541a, c19224d, abstractC18435u, (AbstractC19462a) c19813r1.f55237T.get(), 5000L));
    }
}
