package com.google.android.gms.common.stats;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.AbstractC1585j0;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.common.p080g.C1562c;
import com.lidroid.xutils.bitmap.BitmapGlobalConfig;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import javax.annotation.Nullable;
/* renamed from: com.google.android.gms.common.stats.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/a.class */
public class C1599a {

    /* renamed from: b */
    private static final Object f5887b = new Object();
    @Nullable

    /* renamed from: c */
    private static volatile C1599a f5888c;
    @RecentlyNonNull

    /* renamed from: a */
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> f5889a = new ConcurrentHashMap<>();

    private C1599a() {
    }

    @RecentlyNonNull
    /* renamed from: b */
    public static C1599a m8265b() {
        if (f5888c == null) {
            synchronized (f5887b) {
                if (f5888c == null) {
                    f5888c = new C1599a();
                }
            }
        }
        C1599a aVar = f5888c;
        C1581h.m8347h(aVar);
        return aVar;
    }

    /* JADX WARN: Finally extract failed */
    @SuppressLint({"UntrackedBindService"})
    /* renamed from: e */
    private final boolean m8262e(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z) {
        boolean z2;
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((C1562c.m8427a(context).m8433c(packageName, 0).flags & BitmapGlobalConfig.MIN_MEMORY_CACHE_SIZE) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        if (m8261f(serviceConnection)) {
            ServiceConnection putIfAbsent = this.f5889a.putIfAbsent(serviceConnection, serviceConnection);
            if (!(putIfAbsent == null || serviceConnection == putIfAbsent)) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                z2 = context.bindService(intent, serviceConnection, i);
                if (!z2) {
                    this.f5889a.remove(serviceConnection, serviceConnection);
                    return false;
                }
            } catch (Throwable th) {
                this.f5889a.remove(serviceConnection, serviceConnection);
                throw th;
            }
        } else {
            z2 = context.bindService(intent, serviceConnection, i);
        }
        return z2;
    }

    /* renamed from: f */
    private static boolean m8261f(ServiceConnection serviceConnection) {
        return !(serviceConnection instanceof AbstractC1585j0);
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: g */
    private static void m8260g(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException e) {
        }
    }

    /* renamed from: a */
    public boolean m8266a(@RecentlyNonNull Context context, @RecentlyNonNull Intent intent, @RecentlyNonNull ServiceConnection serviceConnection, int i) {
        return m8262e(context, context.getClass().getName(), intent, serviceConnection, i, true);
    }

    @SuppressLint({"UntrackedBindService"})
    /* renamed from: c */
    public void m8264c(@RecentlyNonNull Context context, @RecentlyNonNull ServiceConnection serviceConnection) {
        if (!m8261f(serviceConnection) || !this.f5889a.containsKey(serviceConnection)) {
            m8260g(context, serviceConnection);
            return;
        }
        try {
            m8260g(context, this.f5889a.get(serviceConnection));
        } finally {
            this.f5889a.remove(serviceConnection);
        }
    }

    /* renamed from: d */
    public final boolean m8263d(@RecentlyNonNull Context context, @RecentlyNonNull String str, @RecentlyNonNull Intent intent, @RecentlyNonNull ServiceConnection serviceConnection, int i) {
        return m8262e(context, str, intent, serviceConnection, i, true);
    }
}
