package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
/* renamed from: com.google.firebase.messaging.ar */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ar.class */
public final class C15860ar {

    /* renamed from: a */
    private static WeakReference<C15860ar> f56364a;

    /* renamed from: b */
    private final SharedPreferences f56365b;

    /* renamed from: c */
    private C15853am f56366c;

    /* renamed from: d */
    private final Executor f56367d;

    private C15860ar(SharedPreferences sharedPreferences, Executor executor) {
        this.f56367d = executor;
        this.f56365b = sharedPreferences;
    }

    /* renamed from: a */
    public static C15860ar m8159a(Context context, Executor executor) {
        synchronized (C15860ar.class) {
            try {
                WeakReference<C15860ar> weakReference = f56364a;
                C15860ar c15860ar = weakReference != null ? weakReference.get() : null;
                if (c15860ar != null) {
                    return c15860ar;
                }
                C15860ar c15860ar2 = new C15860ar(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                c15860ar2.m8157b();
                f56364a = new WeakReference<>(c15860ar2);
                return c15860ar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    private void m8157b() {
        synchronized (this) {
            this.f56366c = C15853am.m8176a(this.f56365b, this.f56367d);
        }
    }

    /* renamed from: a */
    public final C15859aq m8160a() {
        C15859aq m8161a;
        synchronized (this) {
            m8161a = C15859aq.m8161a(this.f56366c.m8177a());
        }
        return m8161a;
    }

    /* renamed from: a */
    public final boolean m8158a(C15859aq c15859aq) {
        boolean m8175a;
        synchronized (this) {
            m8175a = this.f56366c.m8175a(c15859aq.f56363c);
        }
        return m8175a;
    }
}
