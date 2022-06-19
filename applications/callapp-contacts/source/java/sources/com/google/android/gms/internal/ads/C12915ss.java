package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
/* renamed from: com.google.android.gms.internal.ads.ss */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ss.class */
public final class C12915ss extends dvb implements AbstractC12914sr {
    public C12915ss(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12914sr
    /* renamed from: a */
    public final void mo14188a(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, parcelFileDescriptor);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12914sr
    /* renamed from: a */
    public final void mo14187a(zzaq zzaqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzaqVar);
        zzb(2, zzdp);
    }
}
