package androidx.work.impl.foreground;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.f;
import androidx.work.impl.a.c;
import androidx.work.impl.a.d;
import androidx.work.impl.j;
import androidx.work.impl.model.WorkSpec;
import androidx.work.k;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b.class */
public final class b implements c, androidx.work.impl.b {

    /* renamed from: a  reason: collision with root package name */
    static final String f6097a = k.a("SystemFgDispatcher");

    /* renamed from: b  reason: collision with root package name */
    j f6098b;

    /* renamed from: c  reason: collision with root package name */
    final androidx.work.impl.utils.b.a f6099c;
    final d i;
    a j;
    private Context k;

    /* renamed from: d  reason: collision with root package name */
    final Object f6100d = new Object();
    String e = null;
    final Map<String, f> f = new LinkedHashMap();
    final Set<WorkSpec> h = new HashSet();
    final Map<String, WorkSpec> g = new HashMap();

    /* loaded from: classes-dex2jar.jar:androidx/work/impl/foreground/b$a.class */
    interface a {
        void a();

        void a(int i);

        void a(int i, int i2, Notification notification);

        void a(int i, Notification notification);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        this.k = context;
        j b2 = j.b(this.k);
        this.f6098b = b2;
        androidx.work.impl.utils.b.a aVar = b2.f6119d;
        this.f6099c = aVar;
        this.i = new d(this.k, aVar, this);
        this.f6098b.f.a(this);
    }

    b(Context context, j jVar, d dVar) {
        this.k = context;
        this.f6098b = jVar;
        this.f6099c = jVar.f6119d;
        this.i = dVar;
        this.f6098b.f.a(this);
    }

    public static Intent a(Context context) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_STOP_FOREGROUND");
        return intent;
    }

    public static Intent a(Context context, String str, f fVar) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_START_FOREGROUND");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NOTIFICATION_ID", fVar.f5980a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", fVar.f5981b);
        intent.putExtra("KEY_NOTIFICATION", fVar.f5982c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    public static Intent b(Context context, String str, f fVar) {
        Intent intent = new Intent(context, SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", fVar.f5980a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", fVar.f5981b);
        intent.putExtra("KEY_NOTIFICATION", fVar.f5982c);
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.j = null;
        synchronized (this.f6100d) {
            this.i.a();
        }
        this.f6098b.f.b(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Intent intent) {
        int i = 0;
        int intExtra = intent.getIntExtra("KEY_NOTIFICATION_ID", 0);
        int intExtra2 = intent.getIntExtra("KEY_FOREGROUND_SERVICE_TYPE", 0);
        String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
        Notification notification = (Notification) intent.getParcelableExtra("KEY_NOTIFICATION");
        k.a();
        String.format("Notifying with (id: %s, workSpecId: %s, notificationType: %s)", Integer.valueOf(intExtra), stringExtra, Integer.valueOf(intExtra2));
        if (!(notification == null || this.j == null)) {
            this.f.put(stringExtra, new f(intExtra, notification, intExtra2));
            if (TextUtils.isEmpty(this.e)) {
                this.e = stringExtra;
                this.j.a(intExtra, intExtra2, notification);
                return;
            }
            this.j.a(intExtra, notification);
            if (intExtra2 != 0 && Build.VERSION.SDK_INT >= 29) {
                for (Map.Entry<String, f> entry : this.f.entrySet()) {
                    i |= entry.getValue().f5981b;
                }
                f fVar = this.f.get(this.e);
                if (fVar != null) {
                    this.j.a(fVar.f5980a, i, fVar.f5982c);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(a aVar) {
        if (this.j != null) {
            k.a().a(f6097a, "A callback already exists.", new Throwable[0]);
        } else {
            this.j = aVar;
        }
    }

    @Override // androidx.work.impl.b
    public final void a(String str, boolean z) {
        Map.Entry<String, f> entry;
        synchronized (this.f6100d) {
            WorkSpec remove = this.g.remove(str);
            if (remove != null ? this.h.remove(remove) : false) {
                this.i.a(this.h);
            }
        }
        f remove2 = this.f.remove(str);
        if (str.equals(this.e) && this.f.size() > 0) {
            Iterator<Map.Entry<String, f>> it2 = this.f.entrySet().iterator();
            Map.Entry<String, f> next = it2.next();
            while (true) {
                entry = next;
                if (!it2.hasNext()) {
                    break;
                }
                next = it2.next();
            }
            this.e = entry.getKey();
            if (this.j != null) {
                f value = entry.getValue();
                this.j.a(value.f5980a, value.f5981b, value.f5982c);
                this.j.a(value.f5980a);
            }
        }
        a aVar = this.j;
        if (remove2 != null && aVar != null) {
            k.a();
            String.format("Removing Notification (id: %s, workSpecId: %s ,notificationType: %s)", Integer.valueOf(remove2.f5980a), str, Integer.valueOf(remove2.f5981b));
            aVar.a(remove2.f5980a);
        }
    }

    @Override // androidx.work.impl.a.c
    public final void a(List<String> list) {
    }

    @Override // androidx.work.impl.a.c
    public final void b(List<String> list) {
        if (!list.isEmpty()) {
            for (String str : list) {
                k.a();
                String.format("Constraints unmet for WorkSpec %s", str);
                j jVar = this.f6098b;
                jVar.f6119d.a(new androidx.work.impl.utils.j(jVar, str, true));
            }
        }
    }
}
