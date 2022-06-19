package p292y1;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.ListenableWorker;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p120i0.C3055a;
import p186o1.AbstractC3821e;
import p186o1.AbstractC3824h;
import p186o1.C3820d;
import p282x1.C4832p;
import p302z1.C5035c;
/* renamed from: y1.n */
/* loaded from: classes-dex2jar.jar:y1/n.class */
public class RunnableC4968n implements Runnable {

    /* renamed from: g */
    public static final String f15144g = AbstractC3824h.m1773e("WorkForegroundRunnable");

    /* renamed from: a */
    public final C5035c<Void> f15145a = new C5035c<>();

    /* renamed from: b */
    public final Context f15146b;

    /* renamed from: c */
    public final C4832p f15147c;

    /* renamed from: d */
    public final ListenableWorker f15148d;

    /* renamed from: e */
    public final AbstractC3821e f15149e;

    /* renamed from: f */
    public final AbstractC0008a f15150f;

    /* renamed from: y1.n$a */
    /* loaded from: classes-dex2jar.jar:y1/n$a.class */
    public class RunnableC4969a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C5035c f15151a;

        public RunnableC4969a(C5035c c5035c) {
            RunnableC4968n.this = r4;
            this.f15151a = c5035c;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f15151a.mo118j(RunnableC4968n.this.f15148d.getForegroundInfoAsync());
        }
    }

    /* renamed from: y1.n$b */
    /* loaded from: classes-dex2jar.jar:y1/n$b.class */
    public class RunnableC4970b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C5035c f15153a;

        public RunnableC4970b(C5035c c5035c) {
            RunnableC4968n.this = r4;
            this.f15153a = c5035c;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C3820d c3820d = (C3820d) this.f15153a.m128e();
                if (c3820d == null) {
                    throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", RunnableC4968n.this.f15147c.f14833c));
                }
                AbstractC3824h.m1774c().mo1772a(RunnableC4968n.f15144g, String.format("Updating notification for %s", RunnableC4968n.this.f15147c.f14833c), new Throwable[0]);
                RunnableC4968n.this.f15148d.setRunInForeground(true);
                RunnableC4968n runnableC4968n = RunnableC4968n.this;
                runnableC4968n.f15145a.mo118j(((C4971o) runnableC4968n.f15149e).m170a(runnableC4968n.f15146b, runnableC4968n.f15148d.getId(), c3820d));
            } catch (Throwable th) {
                RunnableC4968n.this.f15145a.m116l(th);
            }
        }
    }

    @SuppressLint({"LambdaLast"})
    public RunnableC4968n(Context context, C4832p c4832p, ListenableWorker listenableWorker, AbstractC3821e abstractC3821e, AbstractC0008a abstractC0008a) {
        this.f15146b = context;
        this.f15147c = c4832p;
        this.f15148d = listenableWorker;
        this.f15149e = abstractC3821e;
        this.f15150f = abstractC0008a;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"UnsafeExperimentalUsageError"})
    public void run() {
        if (!this.f15147c.f14847q || C3055a.m2668a()) {
            this.f15145a.m117k(null);
            return;
        }
        C5035c c5035c = new C5035c();
        ((C0009b) this.f15150f).f10c.execute(new RunnableC4969a(c5035c));
        c5035c.m131b(new RunnableC4970b(c5035c), ((C0009b) this.f15150f).f10c);
    }
}
