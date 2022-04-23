package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fu.class */
public final class fu extends dvb implements fs {
    /* JADX INFO: Access modifiers changed from: package-private */
    public fu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.fs
    public final void a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.fs
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(1, zzdp);
    }
}
