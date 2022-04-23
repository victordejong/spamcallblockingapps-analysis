package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeg.class */
public final class zzaeg extends zzgu implements zzaee {
    public zzaeg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    /* renamed from: U1 */
    public final IObjectWrapper mo16833U1() throws RemoteException {
        Parcel a = m12085a(1, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final int getHeight() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final double getScale() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final int getWidth() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    /* renamed from: o */
    public final Uri mo16832o() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        Uri uri = (Uri) zzgw.m12080a(a, Uri.CREATOR);
        a.recycle();
        return uri;
    }
}
