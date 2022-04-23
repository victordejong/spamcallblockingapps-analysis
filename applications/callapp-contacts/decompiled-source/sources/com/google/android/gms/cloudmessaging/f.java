package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.b.a;
import com.google.android.gms.internal.b.b;
import com.google.android.gms.tasks.ah;
import com.google.android.gms.tasks.h;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/f.class */
public final class f {

    /* renamed from: c  reason: collision with root package name */
    private static f f22549c;

    /* renamed from: a  reason: collision with root package name */
    final Context f22550a;

    /* renamed from: b  reason: collision with root package name */
    final ScheduledExecutorService f22551b;

    /* renamed from: d  reason: collision with root package name */
    private g f22552d = new g(this);
    private int e = 1;

    private f(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f22551b = scheduledExecutorService;
        this.f22550a = context.getApplicationContext();
    }

    public static f a(Context context) {
        f fVar;
        synchronized (f.class) {
            try {
                if (f22549c == null) {
                    b a2 = a.a();
                    com.google.android.gms.common.util.a.a aVar = new com.google.android.gms.common.util.a.a("MessengerIpcClient");
                    int i = com.google.android.gms.internal.b.f.f28666b;
                    f22549c = new f(context, a2.b(aVar));
                }
                fVar = f22549c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        int i;
        synchronized (this) {
            i = this.e;
            this.e = i + 1;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <T> h<T> a(q<T> qVar) {
        ah<T> ahVar;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(qVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
            }
            if (!this.f22552d.a((q<?>) qVar)) {
                g gVar = new g(this);
                this.f22552d = gVar;
                gVar.a((q<?>) qVar);
            }
            ahVar = qVar.f22568b.f30014a;
        }
        return ahVar;
    }
}
