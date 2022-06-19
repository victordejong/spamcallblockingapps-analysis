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
        this.f44387f = new C12903sg(context, zzr.zzlj().zzaai(), this, this);
    }

    /* renamed from: a */
    public final dbt<InputStream> m17705a(zzauj zzaujVar) {
        synchronized (this.f44383b) {
            if (this.f44384c) {
                return this.f44382a;
            }
            this.f44384c = true;
            this.f44386e = zzaujVar;
            this.f44387f.checkAvailabilityAndConnect();
            this.f44382a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bog

                /* renamed from: a */
                private final boh f44380a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44380a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f44380a.m17704b();
                }
            }, C13091zd.f50123f);
            return this.f44382a;
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d.AbstractC12026a
    /* renamed from: a */
    public final void mo11764a() {
        synchronized (this.f44383b) {
            if (!this.f44385d) {
                this.f44385d = true;
                try {
                    this.f44387f.m14195a().mo14192a(this.f44386e, new boj(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkz().m13979a(th, "RemoteAdRequestClientTask.onConnected");
                    this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.bok, com.google.android.gms.common.internal.AbstractC12025d.AbstractC12027b
    /* renamed from: a */
    public final void mo11761a(ConnectionResult connectionResult) {
        zzd.zzdz("Cannot connect to remote service, fallback to local instance.");
        this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
    }
}
