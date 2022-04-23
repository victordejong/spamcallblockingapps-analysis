package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/boh.class */
public final class boh extends bok {
    public boh(Context context) {
        this.f = new sg(context, zzr.zzlj().zzaai(), this, this);
    }

    public final dbt<InputStream> a(zzauj zzaujVar) {
        synchronized (this.f24798b) {
            if (this.f24799c) {
                return this.f24797a;
            }
            this.f24799c = true;
            this.e = zzaujVar;
            this.f.checkAvailabilityAndConnect();
            this.f24797a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bog

                /* renamed from: a  reason: collision with root package name */
                private final boh f24795a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24795a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f24795a.b();
                }
            }, zd.f);
            return this.f24797a;
        }
    }

    @Override // com.google.android.gms.common.internal.d.a
    public final void a() {
        synchronized (this.f24798b) {
            if (!this.f24800d) {
                this.f24800d = true;
                try {
                    this.f.a().a(this.e, new boj(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkz().a(th, "RemoteAdRequestClientTask.onConnected");
                    this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bok, com.google.android.gms.common.internal.d.b
    public final void a(ConnectionResult connectionResult) {
        zzd.zzdz("Cannot connect to remote service, fallback to local instance.");
        this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
    }
}
