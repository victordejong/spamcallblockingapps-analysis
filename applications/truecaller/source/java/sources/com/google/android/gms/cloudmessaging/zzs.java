package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.internal.cloudmessaging.zze;
import com.google.android.gms.tasks.Task;
import e.m.a.f.q.b0;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import p193e.p1577m.p1578a.p1642f.p1652d.AbstractC24903f;
import p193e.p1577m.p1578a.p1642f.p1652d.ServiceConnectionC24900c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zzs.class */
public final class zzs {

    /* renamed from: e */
    public static zzs f5642e;

    /* renamed from: a */
    public final Context f5643a;

    /* renamed from: b */
    public final ScheduledExecutorService f5644b;

    /* renamed from: c */
    public ServiceConnectionC24900c f5645c = new ServiceConnectionC24900c(this, null);

    /* renamed from: d */
    public int f5646d = 1;

    public zzs(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f5644b = scheduledExecutorService;
        this.f5643a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static zzs m39082a(Context context) {
        zzs zzsVar;
        synchronized (zzs.class) {
            try {
                if (f5642e == null) {
                    zze.zza();
                    f5642e = new zzs(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new NamedThreadFactory("MessengerIpcClient"))));
                }
                zzsVar = f5642e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzsVar;
    }

    /* renamed from: b */
    public final <T> Task<T> m39081b(AbstractC24903f<T> abstractC24903f) {
        b0<T> b0Var;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String.valueOf(abstractC24903f).length();
            }
            if (!this.f5645c.m4297d(abstractC24903f)) {
                ServiceConnectionC24900c serviceConnectionC24900c = new ServiceConnectionC24900c(this, null);
                this.f5645c = serviceConnectionC24900c;
                serviceConnectionC24900c.m4297d(abstractC24903f);
            }
            b0Var = abstractC24903f.f69801b.f6493a;
        }
        return b0Var;
    }
}
