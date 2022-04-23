package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaiv.class */
public final class zzaiv extends zzgu implements zzait {
    public zzaiv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzait
    /* renamed from: f */
    public final void mo10990f(List<zzaiq> list) throws RemoteException {
        Parcel W = m12086W();
        W.writeTypedList(list);
        m12084b(1, W);
    }
}
