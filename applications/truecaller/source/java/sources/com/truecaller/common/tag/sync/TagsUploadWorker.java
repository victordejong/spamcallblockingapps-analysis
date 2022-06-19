package com.truecaller.common.tag.sync;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B-\b\u0007\u0012\b\b\u0001\u0010\u000e\u001a\u00020\r\u0012\b\b\u0001\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/truecaller/common/tag/sync/TagsUploadWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/b0/e/l;", "a", "Le/a/b0/e/l;", "accountManager", "Le/a/b0/p/d;", C22021b.f61237c, "Le/a/b0/p/d;", "tagManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/b0/p/d;)V", "common_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/tag/sync/TagsUploadWorker.class */
public final class TagsUploadWorker extends Worker {

    /* renamed from: a */
    public final AbstractC8432l f10984a;

    /* renamed from: b */
    public final AbstractC8552d f10985b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TagsUploadWorker(Context context, WorkerParameters workerParameters, AbstractC8432l abstractC8432l, AbstractC8552d abstractC8552d) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8552d, "tagManager");
        this.f10984a = abstractC8432l;
        this.f10985b = abstractC8552d;
    }

    /* renamed from: n */
    public static final void m35713n(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(TagsUploadWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        m1431n.m1279i("TagsUploadWorker", enumC26832h, c26843a.m1272b());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        if (!this.f10984a.mo28580d()) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        boolean mo28399e = this.f10985b.mo28399e();
        boolean mo28393k = this.f10985b.mo28393k();
        if (!mo28399e || !mo28393k) {
            ListenableWorker.AbstractC0414a.C0416b c0416b = new ListenableWorker.AbstractC0414a.C0416b();
            l.d(c0416b, "Result.retry()");
            return c0416b;
        }
        ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c2, "Result.success()");
        return c0417c2;
    }
}
