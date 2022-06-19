package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.AbstractBinderC7501p2;
import com.google.android.gms.internal.measurement.AbstractC7502p3;
/* renamed from: com.google.android.gms.measurement.internal.g4 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/g4.class */
public final class ServiceConnectionC7721g4 implements ServiceConnection {

    /* renamed from: a */
    private final String f35285a;

    /* renamed from: b */
    final /* synthetic */ C7733h4 f35286b;

    public ServiceConnectionC7721g4(C7733h4 c7733h4, String str) {
        this.f35286b = c7733h4;
        this.f35285a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f35286b.f35302a.mo6047C().m6192p().m6216a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            AbstractC7502p3 m7030D0 = AbstractBinderC7501p2.m7030D0(iBinder);
            if (m7030D0 == null) {
                this.f35286b.f35302a.mo6047C().m6192p().m6216a("Install Referrer Service implementation was not found");
                return;
            }
            this.f35286b.f35302a.mo6047C().m6187u().m6216a("Install Referrer Service connected");
            this.f35286b.f35302a.mo6029b().m6109p(new RunnableC7709f4(this, m7030D0, this));
        } catch (Exception e) {
            this.f35286b.f35302a.mo6047C().m6192p().m6215b("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f35286b.f35302a.mo6047C().m6187u().m6216a("Install Referrer Service disconnected");
    }
}
