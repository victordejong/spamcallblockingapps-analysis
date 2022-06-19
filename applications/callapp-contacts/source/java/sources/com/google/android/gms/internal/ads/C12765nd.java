package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.nd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nd.class */
public final class C12765nd extends dvb implements AbstractC12763nb {
    public C12765nd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: a */
    public final String mo14391a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: a */
    public final void mo14390a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: a */
    public final void mo14389a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        dvc.m15676a(zzdp, abstractC12126b3);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: b */
    public final List mo14388b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList m15672b = dvc.m15672b(zza);
        zza.recycle();
        return m15672b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: b */
    public final void mo14387b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: c */
    public final String mo14386c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: c */
    public final void mo14385c(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: d */
    public final AbstractC12394dr mo14384d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        AbstractC12394dr m15703a = AbstractBinderC12426du.m15703a(zza.readStrongBinder());
        zza.recycle();
        return m15703a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: e */
    public final String mo14383e() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: f */
    public final double mo14382f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: g */
    public final String mo14381g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: h */
    public final String mo14380h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: i */
    public final void mo14379i() throws RemoteException {
        zzb(10, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: j */
    public final boolean mo14378j() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: k */
    public final boolean mo14377k() throws RemoteException {
        Parcel zza = zza(14, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: l */
    public final Bundle mo14376l() throws RemoteException {
        Parcel zza = zza(15, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: m */
    public final emk mo14375m() throws RemoteException {
        Parcel zza = zza(17, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: n */
    public final AbstractC12126b mo14374n() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: o */
    public final AbstractC12371dj mo14373o() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        AbstractC12371dj m16463a = AbstractBinderC12379dm.m16463a(zza.readStrongBinder());
        zza.recycle();
        return m16463a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: p */
    public final AbstractC12126b mo14372p() throws RemoteException {
        Parcel zza = zza(20, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12763nb
    /* renamed from: q */
    public final AbstractC12126b mo14371q() throws RemoteException {
        Parcel zza = zza(21, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }
}
