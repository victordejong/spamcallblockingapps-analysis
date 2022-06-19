package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.p081u.ThreadFactoryC1624a;
import com.google.android.gms.tasks.AbstractC2397g;
import e.c.a.a.a.b.a;
import e.c.a.a.a.b.f;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.cloudmessaging.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/f.class */
public final class C1531f {
    @GuardedBy("MessengerIpcClient.class")

    /* renamed from: e */
    private static C1531f f5771e;

    /* renamed from: a */
    private final Context f5772a;

    /* renamed from: b */
    private final ScheduledExecutorService f5773b;
    @GuardedBy("this")

    /* renamed from: c */
    private ServiceConnectionC1532g f5774c = new ServiceConnectionC1532g(this);
    @GuardedBy("this")

    /* renamed from: d */
    private int f5775d = 1;

    private C1531f(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f5773b = scheduledExecutorService;
        this.f5772a = context.getApplicationContext();
    }

    /* renamed from: a */
    private final int m8495a() {
        int i;
        synchronized (this) {
            i = this.f5775d;
            this.f5775d = i + 1;
        }
        return i;
    }

    /* renamed from: b */
    public static /* synthetic */ Context m8494b(C1531f c1531f) {
        return c1531f.f5772a;
    }

    /* renamed from: c */
    public static C1531f m8493c(Context context) {
        C1531f c1531f;
        synchronized (C1531f.class) {
            try {
                if (f5771e == null) {
                    f5771e = new C1531f(context, a.a().b(1, new ThreadFactoryC1624a("MessengerIpcClient"), f.b));
                }
                c1531f = f5771e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1531f;
    }

    /* renamed from: e */
    private final <T> AbstractC2397g<T> m8491e(AbstractC1541q<T> abstractC1541q) {
        AbstractC2397g<T> m3769a;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(abstractC1541q);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
                Log.d("MessengerIpcClient", sb.toString());
            }
            if (!this.f5774c.m8484e(abstractC1541q)) {
                ServiceConnectionC1532g serviceConnectionC1532g = new ServiceConnectionC1532g(this);
                this.f5774c = serviceConnectionC1532g;
                serviceConnectionC1532g.m8484e(abstractC1541q);
            }
            m3769a = abstractC1541q.f5793b.m3769a();
        }
        return m3769a;
    }

    /* renamed from: g */
    public static /* synthetic */ ScheduledExecutorService m8489g(C1531f c1531f) {
        return c1531f.f5773b;
    }

    /* renamed from: d */
    public final AbstractC2397g<Void> m8492d(int i, Bundle bundle) {
        return m8491e(new o(m8495a(), 2, bundle));
    }

    /* renamed from: f */
    public final AbstractC2397g<Bundle> m8490f(int i, Bundle bundle) {
        return m8491e(new s(m8495a(), 1, bundle));
    }
}
