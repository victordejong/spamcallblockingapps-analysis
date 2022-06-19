package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.jg */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jg.class */
public final class C12659jg extends dvb implements AbstractC12657je {
    public C12659jg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12657je
    /* renamed from: a */
    public final void mo14585a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12657je
    /* renamed from: a */
    public final void mo14584a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }
}
