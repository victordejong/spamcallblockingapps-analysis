package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ne */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ne.class */
public final class C12766ne extends dvb implements AbstractC12764nc {
    public C12766ne(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: a */
    public final String mo14410a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: a */
    public final void mo14409a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: a */
    public final void mo14408a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        dvc.m15676a(zzdp, abstractC12126b3);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: b */
    public final List mo14407b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList m15672b = dvc.m15672b(zza);
        zza.recycle();
        return m15672b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: b */
    public final void mo14406b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: c */
    public final String mo14405c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: c */
    public final void mo14404c(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: d */
    public final AbstractC12394dr mo14403d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        AbstractC12394dr m15703a = AbstractBinderC12426du.m15703a(zza.readStrongBinder());
        zza.recycle();
        return m15703a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: e */
    public final String mo14402e() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: f */
    public final String mo14401f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: g */
    public final void mo14400g() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: h */
    public final boolean mo14399h() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: i */
    public final boolean mo14398i() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: j */
    public final Bundle mo14397j() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: k */
    public final AbstractC12126b mo14396k() throws RemoteException {
        Parcel zza = zza(15, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: l */
    public final emk mo14395l() throws RemoteException {
        Parcel zza = zza(16, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: m */
    public final AbstractC12371dj mo14394m() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        AbstractC12371dj m16463a = AbstractBinderC12379dm.m16463a(zza.readStrongBinder());
        zza.recycle();
        return m16463a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: n */
    public final AbstractC12126b mo14393n() throws RemoteException {
        Parcel zza = zza(20, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12764nc
    /* renamed from: o */
    public final AbstractC12126b mo14392o() throws RemoteException {
        Parcel zza = zza(21, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }
}
