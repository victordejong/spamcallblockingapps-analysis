package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaga.class */
public final class zzaga extends zzgw implements zzafy {
    public zzaga(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafy
    public final void zza(zzafn zzafnVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafnVar);
        zzb(1, zzdo);
    }
}
