package com.truecaller.filters.sync;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import java.io.IOException;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p837h0.AbstractC14835j;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0006\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\"\u0010\f\u001a\u00020\u00058��@��X\u0081.¢\u0006\u0012\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u001b"}, d2 = {"Lcom/truecaller/filters/sync/FilterSettingsUploadWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/b0/e/l;", "a", "Le/a/b0/e/l;", "getAccountManager$truecaller_googlePlayRelease", "()Le/a/b0/e/l;", "setAccountManager$truecaller_googlePlayRelease", "(Le/a/b0/e/l;)V", "accountManager", "Le/a/h0/j;", C22021b.f61237c, "Le/a/h0/j;", "getFilterManager$truecaller_googlePlayRelease", "()Le/a/h0/j;", "setFilterManager$truecaller_googlePlayRelease", "(Le/a/h0/j;)V", "filterManager", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/filters/sync/FilterSettingsUploadWorker.class */
public final class FilterSettingsUploadWorker extends Worker {
    @Inject

    /* renamed from: a */
    public AbstractC8432l f11929a;
    @Inject

    /* renamed from: b */
    public AbstractC14835j f11930b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FilterSettingsUploadWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        AbstractC16444k2.f46188a.m17389a().mo11383j(this);
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        AbstractC14835j abstractC14835j;
        AbstractC8432l abstractC8432l = this.f11929a;
        if (abstractC8432l == null) {
            l.l("accountManager");
            throw null;
        } else if (!abstractC8432l.mo28580d()) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        } else {
            try {
                abstractC14835j = this.f11930b;
            } catch (IOException | RuntimeException e) {
            }
            if (abstractC14835j == null) {
                l.l("filterManager");
                throw null;
            }
            if (!abstractC14835j.mo19592d()) {
                ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c2, "Result.success()");
                return c0417c2;
            }
            ListenableWorker.AbstractC0414a.C0415a c0415a = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0415a, "Result.failure()");
            return c0415a;
        }
    }
}
