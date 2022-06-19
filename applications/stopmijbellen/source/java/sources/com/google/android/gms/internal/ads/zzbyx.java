package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationServerParameters;
import p143k2.EnumC3320a;
import p154l2.AbstractC3485c;
import p154l2.AbstractC3486d;
import p154l2.AbstractC3487e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyx.class */
public final class zzbyx<NETWORK_EXTRAS extends AbstractC3487e, SERVER_PARAMETERS extends MediationServerParameters> implements AbstractC3485c, AbstractC3486d {
    private final zzbxn zza;

    public zzbyx(zzbxn zzbxnVar) {
        this.zza = zzbxnVar;
    }

    public final void onClick(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzciz.zze("Adapter called onClick.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbyo(this));
            return;
        }
        try {
            this.zza.zze();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void onDismissScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzciz.zze("Adapter called onDismissScreen.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzj("#008 Must be called on the main UI thread.");
            zzcis.zza.post(new zzbyp(this));
            return;
        }
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void onDismissScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzciz.zze("Adapter called onDismissScreen.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbyu(this));
            return;
        }
        try {
            this.zza.zzf();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // p154l2.AbstractC3485c
    public final void onFailedToReceiveAd(MediationBannerAdapter<?, ?> mediationBannerAdapter, EnumC3320a enumC3320a) {
        zzciz.zze("Adapter called onFailedToReceiveAd with error. ".concat(String.valueOf(enumC3320a)));
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbyq(this, enumC3320a));
            return;
        }
        try {
            this.zza.zzg(zzbyy.zza(enumC3320a));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // p154l2.AbstractC3486d
    public final void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter, EnumC3320a enumC3320a) {
        String valueOf = String.valueOf(enumC3320a);
        StringBuilder sb = new StringBuilder(valueOf.length() + 47);
        sb.append("Adapter called onFailedToReceiveAd with error ");
        sb.append(valueOf);
        sb.append(".");
        zzciz.zze(sb.toString());
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbyv(this, enumC3320a));
            return;
        }
        try {
            this.zza.zzg(zzbyy.zza(enumC3320a));
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void onLeaveApplication(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzciz.zze("Adapter called onLeaveApplication.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbyr(this));
            return;
        }
        try {
            this.zza.zzn();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void onLeaveApplication(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzciz.zze("Adapter called onLeaveApplication.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbyw(this));
            return;
        }
        try {
            this.zza.zzn();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void onPresentScreen(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzciz.zze("Adapter called onPresentScreen.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbys(this));
            return;
        }
        try {
            this.zza.zzp();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void onPresentScreen(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzciz.zze("Adapter called onPresentScreen.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbym(this));
            return;
        }
        try {
            this.zza.zzp();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void onReceivedAd(MediationBannerAdapter<?, ?> mediationBannerAdapter) {
        zzciz.zze("Adapter called onReceivedAd.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbyt(this));
            return;
        }
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }

    public final void onReceivedAd(MediationInterstitialAdapter<?, ?> mediationInterstitialAdapter) {
        zzciz.zze("Adapter called onReceivedAd.");
        zzbgo.zzb();
        if (!zzcis.zzp()) {
            zzciz.zzl("#008 Must be called on the main UI thread.", null);
            zzcis.zza.post(new zzbyn(this));
            return;
        }
        try {
            this.zza.zzo();
        } catch (RemoteException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
        }
    }
}
