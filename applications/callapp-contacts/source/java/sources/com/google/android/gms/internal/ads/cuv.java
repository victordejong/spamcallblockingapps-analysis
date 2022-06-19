package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cuv.class */
public final class cuv extends dvb implements cut {
    public cuv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.omid.IOmid");
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: a */
    public final AbstractC12126b mo17202a(String str, AbstractC12126b abstractC12126b, String str2, String str3, String str4, String str5) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str2);
        zzdp.writeString(str3);
        zzdp.writeString(str4);
        zzdp.writeString(str5);
        Parcel zza = zza(9, zzdp);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: a */
    public final AbstractC12126b mo17201a(String str, AbstractC12126b abstractC12126b, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str2);
        zzdp.writeString(str3);
        zzdp.writeString(str4);
        zzdp.writeString(str5);
        zzdp.writeString(str6);
        zzdp.writeString(str7);
        zzdp.writeString(str8);
        Parcel zza = zza(10, zzdp);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: a */
    public final String mo17205a() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: a */
    public final void mo17203a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: a */
    public final boolean mo17204a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(2, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: b */
    public final AbstractC12126b mo17198b(String str, AbstractC12126b abstractC12126b, String str2, String str3, String str4, String str5, String str6, String str7, String str8) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str2);
        zzdp.writeString(str3);
        zzdp.writeString(str4);
        zzdp.writeString(str5);
        zzdp.writeString(str6);
        zzdp.writeString(str7);
        zzdp.writeString(str8);
        Parcel zza = zza(11, zzdp);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: b */
    public final void mo17200b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: b */
    public final void mo17199b(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.cut
    /* renamed from: c */
    public final void mo17197c(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(7, zzdp);
    }
}
