package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p018n.AbstractC1330h;
import androidx.work.impl.p018n.AbstractC1335k;
import androidx.work.impl.p018n.AbstractC1347q;
import androidx.work.impl.p018n.AbstractC1359t;
import androidx.work.impl.p018n.C1329g;
import androidx.work.impl.p018n.C1344p;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/workers/DiagnosticsWorker.class */
public class DiagnosticsWorker extends Worker {

    /* renamed from: j */
    private static final String f5741j = AbstractC1404j.m30159f("DiagnosticsWrkr");

    public DiagnosticsWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    /* renamed from: a */
    private static String m30163a(C1344p c1344p, String str, Integer num, String str2) {
        return String.format("\n%s\t %s\t %s\t %s\t %s\t %s\t", c1344p.f5578c, c1344p.f5580e, num, c1344p.f5579d.name(), str, str2);
    }

    /* renamed from: c */
    private static String m30162c(AbstractC1335k abstractC1335k, AbstractC1359t abstractC1359t, AbstractC1330h abstractC1330h, List<C1344p> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("\n Id \t Class Name\t %s\t State\t Unique Name\t Tags\t", Build.VERSION.SDK_INT >= 23 ? "Job Id" : "Alarm Id"));
        for (C1344p c1344p : list) {
            Integer num = null;
            C1329g mo30296c = abstractC1330h.mo30296c(c1344p.f5578c);
            if (mo30296c != null) {
                num = Integer.valueOf(mo30296c.f5556b);
            }
            sb.append(m30163a(c1344p, TextUtils.join(",", abstractC1335k.mo30292b(c1344p.f5578c)), num, TextUtils.join(",", abstractC1359t.mo30259b(c1344p.f5578c))));
        }
        return sb.toString();
    }

    @Override // androidx.work.Worker
    public ListenableWorker.AbstractC1224a doWork() {
        WorkDatabase m30388o = C1289j.m30392k(getApplicationContext()).m30388o();
        AbstractC1347q mo30527B = m30388o.mo30527B();
        AbstractC1335k mo30509z = m30388o.mo30509z();
        AbstractC1359t mo30526C = m30388o.mo30526C();
        AbstractC1330h mo30510y = m30388o.mo30510y();
        List<C1344p> mo30278e = mo30527B.mo30278e(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List<C1344p> mo30273j = mo30527B.mo30273j();
        List<C1344p> mo30263t = mo30527B.mo30263t(200);
        if (mo30278e != null && !mo30278e.isEmpty()) {
            AbstractC1404j m30161c = AbstractC1404j.m30161c();
            String str = f5741j;
            m30161c.mo30156d(str, "Recently completed work:\n\n", new Throwable[0]);
            AbstractC1404j.m30161c().mo30156d(str, m30162c(mo30509z, mo30526C, mo30510y, mo30278e), new Throwable[0]);
        }
        if (mo30273j != null && !mo30273j.isEmpty()) {
            AbstractC1404j m30161c2 = AbstractC1404j.m30161c();
            String str2 = f5741j;
            m30161c2.mo30156d(str2, "Running work:\n\n", new Throwable[0]);
            AbstractC1404j.m30161c().mo30156d(str2, m30162c(mo30509z, mo30526C, mo30510y, mo30273j), new Throwable[0]);
        }
        if (mo30263t != null && !mo30263t.isEmpty()) {
            AbstractC1404j m30161c3 = AbstractC1404j.m30161c();
            String str3 = f5741j;
            m30161c3.mo30156d(str3, "Enqueued work:\n\n", new Throwable[0]);
            AbstractC1404j.m30161c().mo30156d(str3, m30162c(mo30509z, mo30526C, mo30510y, mo30263t), new Throwable[0]);
        }
        return ListenableWorker.AbstractC1224a.m30616c();
    }
}
