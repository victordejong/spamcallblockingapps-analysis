package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.mv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mv.class */
public final class C12755mv extends dvb implements AbstractC12753mt {
    public C12755mv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12753mt
    /* renamed from: a */
    public final AbstractC12126b mo14438a() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12753mt
    /* renamed from: b */
    public final boolean mo14437b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }
}
