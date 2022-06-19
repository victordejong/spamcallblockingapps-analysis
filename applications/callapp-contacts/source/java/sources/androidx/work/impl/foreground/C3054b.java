package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.AbstractC3145k;
import androidx.work.C2995f;
import androidx.work.impl.AbstractC3027b;
import androidx.work.impl.C3068j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.p085a.AbstractC3025c;
import androidx.work.impl.p085a.C3026d;
import androidx.work.impl.utils.RunnableC3131j;
import androidx.work.impl.utils.p090b.AbstractC3119a;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: androidx.work.impl.foreground.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b.class */
public final class C3054b implements AbstractC3025c, AbstractC3027b {

    /* renamed from: a */
    static final String f11315a = AbstractC3145k.m39275a("SystemFgDispatcher");

    /* renamed from: b */
    C3068j f11316b;

    /* renamed from: c */
    final AbstractC3119a f11317c;

    /* renamed from: i */
    final C3026d f11323i;

    /* renamed from: j */
    AbstractC3056a f11324j;

    /* renamed from: k */
    private Context f11325k;

    /* renamed from: d */
    final Object f11318d = new Object();

    /* renamed from: e */
    String f11319e = null;

    /* renamed from: f */
    final Map<String, C2995f> f11320f = new LinkedHashMap();

    /* renamed from: h */
    final Set<WorkSpec> f11322h = new HashSet();

    /* renamed from: g */
    final Map<String, WorkSpec> f11321g = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.foreground.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b$a.class */
    public interface AbstractC3056a {
        /* renamed from: a */
        void mo39372a();

        /* renamed from: a */
        void mo39371a(int i);

        /* renamed from: a */
        void mo39370a(int i, int i2, Notification notification);

        /* renamed from: a */
        void mo39369a(int i, Notification notification);
    }

    public C3054b(Context context) {
        this.f11325k = context;
        C3068j m39359b = C3068j.m39359b(this.f11325k);
        this.f11316b = m39359b;
        AbstractC3119a abstractC3119a = m39359b.f11356d;
        this.f11317c = abstractC3119a;
        this.f11323i = new C3026d(this.f11325k, abstractC3119a, this);
        this.f11316b.f11358f.m39398a(this);
    }

    C3054b(Context context, C3068j c3068j, C3026d c3026d) {
        this.f11325k = context;
        this.f11316b = c3068j;
        this.f11317c = c3068j.f11356d;
        this.f11323i = c3026d;
        this.f11316b.f11358f.m39398a(this);
    }

    /* renamed from: a */
    public static Intent m39378a(Context context) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    /* renamed from: a */
    public static Intent m39377a(Context context, String str, C2995f c2995f) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", c2995f.f11153a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c2995f.f11154b);
        intent.putExtra("KEY_NOTIFICATION", c2995f.f11155c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: b */
    public static Intent m39373b(Context context, String str, C2995f c2995f) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", c2995f.f11153a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", c2995f.f11154b);
        intent.putExtra("KEY_NOTIFICATION", c2995f.f11155c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: a */
    public final void m39379a() {
        this.f11324j = null;
        synchronized (this.f11318d) {
            this.f11323i.m39442a();
        }
        this.f11316b.f11358f.m39394b(this);
    }

    /* renamed from: a */
    public final void m39376a(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        AbstractC3145k.m39277a();
        String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2));
        if (notification == null || this.f11324j == null) {
            return;
        }
        this.f11320f.put(stringExtra, new C2995f(intExtra, notification, intExtra2));
        if (TextUtils.isEmpty(this.f11319e)) {
            this.f11319e = stringExtra;
            this.f11324j.mo39370a(intExtra, intExtra2, notification);
            return;
        }
        this.f11324j.mo39369a(intExtra, notification);
        if (intExtra2 == 0 || Build.VERSION.SDK_INT < 29) {
            return;
        }
        for (Map.Entry<String, C2995f> entry : this.f11320f.entrySet()) {
            i |= entry.getValue().f11154b;
        }
        C2995f c2995f = this.f11320f.get(this.f11319e);
        if (c2995f == null) {
            return;
        }
        this.f11324j.mo39370a(c2995f.f11153a, i, c2995f.f11155c);
    }

    /* renamed from: a */
    public final void m39375a(AbstractC3056a abstractC3056a) {
        if (this.f11324j != null) {
            AbstractC3145k.m39277a().mo39273a(f11315a, "A callback already exists.", new Throwable[0]);
        } else {
            this.f11324j = abstractC3056a;
        }
    }

    @Override // androidx.work.impl.AbstractC3027b
    /* renamed from: a */
    public final void mo39374a(String str, boolean z) {
        Map.Entry<String, C2995f> entry;
        synchronized (this.f11318d) {
            WorkSpec remove = this.f11321g.remove(str);
            if (remove != null ? this.f11322h.remove(remove) : false) {
                this.f11323i.m39441a(this.f11322h);
            }
        }
        C2995f remove2 = this.f11320f.remove(str);
        if (str.equals(this.f11319e) && this.f11320f.size() > 0) {
            Iterator<Map.Entry<String, C2995f>> it2 = this.f11320f.entrySet().iterator();
            Map.Entry<String, C2995f> next = it2.next();
            while (true) {
                entry = next;
                if (!it2.hasNext()) {
                    break;
                }
                next = it2.next();
            }
            this.f11319e = entry.getKey();
            if (this.f11324j != null) {
                C2995f value = entry.getValue();
                this.f11324j.mo39370a(value.f11153a, value.f11154b, value.f11155c);
                this.f11324j.mo39371a(value.f11153a);
            }
        }
        AbstractC3056a abstractC3056a = this.f11324j;
        if (remove2 == null || abstractC3056a == null) {
            return;
        }
        AbstractC3145k.m39277a();
        String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(remove2.f11153a), str, Integer.valueOf(remove2.f11154b));
        abstractC3056a.mo39371a(remove2.f11153a);
    }

    @Override // androidx.work.impl.p085a.AbstractC3025c
    /* renamed from: a */
    public final void mo39282a(List<String> list) {
    }

    @Override // androidx.work.impl.p085a.AbstractC3025c
    /* renamed from: b */
    public final void mo39280b(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                AbstractC3145k.m39277a();
                String.format("Constraints unmet for WorkSpec %s", str);
                C3068j c3068j = this.f11316b;
                c3068j.f11356d.mo39302a(new RunnableC3131j(c3068j, str, true));
            }
        }
    }
}
