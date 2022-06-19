package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.eq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eq.class */
public final class C12534eq extends dvb implements AbstractC12532eo {
    public C12534eq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: a */
    public final String mo14709a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(1, zzdp);
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: a */
    public final List<String> mo14711a() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList<String> createStringArrayList = zza.createStringArrayList();
        zza.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: a */
    public final boolean mo14710a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(10, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: b */
    public final AbstractC12394dr mo14706b(String str) throws RemoteException {
        C12425dt c12425dt;
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(2, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12425dt = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            c12425dt = queryLocalInterface instanceof AbstractC12394dr ? (AbstractC12394dr) queryLocalInterface : new C12425dt(readStrongBinder);
        }
        zza.recycle();
        return c12425dt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: b */
    public final String mo14708b() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: b */
    public final void mo14707b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: c */
    public final void mo14705c() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: c */
    public final void mo14704c(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: d */
    public final emk mo14703d() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: e */
    public final void mo14702e() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: f */
    public final AbstractC12126b mo14701f() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: g */
    public final AbstractC12126b mo14700g() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: h */
    public final boolean mo14699h() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: i */
    public final boolean mo14698i() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12532eo
    /* renamed from: j */
    public final void mo14697j() throws RemoteException {
        zzb(15, zzdp());
    }
}
