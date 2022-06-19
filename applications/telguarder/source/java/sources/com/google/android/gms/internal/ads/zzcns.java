package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.ConnectionResult;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcns.class */
public final class zzcns extends zzcnl {
    private String zzgow;
    private int zzgox = zzcnt.zzgoy;

    public zzcns(Context context) {
        this.zzgor = new zzasy(context, zzr.zzlf().zzzp(), this, this);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        synchronized (this.mLock) {
            if (!this.zzgop) {
                this.zzgop = true;
                try {
                    if (this.zzgox == zzcnt.zzgoz) {
                        this.zzgor.zzwi().zzc(this.zzgoq, new zzcno(this));
                    } else if (this.zzgox == zzcnt.zzgpa) {
                        this.zzgor.zzwi().zza(this.zzgow, new zzcno(this));
                    } else {
                        this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                    }
                } catch (RemoteException | IllegalArgumentException e) {
                    this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                } catch (Throwable th) {
                    zzr.zzkv().zza(th, "RemoteUrlAndCacheKeyClientTask.onConnected");
                    this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcnl, com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzd.zzdy("Cannot connect to remote service, fallback to local instance.");
        this.zzdlg.setException(new zzcoc(zzdom.INTERNAL_ERROR));
    }

    public final zzdzw<InputStream> zzgi(String str) {
        synchronized (this.mLock) {
            if (this.zzgox != zzcnt.zzgoy && this.zzgox != zzcnt.zzgpa) {
                return zzdzk.immediateFailedFuture(new zzcoc(zzdom.INVALID_REQUEST));
            } else if (this.zzgoo) {
                return this.zzdlg;
            } else {
                this.zzgox = zzcnt.zzgpa;
                this.zzgoo = true;
                this.zzgow = str;
                this.zzgor.checkAvailabilityAndConnect();
                this.zzdlg.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcnu
                    private final zzcns zzgov;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzgov = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzgov.zzarp();
                    }
                }, zzazp.zzeih);
                return this.zzdlg;
            }
        }
    }

    public final zzdzw<InputStream> zzk(zzatq zzatqVar) {
        synchronized (this.mLock) {
            if (this.zzgox != zzcnt.zzgoy && this.zzgox != zzcnt.zzgoz) {
                return zzdzk.immediateFailedFuture(new zzcoc(zzdom.INVALID_REQUEST));
            } else if (this.zzgoo) {
                return this.zzdlg;
            } else {
                this.zzgox = zzcnt.zzgoz;
                this.zzgoo = true;
                this.zzgoq = zzatqVar;
                this.zzgor.checkAvailabilityAndConnect();
                this.zzdlg.addListener(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcnr
                    private final zzcns zzgov;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.zzgov = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zzgov.zzarp();
                    }
                }, zzazp.zzeih);
                return this.zzdlg;
            }
        }
    }
}
