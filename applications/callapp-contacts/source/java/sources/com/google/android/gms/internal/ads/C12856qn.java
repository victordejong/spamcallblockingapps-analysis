package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.qn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qn.class */
public final class C12856qn extends dvb implements AbstractC12854ql {
    public C12856qn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12854ql
    /* renamed from: a */
    public final void mo14234a() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12854ql
    /* renamed from: a */
    public final void mo14233a(Intent intent) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, intent);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12854ql
    /* renamed from: a */
    public final void mo14232a(AbstractC12126b abstractC12126b, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(2, zzdp);
    }
}
