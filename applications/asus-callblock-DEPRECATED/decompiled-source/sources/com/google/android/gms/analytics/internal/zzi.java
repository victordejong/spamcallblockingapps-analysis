package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.zzac;
import com.google.android.gms.common.internal.b;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzi.class */
public class zzi extends zzd {

    /* renamed from: a  reason: collision with root package name */
    private final zza f3863a = new zza();

    /* renamed from: b  reason: collision with root package name */
    private zzac f3864b;
    private final h c;
    private c d;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzi$zza.class */
    public class zza implements ServiceConnection {

        /* renamed from: b  reason: collision with root package name */
        private volatile zzac f3867b;
        private volatile boolean c;

        protected zza() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            b.b("AnalyticsServiceConnection.onServiceConnected");
            synchronized (this) {
                if (iBinder == null) {
                    zzi.this.zzbK("Service connected with null binder");
                    notifyAll();
                    return;
                }
                final zzac zzacVar = null;
                zzacVar = null;
                try {
                    String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                    if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(interfaceDescriptor)) {
                        zzacVar = zzac.zza.zzak(iBinder);
                        zzi.this.zzbG("Bound to IAnalyticsService interface");
                    } else {
                        zzi.this.zze("Got binder with a wrong descriptor", interfaceDescriptor);
                    }
                } catch (RemoteException e) {
                    zzi.this.zzbK("Service connect failed to get IAnalyticsService");
                }
                if (zzacVar == null) {
                    try {
                        com.google.android.gms.common.stats.b.a();
                        com.google.android.gms.common.stats.b.a(zzi.this.getContext(), zzi.this.f3863a);
                    } catch (IllegalArgumentException e2) {
                    }
                } else if (!this.c) {
                    zzi.this.zzbJ("onServiceConnected received after the timeout limit");
                    zzi.this.zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzi.zza.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            if (!zzi.this.isConnected()) {
                                zzi.this.zzbH("Connected to service after a timeout");
                                zzi.a(zzi.this, zzacVar);
                            }
                        }
                    });
                } else {
                    this.f3867b = zzacVar;
                }
                notifyAll();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(final ComponentName componentName) {
            b.b("AnalyticsServiceConnection.onServiceDisconnected");
            zzi.this.zzlT().zzf(new Runnable() { // from class: com.google.android.gms.analytics.internal.zzi.zza.2
                @Override // java.lang.Runnable
                public final void run() {
                    zzi.a(zzi.this, componentName);
                }
            });
        }

        public zzac zzmp() {
            zzac zzacVar = null;
            zzi.this.zzkN();
            Intent intent = new Intent("com.google.android.gms.analytics.service.START");
            intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
            Context context = zzi.this.getContext();
            intent.putExtra("app_package_name", context.getPackageName());
            com.google.android.gms.common.stats.b.a();
            synchronized (this) {
                this.f3867b = null;
                this.c = true;
                boolean b2 = com.google.android.gms.common.stats.b.b(context, intent, zzi.this.f3863a, 129);
                zzi.this.zza("Bind to service requested", Boolean.valueOf(b2));
                if (!b2) {
                    this.c = false;
                } else {
                    try {
                        wait(zzi.this.zzlS().zzns());
                    } catch (InterruptedException e) {
                        zzi.this.zzbJ("Wait for service connect was interrupted");
                    }
                    this.c = false;
                    zzacVar = this.f3867b;
                    this.f3867b = null;
                    if (zzacVar == null) {
                        zzi.this.zzbK("Successfully bound to service but never got onServiceConnected callback");
                    }
                }
            }
            return zzacVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzi(zzf zzfVar) {
        super(zzfVar);
        this.d = new c(zzfVar.zzlQ());
        this.c = new h(zzfVar) { // from class: com.google.android.gms.analytics.internal.zzi.1
            @Override // com.google.android.gms.analytics.internal.h
            public final void a() {
                zzi.b(zzi.this);
            }
        };
    }

    private void a() {
        this.d.a();
        this.c.a(zzlS().zznr());
    }

    static /* synthetic */ void a(zzi zziVar, ComponentName componentName) {
        zziVar.zzkN();
        if (zziVar.f3864b != null) {
            zziVar.f3864b = null;
            zziVar.zza("Disconnected from device AnalyticsService", componentName);
            zziVar.zzkw().zzlL();
        }
    }

    static /* synthetic */ void a(zzi zziVar, zzac zzacVar) {
        zziVar.zzkN();
        zziVar.f3864b = zzacVar;
        zziVar.a();
        zziVar.zzkw().a();
    }

    static /* synthetic */ void b(zzi zziVar) {
        zziVar.zzkN();
        if (zziVar.isConnected()) {
            zziVar.zzbG("Inactivity, disconnecting from device AnalyticsService");
            zziVar.disconnect();
        }
    }

    public boolean connect() {
        boolean z = true;
        zzkN();
        zzma();
        if (this.f3864b == null) {
            zzac zzmp = this.f3863a.zzmp();
            if (zzmp != null) {
                this.f3864b = zzmp;
                a();
            } else {
                z = false;
            }
        }
        return z;
    }

    public void disconnect() {
        zzkN();
        zzma();
        try {
            com.google.android.gms.common.stats.b.a();
            com.google.android.gms.common.stats.b.a(getContext(), this.f3863a);
        } catch (IllegalArgumentException e) {
        } catch (IllegalStateException e2) {
        }
        if (this.f3864b != null) {
            this.f3864b = null;
            zzkw().zzlL();
        }
    }

    public boolean isConnected() {
        zzkN();
        zzma();
        return this.f3864b != null;
    }

    public boolean zzb(zzab zzabVar) {
        boolean z;
        b.a(zzabVar);
        zzkN();
        zzma();
        zzac zzacVar = this.f3864b;
        if (zzacVar == null) {
            z = false;
        } else {
            try {
                zzacVar.zza(zzabVar.zzm(), zzabVar.zznT(), zzabVar.zznV() ? zzlS().zznk() : zzlS().zznl(), Collections.emptyList());
                a();
                z = true;
            } catch (RemoteException e) {
                zzbG("Failed to send hits to AnalyticsService");
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.analytics.internal.zzd
    public void zzkO() {
    }

    public boolean zzmm() {
        boolean z = false;
        zzkN();
        zzma();
        zzac zzacVar = this.f3864b;
        if (zzacVar != null) {
            try {
                zzacVar.zzlI();
                a();
                z = true;
            } catch (RemoteException e) {
                zzbG("Failed to clear hits from AnalyticsService");
            }
        }
        return z;
    }
}
