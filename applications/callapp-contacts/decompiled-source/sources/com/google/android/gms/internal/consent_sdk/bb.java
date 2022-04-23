package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bb.class */
public abstract class bb {

    /* renamed from: a  reason: collision with root package name */
    private static bb f28746a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bb$a.class */
    interface a {
        a a(Application application);

        bb a();
    }

    public static bb a(Context context) {
        bb bbVar;
        synchronized (bb.class) {
            try {
                if (f28746a == null) {
                    f28746a = new j(null).a((Application) context.getApplicationContext()).a();
                }
                bbVar = f28746a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bbVar;
    }

    public abstract cc a();

    public abstract aa b();
}
