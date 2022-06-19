package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcnn.class */
public final class zzcnn extends zzcnl {
    public zzcnn(Context context) {
        this.zzgor = new zzasy(context, zzr.zzlf().zzzp(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.zzgop) {
                this.zzgop = true;
                try {
                    this.zzgor.zzwi().zzb(this.zzgoq, new zzcno(this));
                } catch (RemoteException | IllegalArgumentException e) {
                    this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                }
            }
        }
    }

    public final zzdzw<InputStream> zzj(zzatq zzatqVar) {
        synchronized (this.mLock) {
            if (this.zzgoo) {
                return this.zzdlg;
            }
            this.zzgoo = true;
            this.zzgoq = zzatqVar;
            this.zzgor.checkAvailabilityAndConnect();
            this.zzdlg.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcnq
                private final zzcnn zzgou;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzgou = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgou.zzarp();
                }
            }, zzazp.zzeih);
            return this.zzdlg;
        }
    }
}
