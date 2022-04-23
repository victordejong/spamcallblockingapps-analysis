package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzcpx;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpx.class */
public final class zzcpx extends zzcpv {
    public zzcpx(Context context) {
        this.f26395f = new zzask(context, zzp.m17955q().m15947b(), this, this);
    }

    /* renamed from: a */
    public final zzdzc<InputStream> m13942a(zzatc zzatcVar) {
        synchronized (this.f26391b) {
            if (this.f26392c) {
                return this.f26390a;
            }
            this.f26392c = true;
            this.f26394e = zzatcVar;
            this.f26395f.m17350p();
            this.f26390a.mo12976a(new Runnable(this) { // from class: c.d.b.d.g.a.pm

                /* renamed from: a */
                public final zzcpx f14553a;

                {
                    this.f14553a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f14553a.m13943a();
                }
            }, zzbbz.f24769f);
            return this.f26390a;
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.f26391b) {
            if (!this.f26393d) {
                this.f26393d = true;
                try {
                    this.f26395f.m16383H().mo13915b(this.f26394e, new zzcpy(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.f26390a.m15834a(new zzcqm(zzdpg.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzp.m17965g().m16188a(th, "RemoteSignalsClientTask.onConnected");
                    this.f26390a.m15834a(new zzcqm(zzdpg.INTERNAL_ERROR));
                }
            }
        }
    }
}
