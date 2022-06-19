package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.AbstractC1293l;
import androidx.work.C1137h;
import androidx.work.impl.AbstractC1142a;
import androidx.work.impl.C1249i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.p052a.AbstractC1165c;
import androidx.work.impl.p052a.C1166d;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.p058b.AbstractC1271a;
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
public class C1236b implements AbstractC1142a, AbstractC1165c {

    /* renamed from: a */
    static final String f4168a = AbstractC1293l.m17541a("SystemFgDispatcher");

    /* renamed from: h */
    final C1166d f4175h;

    /* renamed from: i */
    private Context f4176i;

    /* renamed from: j */
    private C1249i f4177j;

    /* renamed from: k */
    private final AbstractC1271a f4178k;

    /* renamed from: l */
    private AbstractC1238a f4179l;

    /* renamed from: b */
    final Object f4169b = new Object();

    /* renamed from: c */
    String f4170c = null;

    /* renamed from: d */
    C1137h f4171d = null;

    /* renamed from: e */
    final Map<String, C1137h> f4172e = new LinkedHashMap();

    /* renamed from: g */
    final Set<C1191p> f4174g = new HashSet();

    /* renamed from: f */
    final Map<String, C1191p> f4173f = new HashMap();

    /* renamed from: androidx.work.impl.foreground.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b$a.class */
    public interface AbstractC1238a {
        /* renamed from: a */
        void mo17675a();

        /* renamed from: a */
        void mo17674a(int i);

        /* renamed from: a */
        void mo17673a(int i, int i2, Notification notification);

        /* renamed from: a */
        void mo17672a(int i, Notification notification);
    }

    public C1236b(Context context) {
        this.f4176i = context;
        this.f4177j = C1249i.m17656b(this.f4176i);
        this.f4178k = this.f4177j.m17647g();
        this.f4175h = new C1166d(this.f4176i, this.f4178k, this);
        this.f4177j.m17648f().m17715a(this);
    }

    /* renamed from: b */
    private void m17678b(Intent intent) {
        AbstractC1293l.m17543a().mo17538c(f4168a, String.format("Started foreground service %s", intent), new Throwable[0]);
        final String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        final WorkDatabase m17652c = this.f4177j.m17652c();
        this.f4178k.mo17577a(new Runnable() { // from class: androidx.work.impl.foreground.b.1
            @Override // java.lang.Runnable
            public void run() {
                C1191p mo17794b = m17652c.mo17885o().mo17794b(stringExtra);
                if (mo17794b == null || !mo17794b.m17803d()) {
                    return;
                }
                synchronized (C1236b.this.f4169b) {
                    C1236b.this.f4173f.put(stringExtra, mo17794b);
                    C1236b.this.f4174g.add(mo17794b);
                }
                C1236b.this.f4175h.m17830a(C1236b.this.f4174g);
            }
        });
    }

    /* renamed from: c */
    private void m17677c(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        AbstractC1293l.m17543a().mo17539b(f4168a, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2)), new Throwable[0]);
        if (notification == null || this.f4179l == null) {
            return;
        }
        this.f4172e.put(stringExtra, new C1137h(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.f4170c)) {
            this.f4170c = stringExtra;
            this.f4179l.mo17673a(intExtra, intExtra2, notification);
            return;
        }
        this.f4179l.mo17672a(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        for (Map.Entry<String, C1137h> entry : this.f4172e.entrySet()) {
            i = entry.getValue().m17906b() | i;
        }
        C1137h c1137h = this.f4172e.get(this.f4170c);
        if (c1137h == null) {
            return;
        }
        this.f4179l.mo17673a(c1137h.m17907a(), i, c1137h.m17905c());
    }

    /* renamed from: d */
    private void m17676d(Intent intent) {
        AbstractC1293l.m17543a().mo17538c(f4168a, String.format("Stopping foreground work for %s", intent), new Throwable[0]);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra == null || TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f4177j.m17658a(UUID.fromString(stringExtra));
    }

    /* renamed from: a */
    public void m17683a() {
        this.f4179l = null;
        this.f4175h.m17831a();
        this.f4177j.m17648f().m17711b(this);
    }

    /* renamed from: a */
    public void m17682a(Intent intent) {
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            m17678b(intent);
            m17677c(intent);
        } else if ("ACTION_NOTIFY".equals(action)) {
            m17677c(intent);
        } else if (!"ACTION_CANCEL_WORK".equals(action)) {
        } else {
            m17676d(intent);
        }
    }

    /* renamed from: a */
    public void m17681a(AbstractC1238a abstractC1238a) {
        if (this.f4179l != null) {
            AbstractC1293l.m17543a().mo17536e(f4168a, "A callback already exists.", new Throwable[0]);
        } else {
            this.f4179l = abstractC1238a;
        }
    }

    @Override // androidx.work.impl.AbstractC1142a
    /* renamed from: a */
    public void mo17680a(String str, boolean z) {
        boolean remove;
        Map.Entry<String, C1137h> entry;
        synchronized (this.f4169b) {
            C1191p remove2 = this.f4173f.remove(str);
            remove = remove2 != null ? this.f4174g.remove(remove2) : false;
        }
        if (remove) {
            this.f4175h.m17830a(this.f4174g);
        }
        this.f4171d = this.f4172e.remove(str);
        if (!str.equals(this.f4170c)) {
            if (this.f4171d == null || this.f4179l == null) {
                return;
            }
            this.f4179l.mo17674a(this.f4171d.m17907a());
        } else if (this.f4172e.size() <= 0) {
        } else {
            Iterator<Map.Entry<String, C1137h>> it = this.f4172e.entrySet().iterator();
            Map.Entry<String, C1137h> next = it.next();
            while (true) {
                entry = next;
                if (!it.hasNext()) {
                    break;
                }
                next = it.next();
            }
            this.f4170c = entry.getKey();
            if (this.f4179l == null) {
                return;
            }
            C1137h value = entry.getValue();
            this.f4179l.mo17673a(value.m17907a(), value.m17906b(), value.m17905c());
            this.f4179l.mo17674a(value.m17907a());
        }
    }

    @Override // androidx.work.impl.p052a.AbstractC1165c
    /* renamed from: a */
    public void mo17557a(List<String> list) {
    }

    /* renamed from: b */
    public void m17679b() {
        AbstractC1293l.m17543a().mo17538c(f4168a, "Stopping foreground service", new Throwable[0]);
        if (this.f4179l != null) {
            if (this.f4171d != null) {
                this.f4179l.mo17674a(this.f4171d.m17907a());
                this.f4171d = null;
            }
            this.f4179l.mo17675a();
        }
    }

    @Override // androidx.work.impl.p052a.AbstractC1165c
    /* renamed from: b */
    public void mo17556b(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                AbstractC1293l.m17543a().mo17539b(f4168a, String.format("Constraints unmet for WorkSpec %s", str), new Throwable[0]);
                this.f4177j.m17651c(str);
            }
        }
    }
}
