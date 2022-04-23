package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfl.class */
public final class zzfl implements ServiceConnection {

    /* renamed from: a */
    private final String f9236a;

    /* renamed from: b */
    final /* synthetic */ zzfi f9237b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzfl(zzfi zzfiVar, String str) {
        this.f9237b = zzfiVar;
        this.f9236a = str;
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f9237b.f9228a.mo11081c().m11557G().m11540a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzd b = zzg.m12667b(iBinder);
            if (b == null) {
                this.f9237b.f9228a.mo11081c().m11557G().m11540a("Install Referrer Service implementation was not found");
                return;
            }
            this.f9237b.f9228a.mo11081c().m11552L().m11540a("Install Referrer Service connected");
            this.f9237b.f9228a.mo11083b().m11409x(new zzfk(this, b, this));
        } catch (Exception e) {
            this.f9237b.f9228a.mo11081c().m11557G().m11539b("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f9237b.f9228a.mo11081c().m11552L().m11540a("Install Referrer Service disconnected");
    }
}
