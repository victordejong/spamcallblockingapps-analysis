package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eml.class */
public final class eml extends dvb implements emj {
    public eml(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.emj
    /* renamed from: a */
    public final String mo14783a() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.emj
    /* renamed from: b */
    public final String mo14782b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.emj
    /* renamed from: c */
    public final List<zzvx> mo14781c() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzvx.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }
}
