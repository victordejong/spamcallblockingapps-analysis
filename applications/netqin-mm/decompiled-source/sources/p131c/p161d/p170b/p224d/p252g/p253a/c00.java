package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.HandlerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzduj;
import com.google.android.gms.internal.ads.zzduk;
import com.google.android.gms.internal.ads.zzdun;
import com.google.android.gms.internal.ads.zzejz;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
@VisibleForTesting
/* renamed from: c.d.b.d.g.a.c00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/c00.class */
public final class c00 implements BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {
    @VisibleForTesting

    /* renamed from: a */
    public zzduk f12507a;

    /* renamed from: b */
    public final String f12508b;

    /* renamed from: c */
    public final String f12509c;

    /* renamed from: d */
    public final LinkedBlockingQueue<zzcf.zza> f12510d = new LinkedBlockingQueue<>();

    /* renamed from: e */
    public final HandlerThread f12511e;

    public c00(Context context, String str, String str2) {
        this.f12508b = str;
        this.f12509c = str2;
        HandlerThread handlerThread = new HandlerThread("GassClient");
        this.f12511e = handlerThread;
        handlerThread.start();
        this.f12507a = new zzduk(context, this.f12511e.getLooper(), this, this, 9200000);
        this.f12507a.m17350p();
    }

    @VisibleForTesting
    /* renamed from: c */
    public static zzcf.zza m27107c() {
        zzcf.zza.C10493zza u = zzcf.zza.m14539u();
        u.m14477u(32768L);
        return (zzcf.zza) ((zzejz) u.mo12342K());
    }

    /* renamed from: a */
    public final zzcf.zza m27109a(int i) {
        zzcf.zza zzaVar;
        try {
            zzaVar = this.f12510d.poll(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            zzaVar = null;
        }
        zzcf.zza zzaVar2 = zzaVar;
        if (zzaVar == null) {
            zzaVar2 = m27107c();
        }
        return zzaVar2;
    }

    /* renamed from: a */
    public final void m27110a() {
        zzduk zzdukVar = this.f12507a;
        if (zzdukVar == null) {
            return;
        }
        if (zzdukVar.m17365c() || this.f12507a.m17358g()) {
            this.f12507a.mo10491b();
        }
    }

    /* renamed from: b */
    public final zzdun m27108b() {
        try {
            return this.f12507a.m13160H();
        } catch (DeadObjectException | IllegalStateException e) {
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzdun b = m27108b();
        if (b != null) {
            try {
                this.f12510d.put(b.mo13156a(new zzduj(this.f12508b, this.f12509c)).m13159f());
                m27110a();
                this.f12511e.quit();
            } catch (Throwable th) {
                try {
                    this.f12510d.put(m27107c());
                } catch (InterruptedException e) {
                } catch (Throwable th2) {
                    m27110a();
                    this.f12511e.quit();
                    throw th2;
                }
                m27110a();
                this.f12511e.quit();
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        try {
            this.f12510d.put(m27107c());
        } catch (InterruptedException e) {
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        try {
            this.f12510d.put(m27107c());
        } catch (InterruptedException e) {
        }
    }
}
