package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.AbstractC1404j;
import androidx.work.C1240e;
import androidx.work.impl.AbstractC1250b;
import androidx.work.impl.C1289j;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p015m.AbstractC1299c;
import androidx.work.impl.p015m.C1300d;
import androidx.work.impl.p018n.C1344p;
import androidx.work.impl.utils.p019o.AbstractC1399a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
/* renamed from: androidx.work.impl.foreground.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b.class */
public class C1274b implements AbstractC1299c, AbstractC1250b {

    /* renamed from: d */
    static final String f5408d = AbstractC1404j.m30159f("SystemFgDispatcher");

    /* renamed from: e */
    private Context f5409e;

    /* renamed from: f */
    private C1289j f5410f;

    /* renamed from: g */
    private final AbstractC1399a f5411g;

    /* renamed from: m */
    final C1300d f5417m;

    /* renamed from: n */
    private AbstractC1276b f5418n;

    /* renamed from: h */
    final Object f5412h = new Object();

    /* renamed from: i */
    String f5413i = null;

    /* renamed from: j */
    final Map<String, C1240e> f5414j = new LinkedHashMap();

    /* renamed from: l */
    final Set<C1344p> f5416l = new HashSet();

    /* renamed from: k */
    final Map<String, C1344p> f5415k = new HashMap();

    /* renamed from: androidx.work.impl.foreground.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b$a.class */
    public class RunnableC1275a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ WorkDatabase f5419d;

        /* renamed from: e */
        final /* synthetic */ String f5420e;

