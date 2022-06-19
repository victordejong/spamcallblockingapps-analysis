package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.q0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/q0.class */
public final class C9306q0 {

    /* renamed from: a */
    private static WeakReference<C9306q0> f39838a;

    /* renamed from: b */
    private final SharedPreferences f39839b;

    /* renamed from: c */
    private C9296m0 f39840c;

    /* renamed from: d */
    private final Executor f39841d;

    private C9306q0(SharedPreferences sharedPreferences, Executor executor) {
        this.f39841d = executor;
        this.f39839b = sharedPreferences;
    }

    /* renamed from: a */
    public static C9306q0 m1173a(Context context, Executor executor) {
        synchronized (C9306q0.class) {
            try {
                WeakReference<C9306q0> weakReference = f39838a;
                C9306q0 c9306q0 = weakReference != null ? weakReference.get() : null;
                if (c9306q0 != null) {
                    return c9306q0;
                }
                C9306q0 c9306q02 = new C9306q0(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                c9306q02.m1171c();
                f39838a = new WeakReference<>(c9306q02);
                return c9306q02;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    private void m1171c() {
        synchronized (this) {
            this.f39840c = C9296m0.m1216c(this.f39839b, "topic_operation_queue", ",", this.f39841d);
        }
    }

    /* renamed from: b */
    public C9304p0 m1172b() {
        C9304p0 m1178a;
        synchronized (this) {
            m1178a = C9304p0.m1178a(this.f39840c.m1214e());
        }
        return m1178a;
    }

    /* renamed from: d */
    public boolean m1170d(C9304p0 c9304p0) {
        boolean m1213f;
        synchronized (this) {
            m1213f = this.f39840c.m1213f(c9304p0.m1174e());
        }
        return m1213f;
    }
}
