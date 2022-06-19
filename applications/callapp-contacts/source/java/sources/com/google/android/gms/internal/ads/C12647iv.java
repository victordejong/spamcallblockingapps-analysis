package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.iv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/iv.class */
public final class C12647iv extends dvb implements AbstractC12645it {
    public C12647iv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12645it
    /* renamed from: a */
    public final void mo14595a(List<zzajm> list) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeTypedList(list);
        zzb(1, zzdp);
    }
}
