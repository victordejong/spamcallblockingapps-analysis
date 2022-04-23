package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.work.k;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/b.class */
public final class b implements androidx.work.impl.b {

    /* renamed from: a  reason: collision with root package name */
    static final String f6040a = k.a("CommandHandler");

    /* renamed from: b  reason: collision with root package name */
    final Context f6041b;

    /* renamed from: c  reason: collision with root package name */
    final Map<String, androidx.work.impl.b> f6042c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    final Object f6043d = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context) {
        this.f6041b = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent a(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_CONSTRAINTS_CHANGED");
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent a(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_SCHEDULE_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent a(Context context, String str, boolean z) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_EXECUTION_COMPLETED");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        intent.putExtra("KEY_NEEDS_RESCHEDULE", z);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Bundle bundle, String... strArr) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent b(Context context) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_RESCHEDULE");
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent b(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent c(Context context, String str) {
        Intent intent = new Intent(context, SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        return intent;
    }

    @Override // androidx.work.impl.b
    public final void a(String str, boolean z) {
        synchronized (this.f6043d) {
            androidx.work.impl.b remove = this.f6042c.remove(str);
            if (remove != null) {
                remove.a(str, z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        boolean z;
        synchronized (this.f6043d) {
            z = !this.f6042c.isEmpty();
        }
        return z;
    }
}
