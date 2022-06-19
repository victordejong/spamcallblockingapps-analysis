package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.AbstractBinderC3922et;
import com.google.android.gms.internal.measurement.AbstractC3831bt;
/* renamed from: com.google.android.gms.measurement.internal.et */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/et.class */
public final class ServiceConnectionC4285et implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ C4286eu f18811a;

    /* renamed from: b */
    private final String f18812b;

    public ServiceConnectionC4285et(C4286eu c4286eu, String str) {
        this.f18811a = c4286eu;
        this.f18812b = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f18811a.f18813a.mo4030v().m4662e().m4654a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            AbstractC3831bt m5589a = AbstractBinderC3922et.m5589a(iBinder);
            if (m5589a == null) {
                this.f18811a.f18813a.mo4030v().m4662e().m4654a("Install Referrer Service implementation was not found");
            } else {
                this.f18811a.f18813a.mo4030v().m4657j().m4654a("Install Referrer Service connected");
                this.f18811a.f18813a.mo4031u().m4587a(new RunnableC4288ew(this, m5589a, this));
            }
        } catch (Exception e) {
            this.f18811a.f18813a.mo4030v().m4662e().m4653a("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f18811a.f18813a.mo4030v().m4657j().m4654a("Install Referrer Service disconnected");
    }
}
