package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyp.class */
public final class zzyp extends zzgu implements zzyn {
    public zzyp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    /* renamed from: K1 */
    public final String mo11115K1() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    /* renamed from: a */
    public final String mo11114a() throws RemoteException {
        Parcel a = m12085a(1, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzyn
    /* renamed from: t1 */
    public final List<zzvr> mo11113t1() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        ArrayList createTypedArrayList = a.createTypedArrayList(zzvr.CREATOR);
        a.recycle();
        return createTypedArrayList;
    }
}
