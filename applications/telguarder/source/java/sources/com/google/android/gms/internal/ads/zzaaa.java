package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaaa.class */
public final class zzaaa extends zzxg {
    final /* synthetic */ zzzy zzclj;

    /* JADX INFO: Access modifiers changed from: private */
    public zzaaa(zzzy zzzyVar) {
        this.zzclj = zzzyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String getMediationAdapterClassName() throws RemoteException {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final boolean isLoading() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zza(zzvl zzvlVar, int i) throws RemoteException {
        zzazk.zzev("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzaza.zzaac.post(new zzaad(this));
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final void zzb(zzvl zzvlVar) throws RemoteException {
        zza(zzvlVar, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzxd
    public final String zzkh() throws RemoteException {
        return null;
    }
}
