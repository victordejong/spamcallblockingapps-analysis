package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.AbstractC3145k;
import androidx.work.impl.AbstractC3027b;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.background.systemalarm.b */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/b.class */
public final class C3033b implements AbstractC3027b {

    /* renamed from: a */
    static final String f11233a = AbstractC3145k.m39275a("CommandHandler");

    /* renamed from: b */
    final Context f11234b;

    /* renamed from: c */
    final Map<String, AbstractC3027b> f11235c = new HashMap();

    /* renamed from: d */
    final Object f11236d = new Object();

    public C3033b(Context context) {
        this.f11234b = context;
    }

    /* renamed from: a */
    public static Intent m39426a(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    /* renamed from: a */
    public static Intent m39425a(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: a */
    public static Intent m39424a(Context context, String str, boolean z) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        return intent;
    }

    /* renamed from: a */
    public static boolean m39423a(Bundle bundle, String... strArr) {
        if (bundle == null || bundle.isEmpty()) {
            return false;
        }
        for (int i = 0; i <= 0; i++) {
            if (bundle.get(strArr[0]) == null) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static Intent m39422b(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_RESCHEDULE");
        return intent;
    }

    /* renamed from: b */
    public static Intent m39421b(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* renamed from: c */
    public static Intent m39420c(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // androidx.work.impl.AbstractC3027b
    /* renamed from: a */
    public final void mo39374a(String str, boolean z) {
        synchronized (this.f11236d) {
            AbstractC3027b remove = this.f11235c.remove(str);
            if (remove != null) {
                remove.mo39374a(str, z);
            }
        }
    }

    /* renamed from: a */
    public final boolean m39427a() {
        boolean z;
        synchronized (this.f11236d) {
            z = !this.f11235c.isEmpty();
        }
        return z;
    }
}
