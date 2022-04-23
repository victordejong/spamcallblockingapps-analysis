package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.common.zzn;
import com.google.android.gms.internal.common.zzo;
import java.util.concurrent.ConcurrentHashMap;
import p131c.p161d.p170b.p224d.p238d.p247f.C3314a;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/ConnectionTracker.class */
public class ConnectionTracker {

    /* renamed from: c */
    public static volatile ConnectionTracker f23541c;
    @VisibleForTesting

    /* renamed from: a */
    public ConcurrentHashMap<ServiceConnection, ServiceConnection> f23543a = new ConcurrentHashMap<>();

    /* renamed from: b */
    public static final Object f23540b = new Object();

    /* renamed from: d */
    public static zzo<Boolean> f23542d = zzn.m10510a(C3314a.f12033a);

    @KeepForSdk
    /* renamed from: a */
    public static ConnectionTracker m17130a() {
        if (f23541c == null) {
            synchronized (f23540b) {
                if (f23541c == null) {
                    f23541c = new ConnectionTracker();
                }
            }
        }
        return f23541c;
    }

    /* renamed from: a */
    public static boolean m17125a(ServiceConnection serviceConnection) {
        return f23542d.zza().booleanValue() && !(serviceConnection instanceof zzj);
    }

    /* renamed from: b */
    public static void m17123b(Context context, ServiceConnection serviceConnection) {
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException e) {
            Log.w("ConnectionTracker", "Exception thrown while unbinding", e);
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ boolean m17124b() {
        return false;
    }

    @KeepForSdk
    /* renamed from: a */
    public void m17128a(Context context, ServiceConnection serviceConnection) {
        if (!m17125a(serviceConnection) || !this.f23543a.containsKey(serviceConnection)) {
            m17123b(context, serviceConnection);
            return;
        }
        try {
            m17123b(context, this.f23543a.get(serviceConnection));
        } finally {
            this.f23543a.remove(serviceConnection);
        }
    }

    @KeepForSdk
    /* renamed from: a */
    public boolean m17129a(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return m17127a(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    /* renamed from: a */
    public final boolean m17127a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        return m17126a(context, str, intent, serviceConnection, i, true);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public final boolean m17126a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i, boolean z) {
        boolean z2;
        ComponentName component = intent.getComponent();
        if (component == null ? false : ClientLibraryUtils.m17105b(context, component.getPackageName())) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            return false;
        }
        if (m17125a(serviceConnection)) {
            ServiceConnection putIfAbsent = this.f23543a.putIfAbsent(serviceConnection, serviceConnection);
            if (!(putIfAbsent == null || serviceConnection == putIfAbsent)) {
                Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
            }
            try {
                boolean bindService = context.bindService(intent, serviceConnection, i);
                z2 = bindService;
                if (!bindService) {
                    this.f23543a.remove(serviceConnection, serviceConnection);
                    z2 = bindService;
                }
            } catch (Throwable th) {
                this.f23543a.remove(serviceConnection, serviceConnection);
                throw th;
            }
        } else {
            z2 = context.bindService(intent, serviceConnection, i);
        }
        return z2;
    }
}
