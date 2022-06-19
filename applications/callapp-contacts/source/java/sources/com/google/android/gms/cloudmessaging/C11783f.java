package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.util.p354a.ThreadFactoryC12095a;
import com.google.android.gms.internal.p356b.AbstractC13145b;
import com.google.android.gms.internal.p356b.C13144a;
import com.google.android.gms.internal.p356b.C13149f;
import com.google.android.gms.tasks.AbstractC14185h;
import com.google.android.gms.tasks.C14176ah;
import java.util.concurrent.ScheduledExecutorService;
/* renamed from: com.google.android.gms.cloudmessaging.f */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/cloudmessaging/f.class */
public final class C11783f {

    /* renamed from: c */
    private static C11783f f39111c;

    /* renamed from: a */
    final Context f39112a;

    /* renamed from: b */
    final ScheduledExecutorService f39113b;

    /* renamed from: d */
    private ServiceConnectionC11784g f39114d = new ServiceConnectionC11784g(this);

    /* renamed from: e */
    private int f39115e = 1;

    private C11783f(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f39113b = scheduledExecutorService;
        this.f39112a = context.getApplicationContext();
    }

    /* renamed from: a */
    public static C11783f m19494a(Context context) {
        C11783f c11783f;
        synchronized (C11783f.class) {
            try {
                if (f39111c == null) {
                    AbstractC13145b m13606a = C13144a.m13606a();
                    ThreadFactoryC12095a threadFactoryC12095a = new ThreadFactoryC12095a("MessengerIpcClient");
                    int i = C13149f.f50264b;
                    f39111c = new C11783f(context, m13606a.mo13604b(threadFactoryC12095a));
                }
                c11783f = f39111c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c11783f;
    }

    /* renamed from: a */
    public final int m19495a() {
        int i;
        synchronized (this) {
            i = this.f39115e;
            this.f39115e = i + 1;
        }
        return i;
    }

    /* renamed from: a */
    public final <T> AbstractC14185h<T> m19493a(AbstractC11794q<T> abstractC11794q) {
        C14176ah<T> c14176ah;
        synchronized (this) {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                String valueOf = String.valueOf(abstractC11794q);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 9);
                sb.append("Queueing ");
                sb.append(valueOf);
            }
            if (!this.f39114d.m19488a((AbstractC11794q<?>) abstractC11794q)) {
                ServiceConnectionC11784g serviceConnectionC11784g = new ServiceConnectionC11784g(this);
                this.f39114d = serviceConnectionC11784g;
                serviceConnectionC11784g.m19488a((AbstractC11794q<?>) abstractC11794q);
            }
            c14176ah = abstractC11794q.f39133b.f52142a;
        }
        return c14176ah;
    }
}
