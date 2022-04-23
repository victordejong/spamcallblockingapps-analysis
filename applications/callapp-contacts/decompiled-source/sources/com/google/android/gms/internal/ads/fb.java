package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fb.class */
public final class fb extends dvb implements ey {
    /* JADX INFO: Access modifiers changed from: package-private */
    public fb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    @Override // com.google.android.gms.internal.ads.ey
    public final void a(eo eoVar, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, eoVar);
        zzdp.writeString(str);
        zzb(1, zzdp);
    }
}
