package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p003a2.AbstractC0008a;
import p003a2.C0009b;
import p186o1.AbstractC3824h;
import p186o1.C3820d;
import p197p1.AbstractC3996a;
import p197p1.C4006j;
import p238t1.AbstractC4354c;
import p238t1.C4355d;
import p271w1.RunnableC4731c;
import p271w1.RunnableC4732d;
import p282x1.C4832p;
import p292y1.RunnableC4966l;
/* renamed from: androidx.work.impl.foreground.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/a.class */
public class C0703a implements AbstractC4354c, AbstractC3996a {

    /* renamed from: k */
    public static final String f2719k = AbstractC3824h.m1773e("SystemFgDispatcher");

    /* renamed from: a */
    public Context f2720a;

    /* renamed from: b */
    public C4006j f2721b;

    /* renamed from: c */
    public final AbstractC0008a f2722c;

    /* renamed from: i */
    public final C4355d f2728i;

    /* renamed from: j */
    public AbstractC0704a f2729j;

    /* renamed from: d */
    public final Object f2723d = new Object();

    /* renamed from: e */
    public String f2724e = null;

    /* renamed from: f */
    public final Map<String, C3820d> f2725f = new LinkedHashMap();

    /* renamed from: h */
    public final Set<C4832p> f2727h = new HashSet();

    /* renamed from: g */
    public final Map<String, C4832p> f2726g = new HashMap();

    /* renamed from: androidx.work.impl.foreground.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/a$a.class */
    public interface AbstractC0704a {
    }

    public C0703a(Context context) {
        this.f2720a = context;
        C4006j m1535c = C4006j.m1535c(context);
        this.f2721b = m1535c;
        AbstractC0008a abstractC0008a = m1535c.f12585d;
        this.f2722c = abstractC0008a;
        this.f2728i = new C4355d(this.f2720a, abstractC0008a, this);
        this.f2721b.f12587f.m1551b(this);
    }

    /* renamed from: b */
    public static Intent m7457b(Context context, String str, C3820d c3820d) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", c3820d.f12307a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c3820d.f12308b);
        intent.putExtra("KEY_NOTIFICATION", c3820d.f12309c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: d */
    public static Intent m7456d(Context context, String str, C3820d c3820d) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", c3820d.f12307a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c3820d.f12308b);
        intent.putExtra("KEY_NOTIFICATION", c3820d.f12309c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // p197p1.AbstractC3996a
    /* renamed from: a */
    public void mo1352a(String str, boolean z) {
        Map.Entry<String, C3820d> entry;
        synchronized (this.f2723d) {
            C4832p remove = this.f2726g.remove(str);
            if (remove != null ? this.f2727h.remove(remove) : false) {
                this.f2728i.m1011b(this.f2727h);
            }
        }
        C3820d remove2 = this.f2725f.remove(str);
        if (str.equals(this.f2724e) && this.f2725f.size() > 0) {
            Iterator<Map.Entry<String, C3820d>> it2 = this.f2725f.entrySet().iterator();
            Map.Entry<String, C3820d> next = it2.next();
            while (true) {
                entry = next;
                if (!it2.hasNext()) {
                    break;
                }
                next = it2.next();
            }
            this.f2724e = entry.getKey();
            if (this.f2729j != null) {
                C3820d value = entry.getValue();
                ((SystemForegroundService) this.f2729j).m7458c(value.f12307a, value.f12308b, value.f12309c);
                AbstractC0704a abstractC0704a = this.f2729j;
                int i = value.f12307a;
                SystemForegroundService systemForegroundService = (SystemForegroundService) abstractC0704a;
                systemForegroundService.f2711b.post(new RunnableC4732d(systemForegroundService, i));
            }
        }
        AbstractC0704a abstractC0704a2 = this.f2729j;
        if (remove2 == null || abstractC0704a2 == null) {
            return;
        }
        AbstractC3824h.m1774c().mo1772a(f2719k, String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(remove2.f12307a), str, Integer.valueOf(remove2.f12308b)), new Throwable[0]);
        int i2 = remove2.f12307a;
        SystemForegroundService systemForegroundService2 = (SystemForegroundService) abstractC0704a2;
        systemForegroundService2.f2711b.post(new RunnableC4732d(systemForegroundService2, i2));
    }

    @Override // p238t1.AbstractC4354c
    /* renamed from: c */
    public void mo1014c(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                AbstractC3824h.m1774c().mo1772a(f2719k, String.format("Constraints unmet for WorkSpec %s", str), new Throwable[0]);
                C4006j c4006j = this.f2721b;
                ((C0009b) c4006j.f12585d).f8a.execute(new RunnableC4966l(c4006j, str, true));
            }
        }
    }

    @Override // p238t1.AbstractC4354c
    /* renamed from: e */
    public void mo1013e(List<String> list) {
    }

    /* renamed from: f */
    public final void m7455f(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        AbstractC3824h.m1774c().mo1772a(f2719k, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2)), new Throwable[0]);
        if (notification == null || this.f2729j == null) {
            return;
        }
        this.f2725f.put(stringExtra, new C3820d(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.f2724e)) {
            this.f2724e = stringExtra;
            ((SystemForegroundService) this.f2729j).m7458c(intExtra, intExtra2, notification);
            return;
        }
        SystemForegroundService systemForegroundService = (SystemForegroundService) this.f2729j;
        systemForegroundService.f2711b.post(new RunnableC4731c(systemForegroundService, intExtra, notification));
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        for (Map.Entry<String, C3820d> entry : this.f2725f.entrySet()) {
            i |= entry.getValue().f12308b;
        }
        C3820d c3820d = this.f2725f.get(this.f2724e);
        if (c3820d == null) {
            return;
        }
        ((SystemForegroundService) this.f2729j).m7458c(c3820d.f12307a, i, c3820d.f12309c);
    }

    /* renamed from: g */
    public void m7454g() {
        this.f2729j = null;
        synchronized (this.f2723d) {
            this.f2728i.m1010c();
        }
        this.f2721b.f12587f.m1548e(this);
    }
}
