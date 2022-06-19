package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzcl;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzjr.class */
public final class zzjr {

    /* renamed from: a */
    public final Context f6452a;

    public zzjr(Context context) {
        this.f6452a = context;
    }

    /* renamed from: a */
    public final void m38558a(Intent intent) {
        if (intent == null) {
            m38556c().f.m38590a("onRebind called with null intent");
            return;
        }
        m38556c().n.m38589b("onRebind called. action", intent.getAction());
    }

    /* renamed from: b */
    public final boolean m38557b(Intent intent) {
        if (intent == null) {
            m38556c().f.m38590a("onUnbind called with null intent");
            return true;
        }
        m38556c().n.m38589b("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    /* renamed from: c */
    public final zzeh m38556c() {
        return zzfr.q(this.f6452a, (zzcl) null, (Long) null).zzay();
    }
}
