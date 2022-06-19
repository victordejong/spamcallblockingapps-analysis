package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcgc.class */
public final class zzcgc extends zzafi {
    private final String zzcio;
    private final zzccd zzgch;
    private final zzcbu zzgfm;

    public zzcgc(String str, zzcbu zzcbuVar, zzccd zzccdVar) {
        this.zzcio = str;
        this.zzgfm = zzcbuVar;
        this.zzgch = zzccdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void destroy() throws RemoteException {
        this.zzgfm.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getAdvertiser() throws RemoteException {
        return this.zzgch.getAdvertiser();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getBody() throws RemoteException {
        return this.zzgch.getBody();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getCallToAction() throws RemoteException {
        return this.zzgch.getCallToAction();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final Bundle getExtras() throws RemoteException {
        return this.zzgch.getExtras();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getHeadline() throws RemoteException {
        return this.zzgch.getHeadline();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final List<?> getImages() throws RemoteException {
        return this.zzgch.getImages();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final String getMediationAdapterClassName() throws RemoteException {
        return this.zzcio;
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzzc getVideoController() throws RemoteException {
        return this.zzgch.getVideoController();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void performClick(Bundle bundle) throws RemoteException {
        this.zzgfm.zzf(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final boolean recordImpression(Bundle bundle) throws RemoteException {
        return this.zzgfm.zzh(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final void reportTouchEvent(Bundle bundle) throws RemoteException {
        this.zzgfm.zzg(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final IObjectWrapper zztm() throws RemoteException {
        return ObjectWrapper.wrap(this.zzgfm);
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzaej zzto() throws RemoteException {
        return this.zzgch.zzto();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final IObjectWrapper zztp() throws RemoteException {
        return this.zzgch.zztp();
    }

    @Override // com.google.android.gms.internal.ads.zzafj
    public final zzaer zztq() throws RemoteException {
        return this.zzgch.zztq();
    }
}
