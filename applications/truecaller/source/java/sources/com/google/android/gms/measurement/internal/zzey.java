package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zzbq;
import com.google.android.gms.internal.measurement.zzbr;
import p193e.p1577m.p1578a.p1642f.p1667l.p1668a.RunnableC25118v;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzey.class */
public final class zzey implements ServiceConnection {

    /* renamed from: a */
    public final String f6393a;

    /* renamed from: b */
    public final /* synthetic */ zzez f6394b;

    public zzey(zzez zzezVar, String str) {
        this.f6394b = zzezVar;
        this.f6393a = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f6394b.f6395a.zzay().i.m38590a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzbr zzb = zzbq.zzb(iBinder);
            if (zzb == null) {
                this.f6394b.f6395a.zzay().i.m38590a("Install Referrer Service implementation was not found");
                return;
            }
            this.f6394b.f6395a.zzay().n.m38590a("Install Referrer Service connected");
            this.f6394b.f6395a.a().n(new RunnableC25118v(this, zzb, this));
        } catch (RuntimeException e) {
            this.f6394b.f6395a.zzay().i.m38589b("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f6394b.f6395a.zzay().n.m38590a("Install Referrer Service disconnected");
    }
}
