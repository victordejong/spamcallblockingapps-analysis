package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bom.class */
public final class bom extends bok {
    public bom(Context context) {
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
            this.f24797a.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.bol

                /* renamed from: a  reason: collision with root package name */
                private final bom f24801a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f24801a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f24801a.b();
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
                    this.f.a().b(this.e, new boj(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkz().a(th, "RemoteSignalsClientTask.onConnected");
                    this.f24797a.setException(new zzcpo(cqj.INTERNAL_ERROR));
                }
            }
        }
    }
}
