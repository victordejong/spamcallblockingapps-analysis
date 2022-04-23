package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Process;
import android.util.Log;
import com.google.android.gms.common.stats.c;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f4078a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static b f4079b;
    private static Integer h;
    private final List<String> c;
    private final List<String> d;
    private final List<String> e;
    private final List<String> f;
    private e g;
    private e i;

    private b() {
        if (b() == d.f4085b) {
            this.c = Collections.EMPTY_LIST;
            this.d = Collections.EMPTY_LIST;
            this.e = Collections.EMPTY_LIST;
            this.f = Collections.EMPTY_LIST;
            return;
        }
        String b2 = c.a.f4083b.b();
        this.c = b2 == null ? Collections.EMPTY_LIST : Arrays.asList(b2.split(","));
        String b3 = c.a.c.b();
        this.d = b3 == null ? Collections.EMPTY_LIST : Arrays.asList(b3.split(","));
        String b4 = c.a.d.b();
        this.e = b4 == null ? Collections.EMPTY_LIST : Arrays.asList(b4.split(","));
        String b5 = c.a.e.b();
        this.f = b5 == null ? Collections.EMPTY_LIST : Arrays.asList(b5.split(","));
        this.g = new e(c.a.f.b().longValue());
        this.i = new e(c.a.f.b().longValue());
    }

    public static b a() {
        synchronized (f4078a) {
            if (f4079b == null) {
                f4079b = new b();
            }
        }
        return f4079b;
    }

    public static String a(ServiceConnection serviceConnection) {
        return String.valueOf((Process.myPid() << 32) | System.identityHashCode(serviceConnection));
    }

    @SuppressLint({"UntrackedBindService"})
    public static void a(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
        a(serviceConnection);
    }

    @SuppressLint({"UntrackedBindService"})
    public static boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        boolean z = false;
        ComponentName component = intent.getComponent();
        if (component == null ? false : com.google.android.gms.common.a.c.a(context, component.getPackageName())) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
        } else {
            boolean bindService = context.bindService(intent, serviceConnection, i);
            z = bindService;
            if (bindService) {
                a(serviceConnection);
                z = bindService;
            }
        }
        return z;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x0017 -> B:5:0x000f). Please submit an issue!!! */
    private static int b() {
        if (h == null) {
            try {
                h = Integer.valueOf(d.f4085b);
            } catch (SecurityException e) {
                h = Integer.valueOf(d.f4085b);
            }
        }
        return h.intValue();
    }

    public static boolean b(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        context.getClass().getName();
        return a(context, intent, serviceConnection, i);
    }
}
