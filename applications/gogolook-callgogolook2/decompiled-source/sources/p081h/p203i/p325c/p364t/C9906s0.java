package p081h.p203i.p325c.p364t;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;
import p081h.p203i.p204a.p224e.p292q.C9124a;
/* renamed from: h.i.c.t.s0 */
/* loaded from: classes2-dex2jar.jar:h/i/c/t/s0.class */
public final class C9906s0 {

    /* renamed from: a */
    public static final long f22430a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b */
    public static final Object f22431b = new Object();
    @GuardedBy("WakeLockHolder.syncObject")

    /* renamed from: c */
    public static C9124a f22432c;

    /* renamed from: a */
    public static ComponentName m13978a(@NonNull Context context, @NonNull Intent intent) {
        synchronized (f22431b) {
            m13979a(context);
            boolean b = m13975b(intent);
            m13976a(intent, true);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            if (!b) {
                f22432c.m16052a(f22430a);
            }
            return startService;
        }
    }

    @GuardedBy("WakeLockHolder.syncObject")
    /* renamed from: a */
    public static void m13979a(Context context) {
        if (f22432c == null) {
            C9124a aVar = new C9124a(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f22432c = aVar;
            aVar.m16049a(true);
        }
    }

    /* renamed from: a */
    public static void m13977a(@NonNull Intent intent) {
        synchronized (f22431b) {
            if (f22432c != null && m13975b(intent)) {
                m13976a(intent, false);
                f22432c.m16054a();
            }
        }
    }

    /* renamed from: a */
    public static void m13976a(@NonNull Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }

    @VisibleForTesting
    /* renamed from: b */
    public static boolean m13975b(@NonNull Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }
}
