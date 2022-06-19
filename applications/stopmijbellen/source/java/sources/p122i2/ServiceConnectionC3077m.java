package p122i2;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.android.billingclient.api.C0870b;
import com.google.android.gms.internal.play_billing.zzb;
import com.google.android.gms.internal.play_billing.zzd;
import java.util.concurrent.Callable;
import p095f8.C2768a;
/* renamed from: i2.m */
/* loaded from: classes-dex2jar.jar:i2/m.class */
public final class ServiceConnectionC3077m implements ServiceConnection {

    /* renamed from: a */
    public final Object f10413a = new Object();

    /* renamed from: b */
    public boolean f10414b = false;

    /* renamed from: c */
    public AbstractC3066b f10415c;

    /* renamed from: d */
    public final /* synthetic */ C0870b f10416d;

    public /* synthetic */ ServiceConnectionC3077m(C0870b c0870b, AbstractC3066b abstractC3066b) {
        this.f10416d = c0870b;
        this.f10415c = abstractC3066b;
    }

    /* renamed from: a */
    public final void m2658a(C3067c c3067c) {
        synchronized (this.f10413a) {
            AbstractC3066b abstractC3066b = this.f10415c;
            if (abstractC3066b != null) {
                ((C2768a.C2773e) abstractC3066b).m3137a(c3067c);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzb.zzm("BillingClient", "Billing service connected.");
        this.f10416d.f3215f = zzd.zzo(iBinder);
        C0870b c0870b = this.f10416d;
        if (c0870b.m7218j(new Callable() { // from class: i2.l
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    Method dump skipped, instructions count: 632
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p122i2.CallableC3076l.call():java.lang.Object");
            }
        }, 30000L, new RunnableC3075k(this, 0), c0870b.m7222f()) == null) {
            m2658a(this.f10416d.m7220h());
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzb.zzn("BillingClient", "Billing service disconnected.");
        this.f10416d.f3215f = null;
        this.f10416d.f3210a = 0;
        synchronized (this.f10413a) {
            AbstractC3066b abstractC3066b = this.f10415c;
        }
    }
}
