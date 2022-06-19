package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.fu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fu.class */
public final class C12565fu extends dvb implements AbstractC12563fs {
    public C12565fu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12563fs
    /* renamed from: a */
    public final void mo14236a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12563fs
    /* renamed from: a */
    public final void mo14235a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(1, zzdp);
    }
}
