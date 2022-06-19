package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.app.C0565h;
import com.google.android.gms.common.util.C6237o;
import com.google.android.gms.tasks.C7970j;
import com.google.firebase.messaging.C9266a;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.firebase.messaging.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/c.class */
class C9274c {

    /* renamed from: a */
    private final Executor f39772a;

    /* renamed from: b */
    private final Context f39773b;

    /* renamed from: c */
    private final C9283g0 f39774c;

    public C9274c(Context context, C9283g0 c9283g0, Executor executor) {
        this.f39772a = executor;
        this.f39773b = context;
        this.f39774c = c9283g0;
    }

    /* renamed from: b */
    private boolean m1301b() {
        if (((KeyguardManager) this.f39773b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!C6237o.m16776h()) {
            SystemClock.sleep(10L);
        }
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f39773b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                return runningAppProcessInfo.importance == 100;
            }
        }
        return false;
    }

    /* renamed from: c */
    private void m1300c(C9266a.C9267a c9267a) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        ((NotificationManager) this.f39773b.getSystemService("notification")).notify(c9267a.f39754b, c9267a.f39755c, c9267a.f39753a.m33428b());
    }

    /* renamed from: d */
    private C9275c0 m1299d() {
        C9275c0 m1295f = C9275c0.m1295f(this.f39774c.m1241p("gcm.n.image"));
        if (m1295f != null) {
            m1295f.m1293k(this.f39772a);
        }
        return m1295f;
    }

    /* renamed from: e */
    private void m1298e(C0565h.C0574e c0574e, C9275c0 c9275c0) {
        if (c9275c0 == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) C7970j.m5801b(c9275c0.m1294g(), 5L, TimeUnit.SECONDS);
            c0574e.m33415o(bitmap);
            c0574e.m33406x(new C0565h.C0567b().m33439i(bitmap).m33440h(null));
        } catch (InterruptedException e) {
            Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
            c9275c0.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e2) {
            String valueOf = String.valueOf(e2.getCause());
            StringBuilder sb = new StringBuilder(valueOf.length() + 26);
            sb.append("Failed to download image: ");
            sb.append(valueOf);
            Log.w("FirebaseMessaging", sb.toString());
        } catch (TimeoutException e3) {
            Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
            c9275c0.close();
        }
    }

    /* renamed from: a */
    public boolean m1302a() {
        if (this.f39774c.m1256a("gcm.n.noui")) {
            return true;
        }
        if (m1301b()) {
            return false;
        }
        C9275c0 m1299d = m1299d();
        C9266a.C9267a m1338d = C9266a.m1338d(this.f39773b, this.f39774c);
        m1298e(m1338d.f39753a, m1299d);
        m1300c(m1338d);
        return true;
    }
}
