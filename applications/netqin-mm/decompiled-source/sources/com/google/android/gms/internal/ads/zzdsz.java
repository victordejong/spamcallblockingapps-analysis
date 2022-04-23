package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdsz.class */
public final class zzdsz extends zzgu implements zzdsy {
    public zzdsz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    /* renamed from: A */
    public final void mo13231A(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    /* renamed from: F */
    public final boolean mo13230F(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        Parcel a = m12085a(2, W);
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    /* renamed from: P */
    public final void mo13229P(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(4, W);
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    /* renamed from: Y1 */
    public final String mo13228Y1() throws RemoteException {
        Parcel a = m12085a(6, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    /* renamed from: a */
    public final IObjectWrapper mo13226a(String str, IObjectWrapper iObjectWrapper, String str2, String str3, String str4, String str5) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        zzgw.m12081a(W, iObjectWrapper);
        W.writeString(str2);
        W.writeString(str3);
        W.writeString(str4);
        W.writeString(str5);
        Parcel a = m12085a(9, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    /* renamed from: a */
    public final void mo13227a(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, iObjectWrapper2);
        m12084b(8, W);
    }

    @Override // com.google.android.gms.internal.ads.zzdsy
    /* renamed from: b */
    public final void mo13225b(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, iObjectWrapper2);
        m12084b(5, W);
    }
}
