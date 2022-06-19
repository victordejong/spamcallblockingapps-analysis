package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.p133a.ThreadFactoryC2702a;
import com.google.android.gms.internal.p140g.C3734a;
import com.google.android.gms.internal.p140g.C3739f;
import com.google.android.gms.tasks.AbstractC4469g;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.firebase.iid.d */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/d.class */
public final class C4977d {
    @GuardedBy("MessengerIpcClient.class")

    /* renamed from: a */
    private static C4977d f21143a;

    /* renamed from: b */
    private final Context f21144b;

    /* renamed from: c */
    private final ScheduledExecutorService f21145c;
    @GuardedBy("this")

    /* renamed from: d */
    private ServiceConnectionC4978e f21146d = new ServiceConnectionC4978e(this);
    @GuardedBy("this")

    /* renamed from: e */
    private int f21147e = 1;

    private C4977d(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f21145c = scheduledExecutorService;
        this.f21144b = context.getApplicationContext();
    }

    /* renamed from: a */
    private final int m1937a() {
        int i;
        synchronized (this) {
            i = this.f21147e;
            this.f21147e = i + 1;
        }
        return i;
    }

    /* renamed from: a */
    private final <T> AbstractC4469g<T> m1933a(AbstractC4987n<T> abstractC4987n) {
        AbstractC4469g<T> m3889a;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(abstractC4987n);
                Log.d("MessengerIpcClient", new StringBuilder(String.valueOf(valueOf).length() + 9).append("Queueing ").append(valueOf).toString());
            }
            if (!this.f21146d.m1927a((AbstractC4987n<?>) abstractC4987n)) {
                this.f21146d = new ServiceConnectionC4978e(this);
                this.f21146d.m1927a((AbstractC4987n<?>) abstractC4987n);
            }
            m3889a = abstractC4987n.f21165b.m3889a();
        }
        return m3889a;
    }

    /* renamed from: a */
    public static C4977d m1935a(Context context) {
        C4977d c4977d;
        synchronized (C4977d.class) {
            try {
                if (f21143a == null) {
                    f21143a = new C4977d(context, C3734a.m6506a().mo6505a(1, new ThreadFactoryC2702a("MessengerIpcClient"), C3739f.f17797b));
                }
                c4977d = f21143a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c4977d;
    }

    /* renamed from: a */
    public final AbstractC4469g<Bundle> m1936a(int i, Bundle bundle) {
        return m1933a(new C4989p(m1937a(), 1, bundle));
    }
}
