package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rr.class */
public final class rr extends dvb implements ro {
    /* JADX INFO: Access modifiers changed from: package-private */
    public rr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.ro
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ro
    public final void a(List<Uri> list) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeTypedList(list);
        zzb(1, zzdp);
    }
}
