package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.AbstractC1293l;
import androidx.work.impl.AbstractC1142a;
import androidx.work.impl.C1226c;
import androidx.work.impl.C1249i;
import androidx.work.impl.utils.C1281i;
import androidx.work.impl.utils.C1284l;
import androidx.work.impl.utils.ExecutorC1277f;
import androidx.work.impl.utils.p058b.AbstractC1271a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e.class */
public class C1217e implements AbstractC1142a {

    /* renamed from: a */
    static final String f4097a = AbstractC1293l.m17541a("SystemAlarmDispatcher");

    /* renamed from: b */
    final Context f4098b;

    /* renamed from: c */
    final C1214b f4099c;

    /* renamed from: d */
    final List<Intent> f4100d;

    /* renamed from: e */
    Intent f4101e;

    /* renamed from: f */
    private final AbstractC1271a f4102f;

    /* renamed from: g */
    private final C1284l f4103g;

    /* renamed from: h */
    private final C1226c f4104h;

    /* renamed from: i */
    private final C1249i f4105i;

    /* renamed from: j */
    private final Handler f4106j;

    /* renamed from: k */
    private AbstractC1220b f4107k;

    /* renamed from: androidx.work.impl.background.systemalarm.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$a.class */
    public static class RunnableC1219a implements Runnable {

        /* renamed from: a */
        private final C1217e f4109a;

        /* renamed from: b */
        private final Intent f4110b;

        /* renamed from: c */
        private final int f4111c;

        public RunnableC1219a(C1217e c1217e, Intent intent, int i) {
            this.f4109a = c1217e;
            this.f4110b = intent;
            this.f4111c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4109a.m17740a(this.f4110b, this.f4111c);
        }
    }

    /* renamed from: androidx.work.impl.background.systemalarm.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$b.class */
    public interface AbstractC1220b {
        /* renamed from: a */
        void mo17729a();
    }

    /* renamed from: androidx.work.impl.background.systemalarm.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$c.class */
    static class RunnableC1221c implements Runnable {

        /* renamed from: a */
        private final C1217e f4112a;

        RunnableC1221c(C1217e c1217e) {
            this.f4112a = c1217e;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4112a.m17732f();
        }
    }

    public C1217e(Context context) {
        this(context, null, null);
    }

    C1217e(Context context, C1226c c1226c, C1249i c1249i) {
        this.f4098b = context.getApplicationContext();
        this.f4099c = new C1214b(this.f4098b);
        this.f4103g = new C1284l();
        this.f4105i = c1249i == null ? C1249i.m17656b(context) : c1249i;
        this.f4104h = c1226c == null ? this.f4105i.m17648f() : c1226c;
        this.f4102f = this.f4105i.m17647g();
        this.f4104h.m17715a(this);
        this.f4100d = new ArrayList();
        this.f4101e = null;
        this.f4106j = new Handler(Looper.getMainLooper());
    }

