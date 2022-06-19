package p1727n3.p1834m0.p1835c0.p1843r;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26833i;
import p1727n3.p1834m0.p1835c0.AbstractC26682b;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c;
import p1727n3.p1834m0.p1835c0.p1840q.C26725d;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1845t.RunnableC26796p;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.AbstractC26821a;
import p1727n3.p1834m0.p1835c0.p1845t.p1847x.C26822b;
/* renamed from: n3.m0.c0.r.c */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/r/c.class */
public class C26738c implements AbstractC26724c, AbstractC26682b {

    /* renamed from: k */
    public static final String f74861k = AbstractC26839p.m1295e("SystemFgDispatcher");

    /* renamed from: a */
    public Context f74862a;

    /* renamed from: b */
    public C26702l f74863b;

    /* renamed from: c */
    public final AbstractC26821a f74864c;

    /* renamed from: i */
    public final C26725d f74870i;

    /* renamed from: j */
    public AbstractC26739a f74871j;

    /* renamed from: d */
    public final Object f74865d = new Object();

    /* renamed from: e */
    public String f74866e = null;

    /* renamed from: f */
    public final Map<String, C26833i> f74867f = new LinkedHashMap();

    /* renamed from: h */
    public final Set<C26760p> f74869h = new HashSet();

    /* renamed from: g */
    public final Map<String, C26760p> f74868g = new HashMap();

    /* renamed from: n3.m0.c0.r.c$a */
    /* loaded from: classes-dex2jar.jar:n3/m0/c0/r/c$a.class */
    public interface AbstractC26739a {
    }

    public C26738c(Context context) {
        this.f74862a = context;
        C26702l m1431n = C26702l.m1431n(this.f74862a);
        this.f74863b = m1431n;
        AbstractC26821a abstractC26821a = m1431n.f74726d;
        this.f74864c = abstractC26821a;
        this.f74870i = new C26725d(this.f74862a, abstractC26821a, this);
        this.f74863b.f74728f.m1447a(this);
    }

    /* renamed from: a */
    public static Intent m1377a(Context context, String str, C26833i c26833i) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", c26833i.f75088a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c26833i.f75089b);
        intent.putExtra("KEY_NOTIFICATION", c26833i.f75090c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: d */
    public static Intent m1374d(Context context, String str, C26833i c26833i) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", c26833i.f75088a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c26833i.f75089b);
        intent.putExtra("KEY_NOTIFICATION", c26833i.f75090c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26682b
    /* renamed from: b */
    public void mo1376b(String str, boolean z) {
        Map.Entry<String, C26833i> entry;
        synchronized (this.f74865d) {
            C26760p remove = this.f74868g.remove(str);
            if (remove != null ? this.f74869h.remove(remove) : false) {
                this.f74870i.m1394b(this.f74869h);
            }
        }
        C26833i remove2 = this.f74867f.remove(str);
        if (str.equals(this.f74866e) && this.f74867f.size() > 0) {
            Iterator<Map.Entry<String, C26833i>> it = this.f74867f.entrySet().iterator();
            Map.Entry<String, C26833i> next = it.next();
            while (true) {
                entry = next;
                if (!it.hasNext()) {
                    break;
                }
                next = it.next();
            }
            this.f74866e = entry.getKey();
            if (this.f74871j != null) {
                C26833i value = entry.getValue();
                this.f74871j.j(value.f75088a, value.f75089b, value.f75090c);
                SystemForegroundService systemForegroundService = this.f74871j;
                int i = value.f75088a;
                SystemForegroundService systemForegroundService2 = systemForegroundService;
                systemForegroundService2.b.post(new RunnableC26741e(systemForegroundService2, i));
            }
        }
        SystemForegroundService systemForegroundService3 = this.f74871j;
        if (remove2 == null || systemForegroundService3 == null) {
            return;
        }
        AbstractC26839p.m1296c().mo1294a(f74861k, String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(remove2.f75088a), str, Integer.valueOf(remove2.f75089b)), new Throwable[0]);
        int i2 = remove2.f75088a;
        SystemForegroundService systemForegroundService4 = systemForegroundService3;
        systemForegroundService4.b.post(new RunnableC26741e(systemForegroundService4, i2));
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c
    /* renamed from: c */
    public void mo1375c(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                AbstractC26839p.m1296c().mo1294a(f74861k, String.format("Constraints unmet for WorkSpec %s", str), new Throwable[0]);
                C26702l c26702l = this.f74863b;
                ((C26822b) c26702l.f74726d).f75051a.execute(new RunnableC26796p(c26702l, str, true));
            }
        }
    }

    /* renamed from: e */
    public final void m1373e(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        AbstractC26839p.m1296c().mo1294a(f74861k, String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2)), new Throwable[0]);
        if (notification == null || this.f74871j == null) {
            return;
        }
        this.f74867f.put(stringExtra, new C26833i(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.f74866e)) {
            this.f74866e = stringExtra;
            this.f74871j.j(intExtra, intExtra2, notification);
            return;
        }
        SystemForegroundService systemForegroundService = this.f74871j;
        systemForegroundService.b.post(new RunnableC26740d(systemForegroundService, intExtra, notification));
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        for (Map.Entry<String, C26833i> entry : this.f74867f.entrySet()) {
            i |= entry.getValue().f75089b;
        }
        C26833i c26833i = this.f74867f.get(this.f74866e);
        if (c26833i == null) {
            return;
        }
        this.f74871j.j(c26833i.f75088a, i, c26833i.f75090c);
    }

    /* renamed from: f */
    public void m1372f() {
        this.f74871j = null;
        synchronized (this.f74865d) {
            this.f74870i.m1393c();
        }
        this.f74863b.f74728f.m1444e(this);
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c
    /* renamed from: m */
    public void mo1371m(List<String> list) {
    }
}
