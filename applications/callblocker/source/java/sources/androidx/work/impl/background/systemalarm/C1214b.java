package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.AbstractC1293l;
import androidx.work.impl.AbstractC1142a;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.C1217e;
import androidx.work.impl.p055b.C1191p;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.background.systemalarm.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/b.class */
public class C1214b implements AbstractC1142a {

    /* renamed from: a */
    private static final String f4078a = AbstractC1293l.m17541a("CommandHandler");

    /* renamed from: b */
    private final Context f4079b;

    /* renamed from: c */
    private final Map<String, AbstractC1142a> f4080c = new HashMap();

    /* renamed from: d */
    private final Object f4081d = new Object();

    public C1214b(Context context) {
        this.f4079b = context;
    }

    /* renamed from: a */
    public static Intent m17759a(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    /* renamed from: a */
    public static Intent m17758a(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: a */
    public static Intent m17757a(Context context, String str, boolean z) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        return intent;
    }

    /* renamed from: a */
    private void m17756a(Intent intent, int i) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("KEY_WORKSPEC_ID");
        boolean z = extras.getBoolean("KEY_NEEDS_RESCHEDULE");
        AbstractC1293l.m17543a().mo17539b(f4078a, String.format("Handling onExecutionCompleted %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
        mo17680a(string, z);
    }

    /* renamed from: a */
    private void m17754a(Intent intent, C1217e c1217e) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        AbstractC1293l.m17543a().mo17539b(f4078a, String.format("Handing stopWork work for %s", string), new Throwable[0]);
        c1217e.m17734d().m17654b(string);
        C1213a.m17764a(this.f4079b, c1217e.m17734d(), string);
        c1217e.mo17680a(string, false);
    }

    /* renamed from: a */
    private static boolean m17753a(Bundle bundle, String... strArr) {
        boolean z = false;
        if (bundle != null) {
            if (!bundle.isEmpty()) {
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        z = true;
                        break;
                    }
                    z = false;
                    if (bundle.get(strArr[i]) == null) {
                        break;
                    }
                    i++;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    public static Intent m17752b(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_RESCHEDULE");
        return intent;
    }

    /* renamed from: b */
    public static Intent m17751b(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: b */
    private void m17750b(Intent intent, int i, C1217e c1217e) {
        String string = intent.getExtras().getString("KEY_WORKSPEC_ID");
        AbstractC1293l.m17543a().mo17539b(f4078a, String.format("Handling schedule work for %s", string), new Throwable[0]);
        WorkDatabase m17652c = c1217e.m17734d().m17652c();
        m17652c.m18291g();
        try {
            C1191p mo17794b = m17652c.mo17885o().mo17794b(string);
            if (mo17794b == null) {
                AbstractC1293l.m17543a().mo17537d(f4078a, "Skipping scheduling " + string + " because it's no longer in the DB", new Throwable[0]);
            } else if (mo17794b.f4014b.m17532a()) {
                AbstractC1293l.m17543a().mo17537d(f4078a, "Skipping scheduling " + string + "because it is finished.", new Throwable[0]);
            } else {
                long m17804c = mo17794b.m17804c();
                if (!mo17794b.m17803d()) {
                    AbstractC1293l.m17543a().mo17539b(f4078a, String.format("Setting up Alarms for %s at %s", string, Long.valueOf(m17804c)), new Throwable[0]);
                    C1213a.m17763a(this.f4079b, c1217e.m17734d(), string, m17804c);
                } else {
                    AbstractC1293l.m17543a().mo17539b(f4078a, String.format("Opportunistically setting an alarm for %s at %s", string, Long.valueOf(m17804c)), new Throwable[0]);
                    C1213a.m17763a(this.f4079b, c1217e.m17734d(), string, m17804c);
                    c1217e.m17738a(new C1217e.RunnableC1219a(c1217e, m17759a(this.f4079b), i));
                }
                m17652c.m18288j();
            }
        } finally {
            m17652c.m18290h();
        }
    }

    /* renamed from: c */
    public static Intent m17749c(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: c */
    private void m17748c(Intent intent, int i, C1217e c1217e) {
        Bundle extras = intent.getExtras();
        synchronized (this.f4081d) {
            String string = extras.getString("KEY_WORKSPEC_ID");
            AbstractC1293l.m17543a().mo17539b(f4078a, String.format("Handing delay met for %s", string), new Throwable[0]);
            if (!this.f4080c.containsKey(string)) {
                C1216d c1216d = new C1216d(this.f4079b, i, string, c1217e);
                this.f4080c.put(string, c1216d);
                c1216d.m17744a();
            } else {
                AbstractC1293l.m17543a().mo17539b(f4078a, String.format("WorkSpec %s is already being handled for ACTION_DELAY_MET", string), new Throwable[0]);
            }
        }
    }

    /* renamed from: d */
    private void m17747d(Intent intent, int i, C1217e c1217e) {
        AbstractC1293l.m17543a().mo17539b(f4078a, String.format("Handling constraints changed %s", intent), new Throwable[0]);
        new C1215c(this.f4079b, i, c1217e).m17745a();
    }

    /* renamed from: e */
    private void m17746e(Intent intent, int i, C1217e c1217e) {
        AbstractC1293l.m17543a().mo17539b(f4078a, String.format("Handling reschedule %s, %s", intent, Integer.valueOf(i)), new Throwable[0]);
        c1217e.m17734d().m17645i();
    }

    /* renamed from: a */
    public void m17755a(Intent intent, int i, C1217e c1217e) {
        String action = intent.getAction();
        if ("ACTION_CONSTRAINTS_CHANGED".equals(action)) {
            m17747d(intent, i, c1217e);
        } else if ("ACTION_RESCHEDULE".equals(action)) {
            m17746e(intent, i, c1217e);
        } else if (!m17753a(intent.getExtras(), "KEY_WORKSPEC_ID")) {
            AbstractC1293l.m17543a().mo17536e(f4078a, String.format("Invalid request for %s, requires %s.", action, "KEY_WORKSPEC_ID"), new Throwable[0]);
        } else if ("ACTION_SCHEDULE_WORK".equals(action)) {
            m17750b(intent, i, c1217e);
        } else if ("ACTION_DELAY_MET".equals(action)) {
            m17748c(intent, i, c1217e);
        } else if ("ACTION_STOP_WORK".equals(action)) {
            m17754a(intent, c1217e);
        } else if ("ACTION_EXECUTION_COMPLETED".equals(action)) {
            m17756a(intent, i);
        } else {
            AbstractC1293l.m17543a().mo17537d(f4078a, String.format("Ignoring intent %s", intent), new Throwable[0]);
        }
    }

    @Override // androidx.work.impl.AbstractC1142a
    /* renamed from: a */
    public void mo17680a(String str, boolean z) {
        synchronized (this.f4081d) {
            AbstractC1142a remove = this.f4080c.remove(str);
            if (remove != null) {
                remove.mo17680a(str, z);
            }
        }
    }

    /* renamed from: a */
    public boolean m17760a() {
        boolean z;
        synchronized (this.f4081d) {
            z = !this.f4080c.isEmpty();
        }
        return z;
    }
}
