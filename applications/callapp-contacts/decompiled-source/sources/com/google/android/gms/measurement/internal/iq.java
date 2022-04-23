package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.ip;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iq.class */
public final class iq<T extends Context & ip> {

    /* renamed from: a  reason: collision with root package name */
    public final T f29858a;

    public iq(T t) {
        o.a(t);
        this.f29858a = t;
    }

    public final void a() {
        es.a(this.f29858a, (zzz) null, (Long) null).c().k.a("Local AppMeasurementService is starting up");
    }

    public final void a(Runnable runnable) {
        jo a2 = jo.a(this.f29858a);
        a2.d().a(new io(this, a2, runnable));
    }

    public final boolean a(Intent intent) {
        if (intent == null) {
            c().f29506c.a("onUnbind called with null intent");
            return true;
        }
        c().k.a("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final void b() {
        es.a(this.f29858a, (zzz) null, (Long) null).c().k.a("Local AppMeasurementService is shutting down");
    }

    public final void b(Intent intent) {
        if (intent == null) {
            c().f29506c.a("onRebind called with null intent");
            return;
        }
        c().k.a("onRebind called. action", intent.getAction());
    }

    public final Cdo c() {
        return es.a(this.f29858a, (zzz) null, (Long) null).c();
    }
}
