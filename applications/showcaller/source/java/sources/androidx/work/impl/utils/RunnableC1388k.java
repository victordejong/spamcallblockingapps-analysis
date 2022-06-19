package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.core.p008os.C0622a;
import androidx.work.AbstractC1241f;
import androidx.work.AbstractC1404j;
import androidx.work.C1240e;
import androidx.work.ListenableWorker;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.futures.C1382a;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import com.google.common.util.concurrent.AbstractFutureC8832a;
/* renamed from: androidx.work.impl.utils.k */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/k.class */
public class RunnableC1388k implements Runnable {

    /* renamed from: d */
    static final String f5691d = AbstractC1404j.m30159f("WorkForegroundRunnable");

    /* renamed from: e */
    final C1382a<Void> f5692e = C1382a.m30184u();

    /* renamed from: f */
    final Context f5693f;

    /* renamed from: g */
    final C1344p f5694g;

    /* renamed from: h */
    final ListenableWorker f5695h;

    /* renamed from: i */
    final AbstractC1241f f5696i;

    /* renamed from: j */
    final AbstractC1399a f5697j;

    /* renamed from: androidx.work.impl.utils.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/k$a.class */
    class RunnableC1389a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C1382a f5698d;

        RunnableC1389a(C1382a c1382a) {
            RunnableC1388k.this = r4;
            this.f5698d = c1382a;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5698d.mo30185s(RunnableC1388k.this.f5695h.getForegroundInfoAsync());
        }
    }

    /* renamed from: androidx.work.impl.utils.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/k$b.class */
    class RunnableC1390b implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C1382a f5700d;

        RunnableC1390b(C1382a c1382a) {
            RunnableC1388k.this = r4;
            this.f5700d = c1382a;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C1240e c1240e = (C1240e) this.f5700d.get();
                if (c1240e == null) {
                    throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", RunnableC1388k.this.f5694g.f5580e));
                }
                AbstractC1404j.m30161c().mo30158a(RunnableC1388k.f5691d, String.format("Updating notification for %s", RunnableC1388k.this.f5694g.f5580e), new Throwable[0]);
                RunnableC1388k.this.f5695h.setRunInForeground(true);
                RunnableC1388k runnableC1388k = RunnableC1388k.this;
                runnableC1388k.f5692e.mo30185s(runnableC1388k.f5696i.mo30178a(runnableC1388k.f5693f, runnableC1388k.f5695h.getId(), c1240e));
            } catch (Throwable th) {
                RunnableC1388k.this.f5692e.mo30186r(th);
            }
        }
    }

    @SuppressLint({"LambdaLast"})
    public RunnableC1388k(Context context, C1344p c1344p, ListenableWorker listenableWorker, AbstractC1241f abstractC1241f, AbstractC1399a abstractC1399a) {
        this.f5693f = context;
        this.f5694g = c1344p;
        this.f5695h = listenableWorker;
        this.f5696i = abstractC1241f;
        this.f5697j = abstractC1399a;
    }

    /* renamed from: a */
    public AbstractFutureC8832a<Void> m30179a() {
        return this.f5692e;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (!this.f5694g.f5594s || C0622a.m33200c()) {
            this.f5692e.mo30187q(null);
            return;
        }
        C1382a m30184u = C1382a.m30184u();
        this.f5697j.mo30173a().execute(new RunnableC1389a(m30184u));
        m30184u.mo2574e(new RunnableC1390b(m30184u), this.f5697j.mo30173a());
    }
}
