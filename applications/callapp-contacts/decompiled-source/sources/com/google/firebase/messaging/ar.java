package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/ar.class */
public final class ar {

    /* renamed from: a  reason: collision with root package name */
    private static WeakReference<ar> f32501a;

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f32502b;

    /* renamed from: c  reason: collision with root package name */
    private am f32503c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f32504d;

    private ar(SharedPreferences sharedPreferences, Executor executor) {
        this.f32504d = executor;
        this.f32502b = sharedPreferences;
    }

    public static ar a(Context context, Executor executor) {
        synchronized (ar.class) {
            try {
                WeakReference<ar> weakReference = f32501a;
                ar arVar = weakReference != null ? weakReference.get() : null;
                if (arVar != null) {
                    return arVar;
                }
                ar arVar2 = new ar(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                arVar2.b();
                f32501a = new WeakReference<>(arVar2);
                return arVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void b() {
        synchronized (this) {
            this.f32503c = am.a(this.f32502b, this.f32504d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final aq a() {
        aq a2;
        synchronized (this) {
            a2 = aq.a(this.f32503c.a());
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(aq aqVar) {
        boolean a2;
        synchronized (this) {
            a2 = this.f32503c.a(aqVar.f32500c);
        }
        return a2;
    }
}
