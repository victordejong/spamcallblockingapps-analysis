package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.AbstractC2139k3;
import com.google.android.gms.internal.measurement.l2;
/* renamed from: com.google.android.gms.measurement.internal.g4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g4.class */
public final class ServiceConnectionC2260g4 implements ServiceConnection {

    /* renamed from: a */
    private final String f10206a;

    /* renamed from: b */
    final /* synthetic */ C2267h4 f10207b;

    ServiceConnectionC2260g4(C2267h4 h4Var, String str) {
        this.f10207b = h4Var;
        this.f10206a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder != null) {
            try {
                AbstractC2139k3 r1 = l2.r1(iBinder);
                if (r1 == null) {
                    this.f10207b.f10218a.t().p().m3876a("Install Referrer Service implementation was not found");
                    return;
                }
                this.f10207b.f10218a.t().w().m3876a("Install Referrer Service connected");
                this.f10207b.f10218a.c().p(new RunnableC2252f4(this, r1, this));
            } catch (Exception e) {
                this.f10207b.f10218a.t().p().m3875b("Exception occurred while calling Install Referrer API", e);
            }
        } else {
            this.f10207b.f10218a.t().p().m3876a("Install Referrer connection returned with null binder");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f10207b.f10218a.t().w().m3876a("Install Referrer Service disconnected");
    }
}
