package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractC12017bp;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.p352d.C11946c;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.google.android.gms.common.stats.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/stats/a.class */
public final class C12088a {

    /* renamed from: b */
    private static final Object f39608b = new Object();

    /* renamed from: c */
    private static volatile C12088a f39609c;

    /* renamed from: a */
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> f39610a = new ConcurrentHashMap<>();

    private C12088a() {
    }

    /* renamed from: a */
    public static C12088a m19072a() {
        if (f39609c == null) {
            synchronized (f39608b) {
                if (f39609c == null) {
                    f39609c = new C12088a();
                }
            }
        }
        C12088a c12088a = f39609c;
        C12045o.m19162a(c12088a);
        return c12088a;
    }

    /* renamed from: a */
    private static boolean m19068a(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof AbstractC12017bp);
    }

    /* renamed from: a */
    public final void m19070a(Context context, ServiceConnection serviceConnection) {
        if (!m19068a(serviceConnection) || !this.f39610a.containsKey(serviceConnection)) {
            try {
                context.unbindService(serviceConnection);
                return;
            } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e) {
                return;
            }
        }
        try {
            try {
                context.unbindService(this.f39610a.get(serviceConnection));
            } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e2) {
            }
        } finally {
            this.f39610a.remove(serviceConnection);
        }
    }

    /* renamed from: a */
    public final boolean m19071a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return m19069a(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final boolean m19069a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        boolean z;
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((C11946c.m19258a(context).m19262a(packageName, 0).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (m19068a(serviceConnection)) {
            ServiceConnection putIfAbsent = this.f39610a.putIfAbsent(serviceConnection, serviceConnection);
            if (putIfAbsent != null && serviceConnection != putIfAbsent) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                z = context.bindService(intent, serviceConnection, i);
                if (!z) {
                    this.f39610a.remove(serviceConnection, serviceConnection);
                    return false;
                }
            } catch (Throwable th) {
                this.f39610a.remove(serviceConnection, serviceConnection);
                throw th;
            }
        } else {
            z = context.bindService(intent, serviceConnection, i);
        }
        return z;
    }
}
