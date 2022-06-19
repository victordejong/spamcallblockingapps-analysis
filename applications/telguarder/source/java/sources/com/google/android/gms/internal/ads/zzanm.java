package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzanm.class */
public final class zzanm extends zzgw implements zzank {
    public zzanm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClicked() throws RemoteException {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClosed() throws RemoteException {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdFailedToLoad(int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() throws RemoteException {
        zzb(8, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLeftApplication() throws RemoteException {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLoaded() throws RemoteException {
        zzb(6, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdOpened() throws RemoteException {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAppEvent(String str, String str2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzdo.writeString(str2);
        zzb(9, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoEnd() throws RemoteException {
        zzb(11, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPause() throws RemoteException {
        zzb(15, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPlay() throws RemoteException {
        zzb(20, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzafn zzafnVar, String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafnVar);
        zzdo.writeString(str);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzanp zzanpVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzanpVar);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzavl zzavlVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzavlVar);
        zzb(16, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(19, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(zzavj zzavjVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzavjVar);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzc(int i, String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzdo.writeString(str);
        zzb(22, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzd(zzvg zzvgVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvgVar);
        zzb(23, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdb(int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(17, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdi(String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(12, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdj(String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzb(21, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzf(zzvg zzvgVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzvgVar);
        zzb(24, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzve() throws RemoteException {
        zzb(13, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzvf() throws RemoteException {
        zzb(18, zzdo());
    }
}
