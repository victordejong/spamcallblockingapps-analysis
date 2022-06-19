package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.AbstractBinderC13427cu;
import com.google.android.gms.internal.measurement.AbstractC13454du;
/* renamed from: com.google.android.gms.measurement.internal.eg */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eg.class */
public final class ServiceConnectionC13966eg implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ C13967eh f51480a;

    /* renamed from: b */
    private final String f51481b;

    public ServiceConnectionC13966eg(C13967eh c13967eh, String str) {
        this.f51480a = c13967eh;
        this.f51481b = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f51480a.f51482a.mo11661c().f51398f.m12092a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            AbstractC13454du m12929a = AbstractBinderC13427cu.m12929a(iBinder);
            if (m12929a == null) {
                this.f51480a.f51482a.mo11661c().f51398f.m12092a("Install Referrer Service implementation was not found");
                return;
            }
            this.f51480a.f51482a.mo11661c().f51403k.m12092a("Install Referrer Service connected");
            this.f51480a.f51482a.mo11658d().m12011a(new RunnableC13965ef(this, m12929a, this));
        } catch (Exception e) {
            this.f51480a.f51482a.mo11661c().f51398f.m12091a("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f51480a.f51482a.mo11661c().f51403k.m12092a("Install Referrer Service disconnected");
    }
}
