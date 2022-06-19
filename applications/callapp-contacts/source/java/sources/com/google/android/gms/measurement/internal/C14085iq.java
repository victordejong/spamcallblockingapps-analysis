package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.AbstractC14084ip;
/* renamed from: com.google.android.gms.measurement.internal.iq */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iq.class */
public final class C14085iq<T extends Context & AbstractC14084ip> {

    /* renamed from: a */
    public final T f51913a;

    public C14085iq(T t) {
        C12045o.m19162a(t);
        this.f51913a = t;
    }

    /* renamed from: a */
    public final void m11724a() {
        C13979es.m11997a(this.f51913a, (zzz) null, (Long) null).mo11661c().f51403k.m12092a("Local AppMeasurementService is starting up");
    }

    /* renamed from: a */
    public final void m11722a(Runnable runnable) {
        C14110jo m11687a = C14110jo.m11687a(this.f51913a);
        m11687a.mo11658d().m12011a(new RunnableC14083io(this, m11687a, runnable));
    }

    /* renamed from: a */
    public final boolean m11723a(Intent intent) {
        if (intent == null) {
            m11719c().f51395c.m12092a("onUnbind called with null intent");
            return true;
        }
        m11719c().f51403k.m12091a("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    /* renamed from: b */
    public final void m11721b() {
        C13979es.m11997a(this.f51913a, (zzz) null, (Long) null).mo11661c().f51403k.m12092a("Local AppMeasurementService is shutting down");
    }

    /* renamed from: b */
    public final void m11720b(Intent intent) {
        if (intent == null) {
            m11719c().f51395c.m12092a("onRebind called with null intent");
            return;
        }
        m11719c().f51403k.m12091a("onRebind called. action", intent.getAction());
    }

    /* renamed from: c */
    public final C13947do m11719c() {
        return C13979es.m11997a(this.f51913a, (zzz) null, (Long) null).mo11661c();
    }
}
