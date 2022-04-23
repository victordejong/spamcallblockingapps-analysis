package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.cu;
import com.google.android.gms.internal.measurement.du;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/eg.class */
public final class eg implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ eh f29558a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29559b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eg(eh ehVar, String str) {
        this.f29558a = ehVar;
        this.f29559b = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder != null) {
            try {
                du a2 = cu.a(iBinder);
                if (a2 == null) {
                    this.f29558a.f29560a.c().f.a("Install Referrer Service implementation was not found");
                    return;
                }
                this.f29558a.f29560a.c().k.a("Install Referrer Service connected");
                this.f29558a.f29560a.d().a(new ef(this, a2, this));
            } catch (Exception e) {
                this.f29558a.f29560a.c().f.a("Exception occurred while calling Install Referrer API", e);
            }
        } else {
            this.f29558a.f29560a.c().f.a("Install Referrer connection returned with null binder");
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f29558a.f29560a.c().k.a("Install Referrer Service disconnected");
    }
}