        RunnableC1275a(WorkDatabase workDatabase, String str) {
            C1274b.this = r4;
            this.f5419d = workDatabase;
            this.f5420e = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1344p mo30269n = this.f5419d.mo30527B().mo30269n(this.f5420e);
            if (mo30269n == null || !mo30269n.m30285b()) {
                return;
            }
            synchronized (C1274b.this.f5412h) {
                C1274b.this.f5415k.put(this.f5420e, mo30269n);
                C1274b.this.f5416l.add(mo30269n);
                C1274b c1274b = C1274b.this;
                c1274b.f5417m.m30346d(c1274b.f5416l);
            }
        }
    }

    /* renamed from: androidx.work.impl.foreground.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b$b.class */
    public interface AbstractC1276b {
        /* renamed from: d */
        void mo30420d(int i, int i2, Notification notification);

        /* renamed from: e */
        void mo30419e(int i, Notification notification);

        /* renamed from: f */
        void mo30418f(int i);

        void stop();
    }

    public C1274b(Context context) {
        this.f5409e = context;
        C1289j m30392k = C1289j.m30392k(this.f5409e);
        this.f5410f = m30392k;
        AbstractC1399a m30387p = m30392k.m30387p();
        this.f5411g = m30387p;
        this.f5417m = new C1300d(this.f5409e, m30387p, this);
        this.f5410f.m30390m().m30448c(this);
    }

    /* renamed from: a */
    public static Intent m30430a(Context context, String str, C1240e c1240e) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", c1240e.m30540c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c1240e.m30542a());
        intent.putExtra("KEY_NOTIFICATION", c1240e.m30541b());
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: c */
    public static Intent m30429c(Context context, String str, C1240e c1240e) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", c1240e.m30540c());
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c1240e.m30542a());
        intent.putExtra("KEY_NOTIFICATION", c1240e.m30541b());
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: e */
    public static Intent m30428e(Context context) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    /* renamed from: g */
    private void m30427g(Intent intent) {
        AbstractC1404j.m30161c().mo30156d(f5408d, String.format("Stopping foreground work for %s", intent), new Throwable[0]);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f5410f.m30397f(UUID.fromString(stringExtra));
    }

    /* renamed from: h */
    private void m30426h(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        AbstractC1404j.m30161c().mo30158a(f5408d, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2)), new Throwable[0]);
        if (notification == null || this.f5418n == null) {
            return;
        }
        this.f5414j.put(stringExtra, new C1240e(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.f5413i)) {
            this.f5413i = stringExtra;
            this.f5418n.mo30420d(intExtra, intExtra2, notification);
            return;
        }
        this.f5418n.mo30419e(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        for (Map.Entry<String, C1240e> entry : this.f5414j.entrySet()) {
            i |= entry.getValue().m30542a();
        }
        C1240e c1240e = this.f5414j.get(this.f5413i);
        if (c1240e == null) {
            return;
        }
        this.f5418n.mo30420d(c1240e.m30540c(), i, c1240e.m30541b());
    }

    /* renamed from: i */
    private void m30425i(Intent intent) {
        AbstractC1404j.m30161c().mo30156d(f5408d, String.format("Started foreground service %s", intent), new Throwable[0]);
        this.f5411g.mo30172b(new RunnableC1275a(this.f5410f.m30388o(), intent.getStringExtra("KEY_WORKSPEC_ID")));
    }

    @Override // androidx.work.impl.p015m.AbstractC1299c
    /* renamed from: b */
    public void mo30168b(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                AbstractC1404j.m30161c().mo30158a(f5408d, String.format("Constraints unmet for WorkSpec %s", str), new Throwable[0]);
                this.f5410f.m30380w(str);
            }
        }
    }

    @Override // androidx.work.impl.AbstractC1250b
    /* renamed from: d */
    public void mo30356d(String str, boolean z) {
        Map.Entry<String, C1240e> entry;
        synchronized (this.f5412h) {
            C1344p remove = this.f5415k.remove(str);
            if (remove != null ? this.f5416l.remove(remove) : false) {
                this.f5417m.m30346d(this.f5416l);
            }
        }
        C1240e remove2 = this.f5414j.remove(str);
        if (str.equals(this.f5413i) && this.f5414j.size() > 0) {
            Iterator<Map.Entry<String, C1240e>> it = this.f5414j.entrySet().iterator();
            Map.Entry<String, C1240e> next = it.next();
            while (true) {
                entry = next;
                if (!it.hasNext()) {
                    break;
                }
                next = it.next();
            }
            this.f5413i = entry.getKey();
            if (this.f5418n != null) {
                C1240e value = entry.getValue();
                this.f5418n.mo30420d(value.m30540c(), value.m30542a(), value.m30541b());
                this.f5418n.mo30418f(value.m30540c());
            }
        }
        AbstractC1276b abstractC1276b = this.f5418n;
        if (remove2 == null || abstractC1276b == null) {
            return;
        }
        AbstractC1404j.m30161c().mo30158a(f5408d, String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(remove2.m30540c()), str, Integer.valueOf(remove2.m30542a())), new Throwable[0]);
        abstractC1276b.mo30418f(remove2.m30540c());
    }

    @Override // androidx.work.impl.p015m.AbstractC1299c
    /* renamed from: f */
    public void mo30164f(List<String> list) {
    }

    /* renamed from: j */
    void m30424j(Intent intent) {
        AbstractC1404j.m30161c().mo30156d(f5408d, "Stopping foreground service", new Throwable[0]);
        AbstractC1276b abstractC1276b = this.f5418n;
        if (abstractC1276b != null) {
            abstractC1276b.stop();
        }
    }

    /* renamed from: k */
    public void m30423k() {
        this.f5418n = null;
        synchronized (this.f5412h) {
            this.f5417m.m30345e();
        }
        this.f5410f.m30390m().m30443i(this);
    }

    /* renamed from: l */
    public void m30422l(Intent intent) {
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            m30425i(intent);
            m30426h(intent);
        } else if ("ACTION_NOTIFY".equals(action)) {
            m30426h(intent);
        } else if ("ACTION_CANCEL_WORK".equals(action)) {
            m30427g(intent);
        } else if (!"ACTION_STOP_FOREGROUND".equals(action)) {
        } else {
            m30424j(intent);
        }
    }

    /* renamed from: m */
    public void m30421m(AbstractC1276b abstractC1276b) {
        if (this.f5418n != null) {
            AbstractC1404j.m30161c().mo30157b(f5408d, "A callback already exists.", new Throwable[0]);
        } else {
            this.f5418n = abstractC1276b;
        }
    }
}
