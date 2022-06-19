package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.impl.AbstractC1250b;
import androidx.work.impl.C1266d;
import androidx.work.impl.C1289j;
import androidx.work.impl.utils.C1387j;
import androidx.work.impl.utils.C1395n;
import androidx.work.impl.utils.ExecutorC1383g;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e.class */
public class C1256e implements AbstractC1250b {

    /* renamed from: d */
    static final String f5345d = AbstractC1404j.m30159f("SystemAlarmDispatcher");

    /* renamed from: e */
    final Context f5346e;

    /* renamed from: f */
    private final AbstractC1399a f5347f;

    /* renamed from: g */
    private final C1395n f5348g;

    /* renamed from: h */
    private final C1266d f5349h;

    /* renamed from: i */
    private final C1289j f5350i;

    /* renamed from: j */
    final C1253b f5351j;

    /* renamed from: k */
    private final Handler f5352k;

    /* renamed from: l */
    final List<Intent> f5353l;

    /* renamed from: m */
    Intent f5354m;

    /* renamed from: n */
    private AbstractC1259c f5355n;

    /* renamed from: androidx.work.impl.background.systemalarm.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$a.class */
    public class RunnableC1257a implements Runnable {
        RunnableC1257a() {
            C1256e.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            RunnableC1260d runnableC1260d;
            C1256e c1256e;
            synchronized (C1256e.this.f5353l) {
                C1256e c1256e2 = C1256e.this;
                c1256e2.f5354m = c1256e2.f5353l.get(0);
            }
            Intent intent = C1256e.this.f5354m;
            if (intent != null) {
                String action = intent.getAction();
                int intExtra = C1256e.this.f5354m.getIntExtra("KEY_START_ID", 0);
                AbstractC1404j m30161c = AbstractC1404j.m30161c();
                String str = C1256e.f5345d;
                m30161c.mo30158a(str, String.format("Processing command %s, %s", C1256e.this.f5354m, Integer.valueOf(intExtra)), new Throwable[0]);
                PowerManager.WakeLock m30180b = C1387j.m30180b(C1256e.this.f5346e, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                try {
                    AbstractC1404j.m30161c().mo30158a(str, String.format("Acquiring operation wake lock (%s) %s", action, m30180b), new Throwable[0]);
                    m30180b.acquire();
                    C1256e c1256e3 = C1256e.this;
                    c1256e3.f5351j.m30480p(c1256e3.f5354m, intExtra, c1256e3);
                    AbstractC1404j.m30161c().mo30158a(str, String.format("Releasing operation wake lock (%s) %s", action, m30180b), new Throwable[0]);
                    m30180b.release();
                    c1256e = C1256e.this;
                    runnableC1260d = new RunnableC1260d(c1256e);
                } catch (Throwable th) {
                    try {
                        AbstractC1404j m30161c2 = AbstractC1404j.m30161c();
                        String str2 = C1256e.f5345d;
                        m30161c2.mo30157b(str2, "Unexpected error in onHandleIntent", th);
                        AbstractC1404j.m30161c().mo30158a(str2, String.format("Releasing operation wake lock (%s) %s", action, m30180b), new Throwable[0]);
                        m30180b.release();
                        c1256e = C1256e.this;
                        runnableC1260d = new RunnableC1260d(c1256e);
                    } catch (Throwable th2) {
                        AbstractC1404j.m30161c().mo30158a(C1256e.f5345d, String.format("Releasing operation wake lock (%s) %s", action, m30180b), new Throwable[0]);
                        m30180b.release();
                        C1256e c1256e4 = C1256e.this;
                        c1256e4.m30466k(new RunnableC1260d(c1256e4));
                        throw th2;
                    }
                }
                c1256e.m30466k(runnableC1260d);
            }
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$b.class */
    public static class RunnableC1258b implements Runnable {

        /* renamed from: d */
        private final C1256e f5357d;

        /* renamed from: e */
        private final Intent f5358e;

        /* renamed from: f */
        private final int f5359f;

        public RunnableC1258b(C1256e c1256e, Intent intent, int i) {
            this.f5357d = c1256e;
            this.f5358e = intent;
            this.f5359f = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5357d.m30475a(this.f5358e, this.f5359f);
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$c.class */
    public interface AbstractC1259c {
        /* renamed from: b */
        void mo30463b();
    }

    /* renamed from: androidx.work.impl.background.systemalarm.e$d */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$d.class */
    static class RunnableC1260d implements Runnable {

        /* renamed from: d */
        private final C1256e f5360d;

        RunnableC1260d(C1256e c1256e) {
            this.f5360d = c1256e;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5360d.m30473c();
        }
    }

    public C1256e(Context context) {
        this(context, null, null);
    }

    C1256e(Context context, C1266d c1266d, C1289j c1289j) {
        Context applicationContext = context.getApplicationContext();
        this.f5346e = applicationContext;
        this.f5351j = new C1253b(applicationContext);
        this.f5348g = new C1395n();
        c1289j = c1289j == null ? C1289j.m30392k(context) : c1289j;
        this.f5350i = c1289j;
        c1266d = c1266d == null ? c1289j.m30390m() : c1266d;
        this.f5349h = c1266d;
        this.f5347f = c1289j.m30387p();
        c1266d.m30448c(this);
        this.f5353l = new ArrayList();
        this.f5354m = null;
        this.f5352k = new Handler(Looper.getMainLooper());
    }

    /* renamed from: b */
    private void m30474b() {
        if (this.f5352k.getLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Needs to be invoked on the main thread.");
    }

    /* renamed from: i */
    private boolean m30468i(String str) {
        m30474b();
        synchronized (this.f5353l) {
            Iterator<Intent> it = this.f5353l.iterator();
            do {
                if (!it.hasNext()) {
                    return false;
                }
            } while (!str.equals(it.next().getAction()));
            return true;
        }
    }

    /* renamed from: l */
    private void m30465l() {
        m30474b();
        PowerManager.WakeLock m30180b = C1387j.m30180b(this.f5346e, "ProcessCommand");
        try {
            m30180b.acquire();
            this.f5350i.m30387p().mo30172b(new RunnableC1257a());
        } finally {
            m30180b.release();
        }
    }

    /* renamed from: a */
    public boolean m30475a(Intent intent, int i) {
        AbstractC1404j m30161c = AbstractC1404j.m30161c();
        String str = f5345d;
        m30161c.mo30158a(str, String.format("Adding command %s (%s)", intent, Integer.valueOf(i)), new Throwable[0]);
        m30474b();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            AbstractC1404j.m30161c().mo30154h(str, "Unknown command. Ignoring", new Throwable[0]);
            return false;
        } else if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && m30468i("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        } else {
            intent.putExtra("KEY_START_ID", i);
            synchronized (this.f5353l) {
                boolean z = false;
                if (!this.f5353l.isEmpty()) {
                    z = true;
                }
                this.f5353l.add(intent);
                if (!z) {
                    m30465l();
                }
            }
            return true;
        }
    }

    /* renamed from: c */
    void m30473c() {
        AbstractC1404j m30161c = AbstractC1404j.m30161c();
        String str = f5345d;
        m30161c.mo30158a(str, "Checking if commands are complete.", new Throwable[0]);
        m30474b();
        synchronized (this.f5353l) {
            if (this.f5354m != null) {
                AbstractC1404j.m30161c().mo30158a(str, String.format("Removing command %s", this.f5354m), new Throwable[0]);
                if (!this.f5353l.remove(0).equals(this.f5354m)) {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
                this.f5354m = null;
            }
            ExecutorC1383g mo30171c = this.f5347f.mo30171c();
            if (!this.f5351j.m30481o() && this.f5353l.isEmpty() && !mo30171c.m30183b()) {
                AbstractC1404j.m30161c().mo30158a(str, "No more commands & intents.", new Throwable[0]);
                AbstractC1259c abstractC1259c = this.f5355n;
                if (abstractC1259c != null) {
                    abstractC1259c.mo30463b();
                }
            } else if (!this.f5353l.isEmpty()) {
                m30465l();
            }
        }
    }

    @Override // androidx.work.impl.AbstractC1250b
    /* renamed from: d */
    public void mo30356d(String str, boolean z) {
        m30466k(new RunnableC1258b(this, C1253b.m30492c(this.f5346e, str, z), 0));
    }

    /* renamed from: e */
    public C1266d m30472e() {
        return this.f5349h;
    }

    /* renamed from: f */
    public AbstractC1399a m30471f() {
        return this.f5347f;
    }

    /* renamed from: g */
    public C1289j m30470g() {
        return this.f5350i;
    }

    /* renamed from: h */
    public C1395n m30469h() {
        return this.f5348g;
    }

    /* renamed from: j */
    public void m30467j() {
        AbstractC1404j.m30161c().mo30158a(f5345d, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.f5349h.m30443i(this);
        this.f5348g.m30177a();
        this.f5355n = null;
    }

    /* renamed from: k */
    public void m30466k(Runnable runnable) {
        this.f5352k.post(runnable);
    }

    /* renamed from: m */
    public void m30464m(AbstractC1259c abstractC1259c) {
        if (this.f5355n != null) {
            AbstractC1404j.m30161c().mo30157b(f5345d, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.f5355n = abstractC1259c;
        }
    }
}
