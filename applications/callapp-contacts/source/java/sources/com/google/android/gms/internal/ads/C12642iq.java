package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.iq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/iq.class */
public final class C12642iq extends dvb implements AbstractC12640io {
    public C12642iq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12640io
    /* renamed from: a */
    public final void mo14597a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12640io
    /* renamed from: a */
    public final void mo14596a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(3, zzdp);
    }
}
