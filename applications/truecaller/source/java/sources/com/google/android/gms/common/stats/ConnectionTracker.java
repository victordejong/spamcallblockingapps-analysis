package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.zzs;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/stats/ConnectionTracker.class */
public class ConnectionTracker {

    /* renamed from: b */
    public static final Object f6112b = new Object();

    /* renamed from: c */
    public static volatile ConnectionTracker f6113c;
    @VisibleForTesting

    /* renamed from: a */
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> f6114a = new ConcurrentHashMap<>();

    private ConnectionTracker() {
    }

    @KeepForSdk
    /* renamed from: b */
    public static ConnectionTracker m38803b() {
        if (f6113c == null) {
            synchronized (f6112b) {
                if (f6113c == null) {
                    f6113c = new ConnectionTracker();
                }
            }
        }
        ConnectionTracker connectionTracker = f6113c;
        Objects.requireNonNull(connectionTracker, "null reference");
        return connectionTracker;
    }

    /* renamed from: e */
    public static final boolean m38800e(Context context, Intent intent, ServiceConnection serviceConnection, int i, Executor executor) {
        return (!(Build.VERSION.SDK_INT >= 29) || executor == null) ? context.bindService(intent, serviceConnection, i) : context.bindService(intent, i, executor, serviceConnection);
    }

    @KeepForSdk
    /* renamed from: a */
    public boolean m38804a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return m38801d(context, context.getClass().getName(), intent, serviceConnection, i, true, null);
    }

    @KeepForSdk
    /* renamed from: c */
    public void m38802c(Context context, ServiceConnection serviceConnection) {
        if (!(!(serviceConnection instanceof zzs)) || !this.f6114a.containsKey(serviceConnection)) {
            try {
                context.unbindService(serviceConnection);
                return;
            } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e) {
                return;
            }
        }
        try {
            try {
                context.unbindService(this.f6114a.get(serviceConnection));
            } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e2) {
            }
        } finally {
            this.f6114a.remove(serviceConnection);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public final boolean m38801d(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z, Executor executor) {
        boolean z2;
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((Wrappers.m38764a(context).m38768a(packageName, 0).flags & 2097152) != 0) {
                    return false;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (!(serviceConnection instanceof zzs)) {
            ServiceConnection putIfAbsent = this.f6114a.putIfAbsent(serviceConnection, serviceConnection);
            if (putIfAbsent != null && serviceConnection != putIfAbsent) {
                String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction());
            }
            try {
                z2 = m38800e(context, intent, serviceConnection, i, executor);
                if (!z2) {
                    this.f6114a.remove(serviceConnection, serviceConnection);
                    return false;
                }
            } catch (Throwable th) {
                this.f6114a.remove(serviceConnection, serviceConnection);
                throw th;
            }
        } else {
            z2 = m38800e(context, intent, serviceConnection, i, executor);
        }
        return z2;
    }
}
