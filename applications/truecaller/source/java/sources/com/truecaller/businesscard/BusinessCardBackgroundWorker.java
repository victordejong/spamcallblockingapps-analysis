package com.truecaller.businesscard;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.callerid.p135v1.model.SignatureMetadata;
import com.truecaller.api.services.callerid.p135v1.model.SignedBusinessCard;
import java.util.concurrent.TimeUnit;
import javax.inject.Named;
import kotlin.Metadata;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p677d3.AbstractC12583b;
import p193e.p194a.p677d3.AbstractC12585d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001BG\b\u0001\u0012\b\b\u0001\u0010\u001a\u001a\u00020\u0019\u0012\b\b\u0001\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\b\b\u0001\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\b\u001a\u00020\u0005¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u001f"}, d2 = {"Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/b0/o/a;", "e", "Le/a/b0/o/a;", "coreSettings", "Le/a/d3/b;", "d", "Le/a/d3/b;", "businessCardIOUtils", "Le/a/b0/e/l;", "a", "Le/a/b0/e/l;", "accountManager", "Le/a/u3/g;", C22021b.f61237c, "Le/a/u3/g;", "featuresRegistry", "Le/a/d3/d;", AbstractC2405c.f7629a, "Le/a/d3/d;", "businessCardManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/u3/g;Le/a/d3/d;Le/a/d3/b;Le/a/b0/o/a;)V", "businesscard_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/businesscard/BusinessCardBackgroundWorker.class */
public final class BusinessCardBackgroundWorker extends Worker {

    /* renamed from: a */
    public final AbstractC8432l f10492a;

    /* renamed from: b */
    public final C20592g f10493b;

    /* renamed from: c */
    public final AbstractC12585d f10494c;

    /* renamed from: d */
    public final AbstractC12583b f10495d;

    /* renamed from: e */
    public final AbstractC8541a f10496e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BusinessCardBackgroundWorker(Context context, WorkerParameters workerParameters, AbstractC8432l abstractC8432l, @Named("features_registry") C20592g c20592g, AbstractC12585d abstractC12585d, AbstractC12583b abstractC12583b, AbstractC8541a abstractC8541a) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC8432l, "accountManager");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC12585d, "businessCardManager");
        l.e(abstractC12583b, "businessCardIOUtils");
        l.e(abstractC8541a, "coreSettings");
        this.f10492a = abstractC8432l;
        this.f10493b = c20592g;
        this.f10494c = abstractC12585d;
        this.f10495d = abstractC12583b;
        this.f10496e = abstractC8541a;
    }

    /* renamed from: n */
    public static final void m35806n(long j) {
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a m1268f = new C26842r.C26843a(BusinessCardBackgroundWorker.class).m1268f(j, TimeUnit.SECONDS);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        m1268f.f75127c.f74911j = new C26825d(c26826a);
        m1431n.m1279i("BusinessCardBackgroundWorker", enumC26832h, m1268f.m1272b());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        if (this.f10492a.mo28580d() && this.f10493b.m10967f0().isEnabled()) {
            if (!(C17422k.m16109I(this.f10496e).length() == 0)) {
                if (!this.f10494c.mo22854b()) {
                    ListenableWorker.AbstractC0414a.C0416b c0416b = new ListenableWorker.AbstractC0414a.C0416b();
                    l.d(c0416b, "Result.retry()");
                    return c0416b;
                }
                SignedBusinessCard mo22860a = this.f10495d.mo22860a();
                if (mo22860a == null) {
                    ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
                    l.d(c0417c, "Result.success()");
                    return c0417c;
                }
                SignatureMetadata metadata = mo22860a.getMetadata();
                l.d(metadata, "it.metadata");
                long expireDate = metadata.getExpireDate();
                SignatureMetadata metadata2 = mo22860a.getMetadata();
                l.d(metadata2, "it.metadata");
                long issueDate = metadata2.getIssueDate();
                long seconds = TimeUnit.DAYS.toSeconds(1L);
                C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
                EnumC26832h enumC26832h = EnumC26832h.REPLACE;
                C26842r.C26843a m1268f = new C26842r.C26843a(BusinessCardBackgroundWorker.class).m1268f((expireDate - issueDate) - seconds, TimeUnit.SECONDS);
                C26825d.C26826a c26826a = new C26825d.C26826a();
                c26826a.f75068c = EnumC26841q.CONNECTED;
                m1268f.f75127c.f74911j = new C26825d(c26826a);
                m1431n.m1279i("BusinessCardBackgroundWorker", enumC26832h, m1268f.m1272b());
                ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c2, "Result.success()");
                return c0417c2;
            }
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c3 = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c3, "Result.success()");
        return c0417c3;
    }
}
