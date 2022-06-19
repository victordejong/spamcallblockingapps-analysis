package p193e.p1432d.p1433a.p1434a;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.play_billing.zza;
import com.google.android.gms.internal.play_billing.zzc;
import java.util.concurrent.Callable;
/* renamed from: e.d.a.a.z */
/* loaded from: classes-dex2jar.jar:e/d/a/a/z.class */
public final class ServiceConnectionC22103z implements ServiceConnection {

    /* renamed from: a */
    public final Object f61416a = new Object();

    /* renamed from: b */
    public boolean f61417b = false;

    /* renamed from: c */
    public AbstractC22076i f61418c;

    /* renamed from: d */
    public final /* synthetic */ C22068e f61419d;

    public /* synthetic */ ServiceConnectionC22103z(C22068e c22068e, AbstractC22076i abstractC22076i) {
        this.f61419d = c22068e;
        this.f61418c = abstractC22076i;
    }

    /* renamed from: a */
    public final void m8798a(C22080k c22080k) {
        synchronized (this.f61416a) {
            AbstractC22076i abstractC22076i = this.f61418c;
            if (abstractC22076i != null) {
                abstractC22076i.onBillingSetupFinished(c22080k);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zza.zzj("BillingClient", "Billing service connected.");
        this.f61419d.f61336f = zzc.zzn(iBinder);
        C22068e c22068e = this.f61419d;
        if (c22068e.m8807o(new Callable() { // from class: e.d.a.a.y
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    Method dump skipped, instructions count: 586
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1433a.p1434a.CallableC22102y.call():java.lang.Object");
            }
        }, 30000L, new Runnable() { // from class: e.d.a.a.x
            @Override // java.lang.Runnable
            public final void run() {
                ServiceConnectionC22103z serviceConnectionC22103z = ServiceConnectionC22103z.this;
                serviceConnectionC22103z.f61419d.f61331a = 0;
                serviceConnectionC22103z.f61419d.f61336f = null;
                serviceConnectionC22103z.m8798a(C22061a0.f61320m);
            }
        }, c22068e.m8811k()) == null) {
            m8798a(this.f61419d.m8809m());
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zza.zzk("BillingClient", "Billing service disconnected.");
        this.f61419d.f61336f = null;
        this.f61419d.f61331a = 0;
        synchronized (this.f61416a) {
            AbstractC22076i abstractC22076i = this.f61418c;
            if (abstractC22076i != null) {
                abstractC22076i.onBillingServiceDisconnected();
            }
        }
    }
}
