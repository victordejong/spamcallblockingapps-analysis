package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.internal.ads.zzbfa;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzfbm;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/zzm.class */
public final class zzm extends WebViewClient {
    public final /* synthetic */ zzs zza;

    public zzm(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        zzbfa zzbfaVar;
        zzbfa zzbfaVar2;
        zzbfa zzbfaVar3;
        zzbfa zzbfaVar4;
        zzbfaVar = this.zza.zzg;
        if (zzbfaVar != null) {
            try {
                zzbfaVar2 = this.zza.zzg;
                zzbfaVar2.zzd(zzfbm.zzd(1, null, null));
            } catch (RemoteException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
            }
        }
        zzbfaVar3 = this.zza.zzg;
        if (zzbfaVar3 != null) {
            try {
                zzbfaVar4 = this.zza.zzg;
                zzbfaVar4.zzc(0);
            } catch (RemoteException e2) {
                zzcgt.zzl("#007 Could not call remote method.", e2);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzbfa zzbfaVar;
        zzbfa zzbfaVar2;
        zzbfa zzbfaVar3;
        zzbfa zzbfaVar4;
        zzbfa zzbfaVar5;
        zzbfa zzbfaVar6;
        zzbfa zzbfaVar7;
        zzbfa zzbfaVar8;
        zzbfa zzbfaVar9;
        zzbfa zzbfaVar10;
        zzbfa zzbfaVar11;
        zzbfa zzbfaVar12;
        zzbfa zzbfaVar13;
        if (str.startsWith(this.zza.zzU())) {
            return false;
        }
        if (str.startsWith("gmsg://noAdLoaded")) {
            zzbfaVar10 = this.zza.zzg;
            if (zzbfaVar10 != null) {
                try {
                    zzbfaVar11 = this.zza.zzg;
                    zzbfaVar11.zzd(zzfbm.zzd(3, null, null));
                } catch (RemoteException e) {
                    zzcgt.zzl("#007 Could not call remote method.", e);
                }
            }
            zzbfaVar12 = this.zza.zzg;
            if (zzbfaVar12 != null) {
                try {
                    zzbfaVar13 = this.zza.zzg;
                    zzbfaVar13.zzc(3);
                } catch (RemoteException e2) {
                    zzcgt.zzl("#007 Could not call remote method.", e2);
                }
            }
            this.zza.zzS(0);
            return true;
        } else if (str.startsWith("gmsg://scriptLoadFailed")) {
            zzbfaVar6 = this.zza.zzg;
            if (zzbfaVar6 != null) {
                try {
                    zzbfaVar7 = this.zza.zzg;
                    zzbfaVar7.zzd(zzfbm.zzd(1, null, null));
                } catch (RemoteException e3) {
                    zzcgt.zzl("#007 Could not call remote method.", e3);
                }
            }
            zzbfaVar8 = this.zza.zzg;
            if (zzbfaVar8 != null) {
                try {
                    zzbfaVar9 = this.zza.zzg;
                    zzbfaVar9.zzc(0);
                } catch (RemoteException e4) {
                    zzcgt.zzl("#007 Could not call remote method.", e4);
                }
            }
            this.zza.zzS(0);
            return true;
        } else if (str.startsWith("gmsg://adResized")) {
            zzbfaVar4 = this.zza.zzg;
            if (zzbfaVar4 != null) {
                try {
                    zzbfaVar5 = this.zza.zzg;
                    zzbfaVar5.zzf();
                } catch (RemoteException e5) {
                    zzcgt.zzl("#007 Could not call remote method.", e5);
                }
            }
            this.zza.zzS(this.zza.zzR(str));
            return true;
        } else if (str.startsWith("gmsg://")) {
            return true;
        } else {
            zzbfaVar = this.zza.zzg;
            if (zzbfaVar != null) {
                try {
                    zzbfaVar2 = this.zza.zzg;
                    zzbfaVar2.zzh();
                    zzbfaVar3 = this.zza.zzg;
                    zzbfaVar3.zze();
                } catch (RemoteException e6) {
                    zzcgt.zzl("#007 Could not call remote method.", e6);
                }
            }
            zzs.zzW(this.zza, zzs.zzV(this.zza, str));
            return true;
        }
    }
}
