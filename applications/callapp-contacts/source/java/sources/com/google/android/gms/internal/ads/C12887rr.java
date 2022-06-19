package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.rr */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rr.class */
public final class C12887rr extends dvb implements AbstractC12884ro {
    public C12887rr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12884ro
    /* renamed from: a */
    public final void mo14205a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12884ro
    /* renamed from: a */
    public final void mo14204a(List<Uri> list) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeTypedList(list);
        zzb(1, zzdp);
    }
}
