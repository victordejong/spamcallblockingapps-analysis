package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/iv.class */
public final class iv extends dvb implements it {
    /* JADX INFO: Access modifiers changed from: package-private */
    public iv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.it
    public final void a(List<zzajm> list) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeTypedList(list);
        zzb(1, zzdp);
    }
}
