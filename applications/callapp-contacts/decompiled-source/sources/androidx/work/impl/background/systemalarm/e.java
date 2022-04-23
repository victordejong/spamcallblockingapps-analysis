package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.d;
import androidx.work.impl.j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.g;
import androidx.work.impl.utils.n;
import androidx.work.k;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e.class */
public final class e implements androidx.work.impl.b {

    /* renamed from: a  reason: collision with root package name */
    static final String f6052a = k.a("SystemAlarmDispatcher");

    /* renamed from: b  reason: collision with root package name */
    final Context f6053b;

    /* renamed from: c  reason: collision with root package name */
    final androidx.work.impl.utils.b.a f6054c;

    /* renamed from: d  reason: collision with root package name */
    final n f6055d;
    final d e;
    final j f;
    final androidx.work.impl.background.systemalarm.b g;
    final List<Intent> h;
    Intent i;
    b j;
    private final Handler k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$a.class */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final e f6057a;

        /* renamed from: b  reason: collision with root package name */
        private final Intent f6058b;

        /* renamed from: c  reason: collision with root package name */
        private final int f6059c;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(e eVar, Intent intent, int i) {
            this.f6057a = eVar;
            this.f6058b = intent;
            this.f6059c = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f6057a.a(this.f6058b, this.f6059c);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$b.class */
    interface b {
        void a();
    }

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$c.class */
    static final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final e f6060a;

        c(e eVar) {
            this.f6060a = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            e eVar = this.f6060a;
            k.a();
            eVar.c();
            synchronized (eVar.h) {
                if (eVar.i != null) {
                    k.a();
                    String.format("Removing command %s", eVar.i);
                    if (eVar.h.remove(0).equals(eVar.i)) {
                        eVar.i = null;
                    } else {
                        throw new IllegalStateException("Dequeue-d command is not the first.");
                    }
                }
                g b2 = eVar.f6054c.b();
                if (!eVar.g.a() && eVar.h.isEmpty() && !b2.b()) {
                    k.a();
                    if (eVar.j != null) {
                        eVar.j.a();
                    }
                } else if (!eVar.h.isEmpty()) {
                    eVar.b();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Context context) {
        this(context, null, null);
    }

    e(Context context, d dVar, j jVar) {
        Context applicationContext = context.getApplicationContext();
        this.f6053b = applicationContext;
        this.g = new androidx.work.impl.background.systemalarm.b(applicationContext);
        this.f6055d = new n();
        jVar = jVar == null ? j.b(context) : jVar;
        this.f = jVar;
        dVar = dVar == null ? jVar.f : dVar;
        this.e = dVar;
        this.f6054c = jVar.f6119d;
        dVar.a(this);
        this.h = new ArrayList();
        this.i = null;
        this.k = new Handler(Looper.getMainLooper());
    }

    private boolean a(String str) {
        c();
        synchronized (this.h) {
            Iterator<Intent> it2 = this.h.iterator();
            do {
                if (!it2.hasNext()) {
                    return false;
                }
            } while (!str.equals(it2.next().getAction()));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        k.a();
        this.e.b(this);
        n nVar = this.f6055d;
        if (!nVar.f6213a.isShutdown()) {
            nVar.f6213a.shutdownNow();
        }
        this.j = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(b bVar) {
        if (this.j != null) {
            k.a().a(f6052a, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            this.j = bVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Runnable runnable) {
        this.k.post(runnable);
    }

    @Override // androidx.work.impl.b
    public final void a(String str, boolean z) {
        a(new a(this, androidx.work.impl.background.systemalarm.b.a(this.f6053b, str, z), 0));
    }

    public final boolean a(Intent intent, int i) {
        k.a();
        boolean z = false;
        String.format("Adding command %s (%s)", intent, Integer.valueOf(i));
        c();
        String action = intent.getAction();
        if (TextUtils.isEmpty(action)) {
            k.a().a(f6052a, "Unknown command. Ignoring");
            return false;
        } else if ("ACTION_CONSTRAINTS_CHANGED".equals(action) && a("ACTION_CONSTRAINTS_CHANGED")) {
            return false;
        } else {
            intent.putExtra("KEY_START_ID", i);
            synchronized (this.h) {
                if (!this.h.isEmpty()) {
                    z = true;
                }
                this.h.add(intent);
                if (!z) {
                    b();
                }
            }
            return true;
        }
    }

    final void b() {
        c();
        PowerManager.WakeLock a2 = androidx.work.impl.utils.k.a(this.f6053b, "ProcessCommand");
        try {
            a2.acquire();
            this.f.f6119d.a(new Runnable() { // from class: androidx.work.impl.background.systemalarm.e.1
                @Override // java.lang.Runnable
                public final void run() {
                    e eVar;
                    c cVar;
                    synchronized (e.this.h) {
                        e eVar2 = e.this;
                        eVar2.i = eVar2.h.get(0);
                    }
                    if (e.this.i != null) {
                        String action = e.this.i.getAction();
                        int intExtra = e.this.i.getIntExtra("KEY_START_ID", 0);
                        k.a();
                        String str = e.f6052a;
                        String.format("Processing command %s, %s", e.this.i, Integer.valueOf(intExtra));
                        PowerManager.WakeLock a3 = androidx.work.impl.utils.k.a(e.this.f6053b, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
                        try {
                            k.a();
                            String str2 = e.f6052a;
                            String.format("Acquiring operation wake lock (%s) %s", action, a3);
                            a3.acquire();
                            androidx.work.impl.background.systemalarm.b bVar = e.this.g;
                            Intent intent = e.this.i;
                            e eVar3 = e.this;
                            String action2 = intent.getAction();
                            if ("ACTION_CONSTRAINTS_CHANGED".equals(action2)) {
                                k.a();
                                String.format("Handling constraints changed %s", intent);
                                androidx.work.impl.background.systemalarm.c cVar2 = new androidx.work.impl.background.systemalarm.c(bVar.f6041b, intExtra, eVar3);
                                List<WorkSpec> scheduledWork = cVar2.f6046c.f.f6118c.j().getScheduledWork();
                                ConstraintProxy.a(cVar2.f6044a, scheduledWork);
                                cVar2.f6047d.a(scheduledWork);
                                ArrayList<WorkSpec> arrayList = new ArrayList(scheduledWork.size());
                                long currentTimeMillis = System.currentTimeMillis();
                                for (WorkSpec workSpec : scheduledWork) {
                                    String str3 = workSpec.id;
                                    if (currentTimeMillis >= workSpec.calculateNextRunTime() && (!workSpec.hasConstraints() || cVar2.f6047d.a(str3))) {
                                        arrayList.add(workSpec);
                                    }
                                }
                                for (WorkSpec workSpec2 : arrayList) {
                                    String str4 = workSpec2.id;
                                    Intent b2 = androidx.work.impl.background.systemalarm.b.b(cVar2.f6044a, str4);
                                    k.a();
                                    String.format("Creating a delay_met command for workSpec with id (%s)", str4);
                                    cVar2.f6046c.a(new a(cVar2.f6046c, b2, cVar2.f6045b));
                                }
                                cVar2.f6047d.a();
                            } else if ("ACTION_RESCHEDULE".equals(action2)) {
                                k.a();
                                String.format("Handling reschedule %s, %s", intent, Integer.valueOf(intExtra));
                                eVar3.f.c();
                            } else if (!androidx.work.impl.background.systemalarm.b.a(intent.getExtras(), "KEY_WORKSPEC_ID")) {
                                k.a().a(androidx.work.impl.background.systemalarm.b.f6040a, String.format("Invalid request for %s, requires %s.", action2, "KEY_WORKSPEC_ID"), new Throwable[0]);
                            } else if ("ACTION_SCHEDULE_WORK".equals(action2)) {
                                String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
                                k.a();
                                String.format("Handling schedule work for %s", string);
                                WorkDatabase workDatabase = eVar3.f.f6118c;
                                workDatabase.e();
                                WorkSpec workSpec3 = workDatabase.j().getWorkSpec(string);
                                if (workSpec3 == null) {
                                    k a4 = k.a();
                                    String str5 = androidx.work.impl.background.systemalarm.b.f6040a;
                                    a4.a(str5, "Skipping scheduling " + string + " because it's no longer in the DB");
                                } else if (workSpec3.state.isFinished()) {
                                    k a5 = k.a();
                                    String str6 = androidx.work.impl.background.systemalarm.b.f6040a;
                                    a5.a(str6, "Skipping scheduling " + string + "because it is finished.");
                                } else {
                                    long calculateNextRunTime = workSpec3.calculateNextRunTime();
                                    if (!workSpec3.hasConstraints()) {
                                        k.a();
                                        String.format("Setting up Alarms for %s at %s", string, Long.valueOf(calculateNextRunTime));
                                        androidx.work.impl.background.systemalarm.a.a(bVar.f6041b, eVar3.f, string, calculateNextRunTime);
                                    } else {
                                        k.a();
                                        String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(calculateNextRunTime));
                                        androidx.work.impl.background.systemalarm.a.a(bVar.f6041b, eVar3.f, string, calculateNextRunTime);
                                        eVar3.a(new a(eVar3, androidx.work.impl.background.systemalarm.b.a(bVar.f6041b), intExtra));
                                    }
                                    workDatabase.g();
                                }
                                workDatabase.f();
                            } else if ("ACTION_DELAY_MET".equals(action2)) {
                                Bundle extras = intent.getExtras();
                                synchronized (bVar.f6043d) {
                                    String string2 = extras.getString("KEY_WORKSPEC_ID");
                                    k.a();
                                    String.format("Handing delay met for %s", string2);
                                    if (!bVar.f6042c.containsKey(string2)) {
                                        d dVar = new d(bVar.f6041b, intExtra, string2, eVar3);
                                        bVar.f6042c.put(string2, dVar);
                                        dVar.f = androidx.work.impl.utils.k.a(dVar.f6048a, String.format("%s (%s)", dVar.f6050c, Integer.valueOf(dVar.f6049b)));
                                        k.a();
                                        String.format("Acquiring wakelock %s for WorkSpec %s", dVar.f, dVar.f6050c);
                                        dVar.f.acquire();
                                        WorkSpec workSpec4 = dVar.f6051d.f.f6118c.j().getWorkSpec(dVar.f6050c);
                                        if (workSpec4 == null) {
                                            dVar.a();
                                        } else {
                                            dVar.g = workSpec4.hasConstraints();
                                            if (!dVar.g) {
                                                k.a();
                                                String.format("No constraints for %s", dVar.f6050c);
                                                dVar.a(Collections.singletonList(dVar.f6050c));
                                            } else {
                                                dVar.e.a((Iterable<WorkSpec>) Collections.singletonList(workSpec4));
                                            }
                                        }
                                    } else {
                                        k.a();
                                        String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string2);
                                    }
                                }
                            } else if ("ACTION_STOP_WORK".equals(action2)) {
                                String string3 = intent.getExtras().getString("KEY_WORKSPEC_ID");
                                k.a();
                                String.format("Handing stopWork work for %s", string3);
                                eVar3.f.c(string3);
                                androidx.work.impl.background.systemalarm.a.a(bVar.f6041b, eVar3.f, string3);
                                eVar3.a(string3, false);
                            } else if ("ACTION_EXECUTION_COMPLETED".equals(action2)) {
                                Bundle extras2 = intent.getExtras();
                                String string4 = extras2.getString("KEY_WORKSPEC_ID");
                                boolean z = extras2.getBoolean("KEY_NEEDS_RESCHEDULE");
                                k.a();
                                String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(intExtra));
                                bVar.a(string4, z);
                            } else {
                                k.a().a(androidx.work.impl.background.systemalarm.b.f6040a, String.format("Ignoring intent %s", intent));
                            }
                            k.a();
                            String str7 = e.f6052a;
                            String.format("Releasing operation wake lock (%s) %s", action, a3);
                            a3.release();
                            eVar = e.this;
                            cVar = new c(eVar);
                        } catch (Throwable th) {
                            try {
                                k.a().a(e.f6052a, "Unexpected error in onHandleIntent", th);
                                k.a();
                                String str8 = e.f6052a;
                                String.format("Releasing operation wake lock (%s) %s", action, a3);
                                a3.release();
                                eVar = e.this;
                                cVar = new c(eVar);
                            } catch (Throwable th2) {
                                k.a();
                                String str9 = e.f6052a;
                                String.format("Releasing operation wake lock (%s) %s", action, a3);
                                a3.release();
                                e eVar4 = e.this;
                                eVar4.a(new c(eVar4));
                                throw th2;
                            }
                        }
                        eVar.a(cVar);
                    }
                }
            });
        } finally {
            a2.release();
        }
    }

    final void c() {
        if (this.k.getLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Needs to be invoked on the main thread.");
        }
    }
}
