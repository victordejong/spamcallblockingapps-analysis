package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.d.c;
import com.google.android.gms.common.internal.bp;
import com.google.android.gms.common.internal.o;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/stats/a.class */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    private static final Object f22926b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static volatile a f22927c;

    /* renamed from: a  reason: collision with root package name */
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> f22928a = new ConcurrentHashMap<>();

    private a() {
    }

    public static a a() {
        if (f22927c == null) {
            synchronized (f22926b) {
                if (f22927c == null) {
                    f22927c = new a();
                }
            }
        }
        a aVar = f22927c;
        o.a(aVar);
        return aVar;
    }

    private static boolean a(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof bp);
    }

    public final void a(Context context, ServiceConnection serviceConnection) {
        if (!a(serviceConnection) || !this.f22928a.containsKey(serviceConnection)) {
            try {
                context.unbindService(serviceConnection);
            } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e) {
            }
        } else {
            try {
                try {
                    context.unbindService(this.f22928a.get(serviceConnection));
                } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e2) {
                }
            } finally {
                this.f22928a.remove(serviceConnection);
            }
        }
    }

    public final boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return a(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    /* JADX WARN: Finally extract failed */
    public final boolean a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        boolean z;
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((c.a(context).a(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (a(serviceConnection)) {
            ServiceConnection putIfAbsent = this.f22928a.putIfAbsent(serviceConnection, serviceConnection);
            if (!(putIfAbsent == null || serviceConnection == putIfAbsent)) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                z = context.bindService(intent, serviceConnection, i);
                if (!z) {
                    this.f22928a.remove(serviceConnection, serviceConnection);
                    return false;
                }
            } catch (Throwable th) {
                this.f22928a.remove(serviceConnection, serviceConnection);
                throw th;
            }
        } else {
            z = context.bindService(intent, serviceConnection, i);
        }
        return z;
    }
}
