package p1727n3.p1834m0.p1835c0.p1845t;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.work.ListenableWorker;
import n3.m0.c0.t.w.c;
import p1727n3.p1834m0.AbstractC26834j;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26833i;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.t.r */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/r.class */
public class RunnableC26798r implements Runnable {

    /* renamed from: g */
    public static final String f74987g = AbstractC26839p.m1295e("WorkForegroundRunnable");

    /* renamed from: a */
    public final c<Void> f74988a = new c<>();

    /* renamed from: b */
    public final Context f74989b;

    /* renamed from: c */
    public final C26760p f74990c;

    /* renamed from: d */
    public final ListenableWorker f74991d;

    /* renamed from: e */
    public final AbstractC26834j f74992e;

    /* renamed from: f */
    public final AbstractC26821a f74993f;

    /* renamed from: n3.m0.c0.t.r$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/r$a.class */
    public class RunnableC26799a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ c f74994a;

        public RunnableC26799a(c cVar) {
            RunnableC26798r.this = r4;
            this.f74994a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f74994a.k(RunnableC26798r.this.f74991d.getForegroundInfoAsync());
        }
    }

    /* renamed from: n3.m0.c0.t.r$b */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/t/r$b.class */
    public class RunnableC26800b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ c f74996a;

        public RunnableC26800b(c cVar) {
            RunnableC26798r.this = r4;
            this.f74996a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C26833i c26833i = (C26833i) this.f74996a.get();
                if (c26833i == null) {
                    throw new IllegalStateException(String.format("Worker was marked important (%s) but did not provide ForegroundInfo", RunnableC26798r.this.f74990c.f74904c));
                }
                AbstractC26839p.m1296c().mo1294a(RunnableC26798r.f74987g, String.format("Updating notification for %s", RunnableC26798r.this.f74990c.f74904c), new Throwable[0]);
                RunnableC26798r.this.f74991d.setRunInForeground(true);
                RunnableC26798r runnableC26798r = RunnableC26798r.this;
                runnableC26798r.f74988a.k(((C26801s) runnableC26798r.f74992e).m1325a(runnableC26798r.f74989b, runnableC26798r.f74991d.getId(), c26833i));
            } catch (Throwable th) {
                RunnableC26798r.this.f74988a.j(th);
            }
        }
    }

    public RunnableC26798r(Context context, C26760p c26760p, ListenableWorker listenableWorker, AbstractC26834j abstractC26834j, AbstractC26821a abstractC26821a) {
        this.f74989b = context;
        this.f74990c = c26760p;
        this.f74991d = listenableWorker;
        this.f74992e = abstractC26834j;
        this.f74993f = abstractC26821a;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!this.f74990c.f74918q || MediaSessionCompat.m43297I0()) {
            this.f74988a.i((Object) null);
            return;
        }
        c cVar = new c();
        ((C26822b) this.f74993f).f75053c.execute(new RunnableC26799a(cVar));
        cVar.addListener(new RunnableC26800b(cVar), ((C26822b) this.f74993f).f75053c);
    }
}
