package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzbgx;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzfey;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzm.class */
public final class zzm extends WebViewClient {
    public final /* synthetic */ zzs zza;

    public zzm(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzbgx zzbgxVar;
        zzbgx zzbgxVar2;
        zzbgx zzbgxVar3;
        zzbgx zzbgxVar4;
        zzbgxVar = this.zza.zzg;
        if (zzbgxVar != null) {
            try {
                zzbgxVar2 = this.zza.zzg;
                zzbgxVar2.zzf(zzfey.zzd(1, null, null));
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
            }
        }
        zzbgxVar3 = this.zza.zzg;
        if (zzbgxVar3 != null) {
            try {
                zzbgxVar4 = this.zza.zzg;
                zzbgxVar4.zze(0);
            } catch (RemoteException e2) {
                zzciz.zzl("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzbgx zzbgxVar;
        zzbgx zzbgxVar2;
        zzbgx zzbgxVar3;
        zzbgx zzbgxVar4;
        zzbgx zzbgxVar5;
        zzbgx zzbgxVar6;
        zzbgx zzbgxVar7;
        zzbgx zzbgxVar8;
        zzbgx zzbgxVar9;
        zzbgx zzbgxVar10;
        zzbgx zzbgxVar11;
        zzbgx zzbgxVar12;
        zzbgx zzbgxVar13;
        if (str.startsWith(this.zza.zzq())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            zzbgxVar10 = this.zza.zzg;
            if (zzbgxVar10 != null) {
                try {
                    zzbgxVar11 = this.zza.zzg;
                    zzbgxVar11.zzf(zzfey.zzd(3, null, null));
                } catch (RemoteException e) {
                    zzciz.zzl("#007 Could not call remote method.", e);
                }
            }
            zzbgxVar12 = this.zza.zzg;
            if (zzbgxVar12 != null) {
                try {
                    zzbgxVar13 = this.zza.zzg;
                    zzbgxVar13.zze(3);
                } catch (RemoteException e2) {
                    zzciz.zzl("#007 Could not call remote method.", e2);
                }
            }
            this.zza.zzV(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzbgxVar6 = this.zza.zzg;
            if (zzbgxVar6 != null) {
                try {
                    zzbgxVar7 = this.zza.zzg;
                    zzbgxVar7.zzf(zzfey.zzd(1, null, null));
                } catch (RemoteException e3) {
                    zzciz.zzl("#007 Could not call remote method.", e3);
                }
            }
            zzbgxVar8 = this.zza.zzg;
            if (zzbgxVar8 != null) {
                try {
                    zzbgxVar9 = this.zza.zzg;
                    zzbgxVar9.zze(0);
                } catch (RemoteException e4) {
                    zzciz.zzl("#007 Could not call remote method.", e4);
                }
            }
            this.zza.zzV(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            zzbgxVar4 = this.zza.zzg;
            if (zzbgxVar4 != null) {
                try {
                    zzbgxVar5 = this.zza.zzg;
                    zzbgxVar5.zzi();
                } catch (RemoteException e5) {
                    zzciz.zzl("#007 Could not call remote method.", e5);
                }
            }
            this.zza.zzV(this.zza.zzb(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            zzbgxVar = this.zza.zzg;
            if (zzbgxVar != null) {
                try {
                    zzbgxVar2 = this.zza.zzg;
                    zzbgxVar2.zzc();
                    zzbgxVar3 = this.zza.zzg;
                    zzbgxVar3.zzh();
                } catch (RemoteException e6) {
                    zzciz.zzl("#007 Could not call remote method.", e6);
                }
            }
            zzs.zzw(this.zza, zzs.zzo(this.zza, str));
            return true;
        }
    }
}
