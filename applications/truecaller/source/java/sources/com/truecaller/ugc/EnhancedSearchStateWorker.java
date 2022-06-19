package com.truecaller.ugc;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.util.KnownEndpoints;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.regex.Pattern;
import kotlin.Metadata;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1079n5.AbstractC18491a;
import p193e.p194a.p1079n5.AbstractC18498g;
import p193e.p194a.p372b0.p394b.p395a.C8366c;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p394b.p404m.C8407a;
import p193e.p194a.p372b0.p394b.p404m.C8408b;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p437c.p578p.C10480a;
import s1.f0.b;
import s1.z.c.l;
import u3.c0;
import u3.j0;
import u3.p0.c;
import x3.a0;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018��2\u00020\u0001B-\b\u0007\u0012\b\b\u0001\u0010\u000e\u001a\u00020\r\u0012\b\b\u0001\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u0013"}, d2 = {"Lcom/truecaller/ugc/EnhancedSearchStateWorker;", "Landroidx/work/Worker;", "Landroidx/work/ListenableWorker$a;", "doWork", "()Landroidx/work/ListenableWorker$a;", "Le/a/b0/e/l;", "a", "Le/a/b0/e/l;", "accountManager", "Le/a/n5/g;", C22021b.f61237c, "Le/a/n5/g;", "ugcSettings", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/n5/g;)V", "ugc_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/ugc/EnhancedSearchStateWorker.class */
public final class EnhancedSearchStateWorker extends Worker {

    /* renamed from: a */
    public final AbstractC8432l f15509a;

    /* renamed from: b */
    public final AbstractC18498g f15510b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnhancedSearchStateWorker(Context context, WorkerParameters workerParameters, AbstractC8432l abstractC8432l, AbstractC18498g abstractC18498g) {
        super(context, workerParameters);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(workerParameters, "params");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC18498g, "ugcSettings");
        this.f15509a = abstractC8432l;
        this.f15510b = abstractC18498g;
    }

    /* renamed from: n */
    public static final void m34601n(boolean z, Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(context);
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(EnhancedSearchStateWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        HashMap hashMap = new HashMap();
        hashMap.put("enhanced_search_value", Boolean.valueOf(z));
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        c26843a.f75127c.f74906e = c26829f;
        m1431n.m1279i("EnhancedSearchStateWorker", enumC26832h, c26843a.m1272b());
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC0414a doWork() {
        if (!this.f15509a.mo28580d()) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        boolean m1305b = getInputData().m1305b("enhanced_search_value", false);
        try {
            AbstractC18491a abstractC18491a = (AbstractC18491a) C8367d.m28633a(KnownEndpoints.PHONEBOOK, AbstractC18491a.class);
            c0 c0Var = C8366c.f25723a;
            l.f("{}", "$this$toRequestBody");
            Charset charset = b.a;
            c0 c0Var2 = c0Var;
            Charset charset2 = charset;
            if (c0Var != null) {
                Pattern pattern = c0.d;
                charset2 = c0Var.a((Charset) null);
                if (charset2 == null) {
                    c0.a aVar = c0.f;
                    c0Var2 = c0.a.b(c0Var + "; charset=utf-8");
                    charset2 = charset;
                } else {
                    c0Var2 = c0Var;
                }
            }
            byte[] bytes = "{}".getBytes(charset2);
            l.b(bytes, "(this as java.lang.String).getBytes(charset)");
            int length = bytes.length;
            l.f(bytes, "$this$toRequestBody");
            c.c(bytes.length, 0, length);
            a0 execute = abstractC18491a.m14861a(m1305b, new j0.a.a(bytes, c0Var2, length, 0)).execute();
            l.d(execute, "response");
            if (execute.b()) {
                C8407a c8407a = (C8407a) execute.b;
                boolean z = false;
                if (c8407a != null) {
                    C8408b m28603a = c8407a.m28603a();
                    z = false;
                    if (m28603a != null) {
                        z = m28603a.m28602a();
                    }
                }
                this.f15510b.putBoolean("backup", z);
                ListenableWorker.AbstractC0414a.C0417c c0417c2 = new ListenableWorker.AbstractC0414a.C0417c();
                l.d(c0417c2, "Result.success()");
                return c0417c2;
            }
        } catch (IOException e) {
            C10480a.m26061I1(e);
        } catch (RuntimeException e2) {
            C10480a.m26061I1(e2);
        }
        ListenableWorker.AbstractC0414a.C0416b c0416b = new ListenableWorker.AbstractC0414a.C0416b();
        l.d(c0416b, "Result.retry()");
        return c0416b;
    }
}
