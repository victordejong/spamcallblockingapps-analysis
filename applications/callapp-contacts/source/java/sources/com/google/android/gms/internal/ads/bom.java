package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bom.class */
public final class bom extends bok {
    public bom(Context context) {
        this.f44387f = new C12903sg(context, zzr.zzlj().zzaai(), this, this);
    }

    /* renamed from: a */
    public final dbt<InputStream> m17703a(zzauj zzaujVar) {
        synchronized (this.f44383b) {
            if (this.f44384c) {
                return this.f44382a;
            }
            this.f44384c = true;
            this.f44386e = zzaujVar;
            this.f44387f.checkAvailabilityAndConnect();
            this.f44382a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bol

                /* renamed from: a */
                private final bom f44388a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f44388a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f44388a.m17704b();
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
                    this.f44387f.m14195a().mo14190b(this.f44386e, new boj(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkz().m13979a(th, "RemoteSignalsClientTask.onConnected");
                    this.f44382a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                }
            }
        }
    }
}
