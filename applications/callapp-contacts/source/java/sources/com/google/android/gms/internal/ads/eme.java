package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eme.class */
public final class eme extends dvb implements emc {
    public eme(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnAdMetadataChangedListener");
    }

    @Override // com.google.android.gms.internal.ads.emc
    /* renamed from: a */
    public final void mo14186a() throws RemoteException {
        zzb(1, zzdp());
    }
}
