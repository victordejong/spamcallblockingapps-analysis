package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaoo.class */
public final class zzaoo implements Runnable {
    private final /* synthetic */ zzaol zzdoh;
    private final /* synthetic */ AdRequest.ErrorCode zzdoi;

    public zzaoo(zzaol zzaolVar, AdRequest.ErrorCode errorCode) {
        this.zzdoh = zzaolVar;
        this.zzdoi = errorCode;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            zzaol.zza(this.zzdoh).onAdFailedToLoad(zzaox.zza(this.zzdoi));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
