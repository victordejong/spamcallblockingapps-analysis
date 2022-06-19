package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.dl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dl.class */
public final class C12377dl extends dvb implements AbstractC12371dj {
    public C12377dl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12371dj
    /* renamed from: a */
    public final String mo16523a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12371dj
    /* renamed from: b */
    public final List<AbstractC12394dr> mo16522b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList m15672b = dvc.m15672b(zza);
        zza.recycle();
        return m15672b;
    }
}
