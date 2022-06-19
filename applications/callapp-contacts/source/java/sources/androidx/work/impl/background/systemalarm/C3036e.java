package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.impl.AbstractC3027b;
import androidx.work.impl.C3046d;
import androidx.work.impl.C3068j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.C3132k;
import androidx.work.impl.utils.C3137n;
import androidx.work.impl.utils.ExecutorC3126g;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.e */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e.class */
public final class C3036e implements AbstractC3027b {

    /* renamed from: a */
    static final String f11252a = AbstractC3145k.m39275a("SystemAlarmDispatcher");

    /* renamed from: b */
    final Context f11253b;

    /* renamed from: c */
    final AbstractC3119a f11254c;

    /* renamed from: d */
    final C3137n f11255d;

    /* renamed from: e */
    final C3046d f11256e;

    /* renamed from: f */
    final C3068j f11257f;

    /* renamed from: g */
    final C3033b f11258g;

    /* renamed from: h */
    final List<Intent> f11259h;

    /* renamed from: i */
    Intent f11260i;

    /* renamed from: j */
    AbstractC3039b f11261j;

    /* renamed from: k */
    private final Handler f11262k;

    /* renamed from: androidx.work.impl.background.systemalarm.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$a.class */
    public static final class RunnableC3038a implements Runnable {

        /* renamed from: a */
        private final C3036e f11264a;

        /* renamed from: b */
        private final Intent f11265b;

        /* renamed from: c */
        private final int f11266c;

