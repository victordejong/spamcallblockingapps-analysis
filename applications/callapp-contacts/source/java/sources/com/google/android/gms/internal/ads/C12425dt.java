package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.dt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dt.class */
public final class C12425dt extends dvb implements AbstractC12394dr {
    public C12425dt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: a */
    public final AbstractC12126b mo15752a() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: b */
    public final Uri mo15751b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        Uri uri = (Uri) dvc.m15675a(zza, Uri.CREATOR);
        zza.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: c */
    public final double mo15750c() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: d */
    public final int mo15749d() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12394dr
    /* renamed from: e */
    public final int mo15748e() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
