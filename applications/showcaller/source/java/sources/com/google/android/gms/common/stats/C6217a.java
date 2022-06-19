package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.AbstractC6160p1;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.common.p272k.C6198c;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.common.stats.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/a.class */
public class C6217a {

    /* renamed from: a */
    private static final Object f19702a = new Object();

    /* renamed from: b */
    private static volatile C6217a f19703b;
    @RecentlyNonNull

    /* renamed from: c */
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> f19704c = new ConcurrentHashMap<>();

    private C6217a() {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static C6217a m16846b() {
        if (f19703b == null) {
            synchronized (f19702a) {
                if (f19703b == null) {
                    f19703b = new C6217a();
                }
            }
        }
        C6217a c6217a = f19703b;
        C6155o.m17018j(c6217a);
        return c6217a;
    }

    /* JADX WARN: Finally extract failed */
    @SuppressLint({"UntrackedBindService"})
    /* renamed from: e */
    private final boolean m16843e(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z) {
        boolean z2;
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((C6198c.m16885a(context).m16891c(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (m16842f(serviceConnection)) {
            ServiceConnection putIfAbsent = this.f19704c.putIfAbsent(serviceConnection, serviceConnection);
            if (putIfAbsent != null && serviceConnection != putIfAbsent) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                z2 = context.bindService(intent, serviceConnection, i);
                if (!z2) {
                    this.f19704c.remove(serviceConnection, serviceConnection);
                    return false;
                }
            } catch (Throwable th) {
                this.f19704c.remove(serviceConnection, serviceConnection);
                throw th;
            }
        } else {
            z2 = context.bindService(intent, serviceConnection, i);
        }
        return z2;
    }

    /* renamed from: f */
    private static boolean m16842f(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof AbstractC6160p1);
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: g */
    private static void m16841g(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e) {
        }
    }

    /* renamed from: a */
    public boolean m16847a(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent, @RecentlyNonNull ServiceConnection serviceConnection, int i) {
        return m16843e(context, context.getClass().getName(), intent, serviceConnection, i, true);
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: c */
    public void m16845c(@RecentlyNonNull Context context, @RecentlyNonNull ServiceConnection serviceConnection) {
        if (!m16842f(serviceConnection) || !this.f19704c.containsKey(serviceConnection)) {
            m16841g(context, serviceConnection);
            return;
        }
        try {
            m16841g(context, this.f19704c.get(serviceConnection));
        } finally {
            this.f19704c.remove(serviceConnection);
        }
    }

    /* renamed from: d */
    public final boolean m16844d(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull Intent intent, @RecentlyNonNull ServiceConnection serviceConnection, int i) {
        return m16843e(context, str, intent, serviceConnection, i, true);
    }
}