        public RunnableC3038a(C3036e c3036e, Intent intent, int i) {
            this.f11264a = c3036e;
            this.f11265b = intent;
            this.f11266c = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f11264a.m39416a(this.f11265b, this.f11266c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.background.systemalarm.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$b.class */
    public interface AbstractC3039b {
        /* renamed from: a */
        void mo39410a();
    }

    /* renamed from: androidx.work.impl.background.systemalarm.e$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$c.class */
    static final class RunnableC3040c implements Runnable {

        /* renamed from: a */
        private final C3036e f11267a;

        RunnableC3040c(C3036e c3036e) {
            this.f11267a = c3036e;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C3036e c3036e = this.f11267a;
            AbstractC3145k.m39277a();
            c3036e.m39411c();
            synchronized (c3036e.f11259h) {
                if (c3036e.f11260i != null) {
                    AbstractC3145k.m39277a();
                    String.format("Removing command %s", c3036e.f11260i);
                    if (!c3036e.f11259h.remove(0).equals(c3036e.f11260i)) {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                    c3036e.f11260i = null;
                }
                ExecutorC3126g mo39301b = c3036e.f11254c.mo39301b();
                if (!c3036e.f11258g.m39427a() && c3036e.f11259h.isEmpty() && !mo39301b.m39291b()) {
                    AbstractC3145k.m39277a();
                    if (c3036e.f11261j != null) {
                        c3036e.f11261j.mo39410a();
                    }
                } else if (!c3036e.f11259h.isEmpty()) {
                    c3036e.m39412b();
                }
            }
        }
    }

    public C3036e(Context context) {
        this(context, null, null);
    }

    C3036e(Context context, C3046d c3046d, C3068j c3068j) {
        Context applicationContext = context.getApplicationContext();
        this.f11253b = applicationContext;
        this.f11258g = new C3033b(applicationContext);
        this.f11255d = new C3137n();
        c3068j = c3068j == null ? C3068j.m39359b(context) : c3068j;
        this.f11257f = c3068j;
        c3046d = c3046d == null ? c3068j.f11358f : c3046d;
        this.f11256e = c3046d;
        this.f11254c = c3068j.f11356d;
        c3046d.m39398a(this);
        this.f11259h = new ArrayList();
        this.f11260i = null;
        this.f11262k = new Handler(Looper.getMainLooper());
    }

    /* renamed from: a */
    private boolean m39413a(String str) {
        m39411c();
        synchronized (this.f11259h) {
            Iterator<Intent> it2 = this.f11259h.iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!str.equals(it2.next().getAction()));
            return true;
        }
    }

    /* renamed from: a */
    public final void m39417a() {
        AbstractC3145k.m39277a();
        this.f11256e.m39394b(this);
        C3137n c3137n = this.f11255d;
        if (!c3137n.f11488a.isShutdown()) {
            c3137n.f11488a.shutdownNow();
        }
        this.f11261j = null;
    }

    /* renamed from: a */
    public final void m39415a(AbstractC3039b abstractC3039b) {
        if (this.f11261j != null) {
            AbstractC3145k.m39277a().mo39273a(f11252a, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.f11261j = abstractC3039b;
        }
    }

    /* renamed from: a */
    public final void m39414a(Runnable runnable) {
        this.f11262k.post(runnable);
    }

    @Override // androidx.work.impl.AbstractC3027b
    /* renamed from: a */
    public final void mo39374a(String str, boolean z) {
        m39414a(new RunnableC3038a(this, C3033b.m39424a(this.f11253b, str, z), 0));
    }

    /* renamed from: a */
    public final boolean m39416a(Intent intent, int i) {
        AbstractC3145k.m39277a();
        String.format("Adding command %s (%s)", intent, Integer.valueOf(i));
        m39411c();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            AbstractC3145k.m39277a().mo39274a(f11252a, "Unknown command. Ignoring");
            return false;
        } else if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && m39413a("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        } else {
            intent.putExtra("KEY_START_ID", i);
            synchronized (this.f11259h) {
                boolean z = false;
                if (!this.f11259h.isEmpty()) {
                    z = true;
                }
                this.f11259h.add(intent);
                if (!z) {
                    m39412b();
                }
            }
            return true;
        }
    }

    /* renamed from: b */
    final void m39412b() {
        m39411c();
        PowerManager.WakeLock m39287a = C3132k.m39287a(this.f11253b, "ProcessCommand");
        try {
            m39287a.acquire();
            this.f11257f.f11356d.mo39302a(new Runnable() { // from class: androidx.work.impl.background.systemalarm.e.1
                @Override // java.lang.Runnable
                public final void run() {
                    C3036e c3036e;
                    RunnableC3040c runnableC3040c;
                    synchronized (C3036e.this.f11259h) {
                        C3036e c3036e2 = C3036e.this;
                        c3036e2.f11260i = c3036e2.f11259h.get(0);
                    }
                    if (C3036e.this.f11260i != null) {
                        String action = C3036e.this.f11260i.getAction();
                        int intExtra = C3036e.this.f11260i.getIntExtra("KEY_START_ID", 0);
                        AbstractC3145k.m39277a();
                        String str = C3036e.f11252a;
                        String.format("Processing command %s, %s", C3036e.this.f11260i, Integer.valueOf(intExtra));
                        PowerManager.WakeLock m39287a2 = C3132k.m39287a(C3036e.this.f11253b, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                        try {
                            AbstractC3145k.m39277a();
                            String str2 = C3036e.f11252a;
                            String.format("Acquiring operation wake lock (%s) %s", action, m39287a2);
                            m39287a2.acquire();
                            C3033b c3033b = C3036e.this.f11258g;
                            Intent intent = C3036e.this.f11260i;
                            C3036e c3036e3 = C3036e.this;
                            String action2 = intent.getAction();
                            if ("ACTION_CONSTRAINTS_CHANGED".equals(action2)) {
                                AbstractC3145k.m39277a();
                                String.format("Handling constraints changed %s", intent);
                                C3034c c3034c = new C3034c(c3033b.f11234b, intExtra, c3036e3);
                                List<WorkSpec> scheduledWork = c3034c.f11240c.f11257f.f11355c.mo39474j().getScheduledWork();
                                ConstraintProxy.m39434a(c3034c.f11238a, scheduledWork);
                                c3034c.f11241d.m39441a(scheduledWork);
                                ArrayList<WorkSpec> arrayList = new ArrayList(scheduledWork.size());
                                long currentTimeMillis = System.currentTimeMillis();
                                for (WorkSpec workSpec : scheduledWork) {
                                    String str3 = workSpec.f11397id;
                                    if (currentTimeMillis >= workSpec.calculateNextRunTime() && (!workSpec.hasConstraints() || c3034c.f11241d.m39440a(str3))) {
                                        arrayList.add(workSpec);
                                    }
                                }
                                for (WorkSpec workSpec2 : arrayList) {
                                    String str4 = workSpec2.f11397id;
                                    Intent m39421b = C3033b.m39421b(c3034c.f11238a, str4);
                                    AbstractC3145k.m39277a();
                                    String.format("Creating a delay_met command for workSpec with id (%s)", str4);
                                    c3034c.f11240c.m39414a(new RunnableC3038a(c3034c.f11240c, m39421b, c3034c.f11239b));
                                }
                                c3034c.f11241d.m39442a();
                            } else if ("ACTION_RESCHEDULE".equals(action2)) {
                                AbstractC3145k.m39277a();
                                String.format("Handling reschedule %s, %s", intent, Integer.valueOf(intExtra));
                                c3036e3.f11257f.m39357c();
                            } else if (!C3033b.m39423a(intent.getExtras(), "KEY_WORKSPEC_ID")) {
                                AbstractC3145k.m39277a().mo39273a(C3033b.f11233a, String.format("Invalid request for %s, requires %s.", action2, "KEY_WORKSPEC_ID"), new Throwable[0]);
                            } else if ("ACTION_SCHEDULE_WORK".equals(action2)) {
                                String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
                                AbstractC3145k.m39277a();
                                String.format("Handling schedule work for %s", string);
                                WorkDatabase workDatabase = c3036e3.f11257f.f11355c;
                                workDatabase.m39959e();
                                WorkSpec workSpec3 = workDatabase.mo39474j().getWorkSpec(string);
                                if (workSpec3 == null) {
                                    AbstractC3145k m39277a = AbstractC3145k.m39277a();
                                    String str5 = C3033b.f11233a;
                                    m39277a.mo39274a(str5, "Skipping scheduling " + string + " because it's no longer in the DB");
                                } else if (workSpec3.state.isFinished()) {
                                    AbstractC3145k m39277a2 = AbstractC3145k.m39277a();
                                    String str6 = C3033b.f11233a;
                                    m39277a2.mo39274a(str6, "Skipping scheduling " + string + "because it is finished.");
                                } else {
                                    long calculateNextRunTime = workSpec3.calculateNextRunTime();
                                    if (!workSpec3.hasConstraints()) {
                                        AbstractC3145k.m39277a();
                                        String.format("Setting up Alarms for %s at %s", string, Long.valueOf(calculateNextRunTime));
                                        C3032a.m39430a(c3033b.f11234b, c3036e3.f11257f, string, calculateNextRunTime);
                                    } else {
                                        AbstractC3145k.m39277a();
                                        String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(calculateNextRunTime));
                                        C3032a.m39430a(c3033b.f11234b, c3036e3.f11257f, string, calculateNextRunTime);
                                        c3036e3.m39414a(new RunnableC3038a(c3036e3, C3033b.m39426a(c3033b.f11234b), intExtra));
                                    }
                                    workDatabase.m39957g();
                                }
                                workDatabase.m39958f();
                            } else if ("ACTION_DELAY_MET".equals(action2)) {
                                Bundle extras = intent.getExtras();
                                synchronized (c3033b.f11236d) {
                                    String string2 = extras.getString("KEY_WORKSPEC_ID");
                                    AbstractC3145k.m39277a();
                                    String.format("Handing delay met for %s", string2);
                                    if (!c3033b.f11235c.containsKey(string2)) {
                                        C3035d c3035d = new C3035d(c3033b.f11234b, intExtra, string2, c3036e3);
                                        c3033b.f11235c.put(string2, c3035d);
                                        c3035d.f11248f = C3132k.m39287a(c3035d.f11243a, String.format("%s (%s)", c3035d.f11245c, Integer.valueOf(c3035d.f11244b)));
                                        AbstractC3145k.m39277a();
                                        String.format("Acquiring wakelock %s for WorkSpec %s", c3035d.f11248f, c3035d.f11245c);
                                        c3035d.f11248f.acquire();
                                        WorkSpec workSpec4 = c3035d.f11246d.f11257f.f11355c.mo39474j().getWorkSpec(c3035d.f11245c);
                                        if (workSpec4 == null) {
                                            c3035d.m39419a();
                                        } else {
                                            c3035d.f11249g = workSpec4.hasConstraints();
                                            if (!c3035d.f11249g) {
                                                AbstractC3145k.m39277a();
                                                String.format("No constraints for %s", c3035d.f11245c);
                                                c3035d.mo39282a(Collections.singletonList(c3035d.f11245c));
                                            } else {
                                                c3035d.f11247e.m39441a((Iterable<WorkSpec>) Collections.singletonList(workSpec4));
                                            }
                                        }
                                    } else {
                                        AbstractC3145k.m39277a();
                                        String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string2);
                                    }
                                }
                            } else if ("ACTION_STOP_WORK".equals(action2)) {
                                String string3 = intent.getExtras().getString("KEY_WORKSPEC_ID");
                                AbstractC3145k.m39277a();
                                String.format("Handing stopWork work for %s", string3);
                                c3036e3.f11257f.m39356c(string3);
                                C3032a.m39431a(c3033b.f11234b, c3036e3.f11257f, string3);
                                c3036e3.mo39374a(string3, false);
                            } else if ("ACTION_EXECUTION_COMPLETED".equals(action2)) {
                                Bundle extras2 = intent.getExtras();
                                String string4 = extras2.getString("KEY_WORKSPEC_ID");
                                boolean z = extras2.getBoolean("KEY_NEEDS_RESCHEDULE");
                                AbstractC3145k.m39277a();
                                String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(intExtra));
                                c3033b.mo39374a(string4, z);
                            } else {
                                AbstractC3145k.m39277a().mo39274a(C3033b.f11233a, String.format("Ignoring intent %s", intent));
                            }
                            AbstractC3145k.m39277a();
                            String str7 = C3036e.f11252a;
                            String.format("Releasing operation wake lock (%s) %s", action, m39287a2);
                            m39287a2.release();
                            c3036e = C3036e.this;
                            runnableC3040c = new RunnableC3040c(c3036e);
                        } catch (Throwable th) {
                            try {
                                AbstractC3145k.m39277a().mo39273a(C3036e.f11252a, "Unexpected error in onHandleIntent", th);
                                AbstractC3145k.m39277a();
                                String str8 = C3036e.f11252a;
                                String.format("Releasing operation wake lock (%s) %s", action, m39287a2);
                                m39287a2.release();
                                c3036e = C3036e.this;
                                runnableC3040c = new RunnableC3040c(c3036e);
                            } catch (Throwable th2) {
                                AbstractC3145k.m39277a();
                                String str9 = C3036e.f11252a;
                                String.format("Releasing operation wake lock (%s) %s", action, m39287a2);
                                m39287a2.release();
                                C3036e c3036e4 = C3036e.this;
                                c3036e4.m39414a(new RunnableC3040c(c3036e4));
                                throw th2;
                            }
                        }
                        c3036e.m39414a(runnableC3040c);
                    }
                }
            });
        } finally {
            m39287a.release();
        }
    }

    /* renamed from: c */
    final void m39411c() {
        if (this.f11262k.getLooper().getThread() == Thread.currentThread()) {
            return;
        }
        throw new IllegalStateException("Needs to be invoked on the main thread.");
    }
}
