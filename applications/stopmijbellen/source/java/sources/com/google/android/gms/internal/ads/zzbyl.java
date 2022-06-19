package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.zza;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;
import p143k2.C3321b;
import p154l2.AbstractC3484b;
import p154l2.AbstractC3487e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyl.class */
public final class zzbyl<NETWORK_EXTRAS extends AbstractC3487e, SERVER_PARAMETERS extends MediationServerParameters> extends zzbxj {
    private final AbstractC3484b<NETWORK_EXTRAS, SERVER_PARAMETERS> zza;
    private final NETWORK_EXTRAS zzb;

    public zzbyl(AbstractC3484b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC3484b, NETWORK_EXTRAS network_extras) {
        this.zza = abstractC3484b;
        this.zzb = network_extras;
    }

    private final SERVER_PARAMETERS zzb(String str) throws RemoteException {
        HashMap hashMap;
        SERVER_PARAMETERS server_parameters;
        try {
            if (str != null) {
                JSONObject jSONObject = new JSONObject(str);
                HashMap hashMap2 = new HashMap(jSONObject.length());
                Iterator<String> keys = jSONObject.keys();
                while (true) {
                    hashMap = hashMap2;
                    if (!keys.hasNext()) {
                        break;
                    }
                    String next = keys.next();
                    hashMap2.put(next, jSONObject.getString(next));
                }
            } else {
                hashMap = new HashMap(0);
            }
            Class<SERVER_PARAMETERS> serverParametersType = this.zza.getServerParametersType();
            if (serverParametersType != null) {
                SERVER_PARAMETERS newInstance = serverParametersType.newInstance();
                newInstance.m4831a(hashMap);
                server_parameters = newInstance;
            } else {
                server_parameters = null;
            }
            return server_parameters;
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    private static final boolean zzc(zzbfd zzbfdVar) {
        if (!zzbfdVar.zzf) {
            zzbgo.zzb();
            return zzcis.zzm();
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzA(zzbfd zzbfdVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzB(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzC(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzD() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzE() throws RemoteException {
        throw new RemoteException();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzF(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzG() throws RemoteException {
        AbstractC3484b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC3484b = this.zza;
        if (!(abstractC3484b instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(abstractC3484b.getClass().getCanonicalName());
            zzciz.zzj(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzciz.zze("Showing interstitial from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zza).showInterstitial();
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzH(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzI(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzJ() {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final boolean zzK() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final boolean zzL() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxs zzM() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxt zzN() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zze() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zzf() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final Bundle zzg() {
        return new Bundle();
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbiz zzh() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbpc zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxq zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzbxw zzk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzcab zzl() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final zzcab zzm() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final IObjectWrapper zzn() throws RemoteException {
        AbstractC3484b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC3484b = this.zza;
        if (!(abstractC3484b instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(abstractC3484b.getClass().getCanonicalName());
            zzciz.zzj(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        try {
            return ObjectWrapper.wrap(((MediationBannerAdapter) abstractC3484b).getBannerView());
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzo() throws RemoteException {
        try {
            this.zza.destroy();
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzp(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzcer zzcerVar, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzq(IObjectWrapper iObjectWrapper, zzbtr zzbtrVar, List<zzbtx> list) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzr(IObjectWrapper iObjectWrapper, zzcer zzcerVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzs(zzbfd zzbfdVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzt(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        zzu(iObjectWrapper, zzbfiVar, zzbfdVar, str, null, zzbxnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzu(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) throws RemoteException {
        C3321b c3321b;
        AbstractC3484b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC3484b = this.zza;
        if (!(abstractC3484b instanceof MediationBannerAdapter)) {
            String valueOf = String.valueOf(abstractC3484b.getClass().getCanonicalName());
            zzciz.zzj(valueOf.length() != 0 ? "Not a MediationBannerAdapter: ".concat(valueOf) : new String("Not a MediationBannerAdapter: "));
            throw new RemoteException();
        }
        zzciz.zze("Requesting banner ad from adapter.");
        try {
            MediationBannerAdapter mediationBannerAdapter = (MediationBannerAdapter) this.zza;
            zzbyx zzbyxVar = new zzbyx(zzbxnVar);
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
            SERVER_PARAMETERS zzb = zzb(str);
            C3321b[] c3321bArr = new C3321b[6];
            int i = 0;
            c3321bArr[0] = C3321b.f11246b;
            c3321bArr[1] = C3321b.f11247c;
            c3321bArr[2] = C3321b.f11248d;
            c3321bArr[3] = C3321b.f11249e;
            c3321bArr[4] = C3321b.f11250f;
            c3321bArr[5] = C3321b.f11251g;
            while (true) {
                if (i >= 6) {
                    c3321b = new C3321b(zza.zzc(zzbfiVar.zze, zzbfiVar.zzb, zzbfiVar.zza));
                    break;
                } else if (c3321bArr[i].f11252a.getWidth() == zzbfiVar.zze && c3321bArr[i].f11252a.getHeight() == zzbfiVar.zzb) {
                    c3321b = c3321bArr[i];
                    break;
                } else {
                    i++;
                }
            }
            mediationBannerAdapter.requestBannerAd(zzbyxVar, activity, zzb, c3321b, zzbyy.zzb(zzbfdVar, zzc(zzbfdVar)), this.zzb);
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzv(IObjectWrapper iObjectWrapper, zzbfi zzbfiVar, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzw(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
        zzx(iObjectWrapper, zzbfdVar, str, null, zzbxnVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzx(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar) throws RemoteException {
        AbstractC3484b<NETWORK_EXTRAS, SERVER_PARAMETERS> abstractC3484b = this.zza;
        if (!(abstractC3484b instanceof MediationInterstitialAdapter)) {
            String valueOf = String.valueOf(abstractC3484b.getClass().getCanonicalName());
            zzciz.zzj(valueOf.length() != 0 ? "Not a MediationInterstitialAdapter: ".concat(valueOf) : new String("Not a MediationInterstitialAdapter: "));
            throw new RemoteException();
        }
        zzciz.zze("Requesting interstitial ad from adapter.");
        try {
            ((MediationInterstitialAdapter) this.zza).requestInterstitialAd(new zzbyx(zzbxnVar), (Activity) ObjectWrapper.unwrap(iObjectWrapper), zzb(str), zzbyy.zzb(zzbfdVar, zzc(zzbfdVar)), this.zzb);
        } catch (Throwable th) {
            throw C1676a.m4792e("", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzy(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, String str2, zzbxn zzbxnVar, zzbnw zzbnwVar, List<String> list) {
    }

    @Override // com.google.android.gms.internal.ads.zzbxk
    public final void zzz(IObjectWrapper iObjectWrapper, zzbfd zzbfdVar, String str, zzbxn zzbxnVar) throws RemoteException {
    }
}
