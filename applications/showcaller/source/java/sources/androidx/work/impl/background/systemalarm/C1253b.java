package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.AbstractC1404j;
import androidx.work.impl.AbstractC1250b;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.C1256e;
import androidx.work.impl.p018n.C1344p;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.background.systemalarm.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/b.class */
public class C1253b implements AbstractC1250b {

    /* renamed from: d */
    private static final String f5326d = AbstractC1404j.m30159f("CommandHandler");

    /* renamed from: e */
    private final Context f5327e;

    /* renamed from: f */
    private final Map<String, AbstractC1250b> f5328f = new HashMap();

    /* renamed from: g */
    private final Object f5329g = new Object();

    public C1253b(Context context) {
        this.f5327e = context;
    }

    /* renamed from: a */
    public static Intent m30494a(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    /* renamed from: b */
    public static Intent m30493b(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: c */
    public static Intent m30492c(Context context, String str, boolean z) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        return intent;
    }

    /* renamed from: e */
    public static Intent m30491e(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_RESCHEDULE");
        return intent;
    }

    /* renamed from: f */
    public static Intent m30490f(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: g */
    public static Intent m30489g(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: h */
    private void m30488h(Intent intent, int i, C1256e c1256e) {
        AbstractC1404j.m30161c().mo30158a(f5326d, String.format("Handling constraints changed %s", intent), new Throwable[0]);
        new C1254c(this.f5327e, i, c1256e).m30479a();
    }

    /* renamed from: i */
    private void m30487i(Intent intent, int i, C1256e c1256e) {
        Bundle extras = intent.getExtras();
        synchronized (this.f5329g) {
            String string = extras.getString("KEY_WORKSPEC_ID");
            AbstractC1404j m30161c = AbstractC1404j.m30161c();
            String str = f5326d;
            m30161c.mo30158a(str, String.format("Handing delay met for %s", string), new Throwable[0]);
            if (!this.f5328f.containsKey(string)) {
                C1255d c1255d = new C1255d(this.f5327e, i, string, c1256e);
                this.f5328f.put(string, c1255d);
                c1255d.m30477e();
            } else {
                AbstractC1404j.m30161c().mo30158a(str, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string), new Throwable[0]);
            }
        }
    }

    /* renamed from: j */
    private void m30486j(Intent intent, int i) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("KEY_WORKSPEC_ID");
        boolean z = extras.getBoolean("KEY_NEEDS_RESCHEDULE");
        AbstractC1404j.m30161c().mo30158a(f5326d, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
        mo30356d(string, z);
    }

    /* renamed from: k */
    private void m30485k(Intent intent, int i, C1256e c1256e) {
        AbstractC1404j.m30161c().mo30158a(f5326d, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
        c1256e.m30470g().m30384s();
    }

    /* renamed from: l */
    private void m30484l(Intent intent, int i, C1256e c1256e) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        AbstractC1404j m30161c = AbstractC1404j.m30161c();
        String str = f5326d;
        m30161c.mo30158a(str, String.format("Handling schedule work for %s", string), new Throwable[0]);
        WorkDatabase m30388o = c1256e.m30470g().m30388o();
        m30388o.m31293c();
        try {
            C1344p mo30269n = m30388o.mo30527B().mo30269n(string);
            if (mo30269n == null) {
                AbstractC1404j m30161c2 = AbstractC1404j.m30161c();
                m30161c2.mo30154h(str, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
            } else if (mo30269n.f5579d.isFinished()) {
                AbstractC1404j m30161c3 = AbstractC1404j.m30161c();
                m30161c3.mo30154h(str, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
            } else {
                long m30286a = mo30269n.m30286a();
                if (!mo30269n.m30285b()) {
                    AbstractC1404j.m30161c().mo30158a(str, String.format("Setting up Alarms for %s at %s", string, Long.valueOf(m30286a)), new Throwable[0]);
                    C1252a.m30496c(this.f5327e, c1256e.m30470g(), string, m30286a);
                } else {
                    AbstractC1404j.m30161c().mo30158a(str, String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(m30286a)), new Throwable[0]);
                    C1252a.m30496c(this.f5327e, c1256e.m30470g(), string, m30286a);
                    c1256e.m30466k(new C1256e.RunnableC1258b(c1256e, m30494a(this.f5327e), i));
                }
                m30388o.m31280r();
            }
        } finally {
            m30388o.m31291g();
        }
    }

    /* renamed from: m */
    private void m30483m(Intent intent, C1256e c1256e) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        AbstractC1404j.m30161c().mo30158a(f5326d, String.format("Handing stopWork work for %s", string), new Throwable[0]);
        c1256e.m30470g().m30379x(string);
        C1252a.m30498a(this.f5327e, c1256e.m30470g(), string);
        c1256e.mo30356d(string, false);
    }

    /* renamed from: n */
    private static boolean m30482n(Bundle bundle, String... strArr) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (String str : strArr) {
            if (bundle.get(str) == null) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.work.impl.AbstractC1250b
    /* renamed from: d */
    public void mo30356d(String str, boolean z) {
        synchronized (this.f5329g) {
            AbstractC1250b remove = this.f5328f.remove(str);
            if (remove != null) {
                remove.mo30356d(str, z);
            }
        }
    }

    /* renamed from: o */
    public boolean m30481o() {
        boolean z;
        synchronized (this.f5329g) {
            z = !this.f5328f.isEmpty();
        }
        return z;
    }

    /* renamed from: p */
    public void m30480p(Intent intent, int i, C1256e c1256e) {
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            m30488h(intent, i, c1256e);
        } else if ("ACTION_RESCHEDULE".equals(action)) {
            m30485k(intent, i, c1256e);
        } else if (!m30482n(intent.getExtras(), "KEY_WORKSPEC_ID")) {
            AbstractC1404j.m30161c().mo30157b(f5326d, String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID"), new Throwable[0]);
        } else if ("ACTION_SCHEDULE_WORK".equals(action)) {
            m30484l(intent, i, c1256e);
        } else if ("ACTION_DELAY_MET".equals(action)) {
            m30487i(intent, i, c1256e);
        } else if ("ACTION_STOP_WORK".equals(action)) {
            m30483m(intent, c1256e);
        } else if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
            m30486j(intent, i);
        } else {
            AbstractC1404j.m30161c().mo30154h(f5326d, String.format("Ignoring intent %s", intent), new Throwable[0]);
        }
    }
}
