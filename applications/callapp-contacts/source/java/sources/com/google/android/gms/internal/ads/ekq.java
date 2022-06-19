package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekq.class */
public final class ekq extends dvb implements eko {
    public ekq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final void mo14627a(zzvq zzvqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvqVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final void mo14626a(zzvq zzvqVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeInt(i);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: a */
    public final boolean mo14628a() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: b */
    public final String mo14625b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eko
    /* renamed from: c */
    public final String mo14624c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
