package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dl.class */
public final class dl extends dvb implements dj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.dj
    public final String a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.dj
    public final List<dr> b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList b2 = dvc.b(zza);
        zza.recycle();
        return b2;
    }
}
