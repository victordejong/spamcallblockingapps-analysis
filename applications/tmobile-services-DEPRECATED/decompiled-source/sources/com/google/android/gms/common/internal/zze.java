package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.stats.ConnectionTracker;
import java.util.HashMap;
import javax.annotation.concurrent.GuardedBy;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zze.class */
public final class zze extends GmsClientSupervisor implements Handler.Callback {

    /* renamed from: d */
    private final Context f7557d;

    /* renamed from: e */
    private final Handler f7558e;
    @GuardedBy

    /* renamed from: c */
    private final HashMap<GmsClientSupervisor.zza, zzf> f7556c = new HashMap<>();

    /* renamed from: f */
    private final ConnectionTracker f7559f = ConnectionTracker.m14372b();

    /* renamed from: g */
    private final long f7560g = 5000;

    /* renamed from: h */
    private final long f7561h = 300000;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(Context context) {
        this.f7557d = context.getApplicationContext();
        this.f7558e = new com.google.android.gms.internal.common.zze(context.getMainLooper(), this);
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    /* renamed from: c */
    protected final boolean mo14430c(GmsClientSupervisor.zza zzaVar, ServiceConnection serviceConnection, String str) {
        zzf zzfVar;
        boolean d;
        Preconditions.m14522l(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7556c) {
            zzf zzfVar2 = this.f7556c.get(zzaVar);
            if (zzfVar2 == null) {
                zzf zzfVar3 = new zzf(this, zzaVar);
                zzfVar3.m14419e(serviceConnection, str);
                zzfVar3.m14416h(str);
                this.f7556c.put(zzaVar, zzfVar3);
                zzfVar = zzfVar3;
            } else {
                this.f7558e.removeMessages(0, zzaVar);
                if (!zzfVar2.m14418f(serviceConnection)) {
                    zzfVar2.m14419e(serviceConnection, str);
                    int c = zzfVar2.m14421c();
                    if (c == 1) {
                        serviceConnection.onServiceConnected(zzfVar2.m14422b(), zzfVar2.m14423a());
                        zzfVar = zzfVar2;
                    } else if (c != 2) {
                        zzfVar = zzfVar2;
                    } else {
                        zzfVar2.m14416h(str);
                        zzfVar = zzfVar2;
                    }
                } else {
                    String valueOf = String.valueOf(zzaVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(valueOf);
                    throw new IllegalStateException(sb.toString());
                }
            }
            d = zzfVar.m14420d();
        }
        return d;
    }

    @Override // com.google.android.gms.common.internal.GmsClientSupervisor
    /* renamed from: d */
    protected final void mo14429d(GmsClientSupervisor.zza zzaVar, ServiceConnection serviceConnection, String str) {
        Preconditions.m14522l(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.f7556c) {
            zzf zzfVar = this.f7556c.get(zzaVar);
            if (zzfVar == null) {
                String valueOf = String.valueOf(zzaVar);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(valueOf);
                throw new IllegalStateException(sb.toString());
            } else if (zzfVar.m14418f(serviceConnection)) {
                zzfVar.m14417g(serviceConnection, str);
                if (zzfVar.m14414j()) {
                    this.f7558e.sendMessageDelayed(this.f7558e.obtainMessage(0, zzaVar), this.f7560g);
                }
            } else {
                String valueOf2 = String.valueOf(zzaVar);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(valueOf2);
                throw new IllegalStateException(sb2.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.f7556c) {
                GmsClientSupervisor.zza zzaVar = (GmsClientSupervisor.zza) message.obj;
                zzf zzfVar = this.f7556c.get(zzaVar);
                if (zzfVar != null && zzfVar.m14414j()) {
                    if (zzfVar.m14420d()) {
                        zzfVar.m14415i("GmsClientSupervisor");
                    }
                    this.f7556c.remove(zzaVar);
                }
            }
            return true;
        } else if (i != 1) {
            return false;
        } else {
            synchronized (this.f7556c) {
                GmsClientSupervisor.zza zzaVar2 = (GmsClientSupervisor.zza) message.obj;
                zzf zzfVar2 = this.f7556c.get(zzaVar2);
                if (zzfVar2 != null && zzfVar2.m14421c() == 3) {
                    String valueOf = String.valueOf(zzaVar2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                    sb.append("Timeout waiting for ServiceConnection callback ");
                    sb.append(valueOf);
                    Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                    ComponentName b = zzfVar2.m14422b();
                    ComponentName componentName = b;
                    if (b == null) {
                        componentName = zzaVar2.m14547a();
                    }
                    ComponentName componentName2 = componentName;
                    if (componentName == null) {
                        componentName2 = new ComponentName(zzaVar2.m14546b(), "unknown");
                    }
                    zzfVar2.onServiceDisconnected(componentName2);
                }
            }
            return true;
        }
    }
}