    /* renamed from: a */
    private boolean m17737a(String str) {
        boolean z;
        m17730h();
        synchronized (this.f4100d) {
            Iterator<Intent> it = this.f4100d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (str.equals(it.next().getAction())) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    /* renamed from: g */
    private void m17731g() {
        m17730h();
        PowerManager.WakeLock m17562a = C1281i.m17562a(this.f4098b, "ProcessCommand");
        try {
            m17562a.acquire();
            this.f4105i.m17647g().mo17577a(new Runnable() { // from class: androidx.work.impl.background.systemalarm.e.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (C1217e.this.f4100d) {
                        C1217e.this.f4101e = C1217e.this.f4100d.get(0);
                    }
                    if (C1217e.this.f4101e != null) {
                        String action = C1217e.this.f4101e.getAction();
                        int intExtra = C1217e.this.f4101e.getIntExtra("KEY_START_ID", 0);
                        AbstractC1293l.m17543a().mo17539b(C1217e.f4097a, String.format("Processing command %s, %s", C1217e.this.f4101e, Integer.valueOf(intExtra)), new Throwable[0]);
                        PowerManager.WakeLock m17562a2 = C1281i.m17562a(C1217e.this.f4098b, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                        try {
                            AbstractC1293l.m17543a().mo17539b(C1217e.f4097a, String.format("Acquiring operation wake lock (%s) %s", action, m17562a2), new Throwable[0]);
                            m17562a2.acquire();
                            C1217e.this.f4099c.m17755a(C1217e.this.f4101e, intExtra, C1217e.this);
                            AbstractC1293l.m17543a().mo17539b(C1217e.f4097a, String.format("Releasing operation wake lock (%s) %s", action, m17562a2), new Throwable[0]);
                            m17562a2.release();
                            C1217e.this.m17738a(new RunnableC1221c(C1217e.this));
                        } catch (Throwable th) {
                            try {
                                AbstractC1293l.m17543a().mo17536e(C1217e.f4097a, "Unexpected error in onHandleIntent", th);
                                AbstractC1293l.m17543a().mo17539b(C1217e.f4097a, String.format("Releasing operation wake lock (%s) %s", action, m17562a2), new Throwable[0]);
                                m17562a2.release();
                                C1217e.this.m17738a(new RunnableC1221c(C1217e.this));
                            } catch (Throwable th2) {
                                AbstractC1293l.m17543a().mo17539b(C1217e.f4097a, String.format("Releasing operation wake lock (%s) %s", action, m17562a2), new Throwable[0]);
                                m17562a2.release();
                                C1217e.this.m17738a(new RunnableC1221c(C1217e.this));
                                throw th2;
                            }
                        }
                    }
                }
            });
        } finally {
            m17562a.release();
        }
    }

    /* renamed from: h */
    private void m17730h() {
        if (this.f4106j.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }

    /* renamed from: a */
    public void m17741a() {
        AbstractC1293l.m17543a().mo17539b(f4097a, "Destroying SystemAlarmDispatcher", new Throwable[0]);
        this.f4104h.m17711b(this);
        this.f4103g.m17561a();
        this.f4107k = null;
    }

    /* renamed from: a */
    public void m17739a(AbstractC1220b abstractC1220b) {
        if (this.f4107k != null) {
            AbstractC1293l.m17543a().mo17536e(f4097a, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.f4107k = abstractC1220b;
        }
    }

    /* renamed from: a */
    public void m17738a(Runnable runnable) {
        this.f4106j.post(runnable);
    }

    @Override // androidx.work.impl.AbstractC1142a
    /* renamed from: a */
    public void mo17680a(String str, boolean z) {
        m17738a(new RunnableC1219a(this, C1214b.m17757a(this.f4098b, str, z), 0));
    }

    /* renamed from: a */
    public boolean m17740a(Intent intent, int i) {
        boolean z = false;
        AbstractC1293l.m17543a().mo17539b(f4097a, String.format("Adding command %s (%s)", intent, Integer.valueOf(i)), new Throwable[0]);
        m17730h();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            AbstractC1293l.m17543a().mo17537d(f4097a, "Unknown command. Ignoring", new Throwable[0]);
        } else if (!"ACTION_CONSTRAINTS_CHANGED".equals(action) || !m17737a("ACTION_CONSTRAINTS_CHANGED")) {
            intent.putExtra("KEY_START_ID", i);
            synchronized (this.f4100d) {
                boolean z2 = false;
                if (!this.f4100d.isEmpty()) {
                    z2 = true;
                }
                this.f4100d.add(intent);
                if (!z2) {
                    m17731g();
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public C1226c m17736b() {
        return this.f4104h;
    }

    /* renamed from: c */
    public C1284l m17735c() {
        return this.f4103g;
    }

    /* renamed from: d */
    public C1249i m17734d() {
        return this.f4105i;
    }

    /* renamed from: e */
    public AbstractC1271a m17733e() {
        return this.f4102f;
    }

    /* renamed from: f */
    void m17732f() {
        AbstractC1293l.m17543a().mo17539b(f4097a, "Checking if commands are complete.", new Throwable[0]);
        m17730h();
        synchronized (this.f4100d) {
            if (this.f4101e != null) {
                AbstractC1293l.m17543a().mo17539b(f4097a, String.format("Removing command %s", this.f4101e), new Throwable[0]);
                if (!this.f4100d.remove(0).equals(this.f4101e)) {
                    throw new IllegalStateException("Dequeue-d command is not the first.");
                }
                this.f4101e = null;
            }
            ExecutorC1277f mo17576b = this.f4102f.mo17576b();
            if (!this.f4099c.m17760a() && this.f4100d.isEmpty() && !mo17576b.m17564b()) {
                AbstractC1293l.m17543a().mo17539b(f4097a, "No more commands & intents.", new Throwable[0]);
                if (this.f4107k != null) {
                    this.f4107k.mo17729a();
                }
            } else if (!this.f4100d.isEmpty()) {
                m17731g();
            }
        }
    }
}
