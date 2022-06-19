package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.nj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nj.class */
public final class C12771nj extends dvb implements AbstractC12769nh {
    public C12771nj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: a */
    public final String mo14328a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: a */
    public final void mo14327a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(20, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: a */
    public final void mo14326a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        dvc.m15676a(zzdp, abstractC12126b3);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: b */
    public final List mo14325b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList m15672b = dvc.m15672b(zza);
        zza.recycle();
        return m15672b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: b */
    public final void mo14324b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: c */
    public final String mo14323c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: d */
    public final AbstractC12394dr mo14322d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        AbstractC12394dr m15703a = AbstractBinderC12426du.m15703a(zza.readStrongBinder());
        zza.recycle();
        return m15703a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: e */
    public final String mo14321e() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: f */
    public final String mo14320f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: g */
    public final double mo14319g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: h */
    public final String mo14318h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: i */
    public final String mo14317i() throws RemoteException {
        Parcel zza = zza(10, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: j */
    public final emk mo14316j() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: k */
    public final AbstractC12371dj mo14315k() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        AbstractC12371dj m16463a = AbstractBinderC12379dm.m16463a(zza.readStrongBinder());
        zza.recycle();
        return m16463a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: l */
    public final AbstractC12126b mo14314l() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: m */
    public final AbstractC12126b mo14313m() throws RemoteException {
        Parcel zza = zza(14, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: n */
    public final AbstractC12126b mo14312n() throws RemoteException {
        Parcel zza = zza(15, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: o */
    public final Bundle mo14311o() throws RemoteException {
        Parcel zza = zza(16, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: p */
    public final boolean mo14310p() throws RemoteException {
        Parcel zza = zza(17, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: q */
    public final boolean mo14309q() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: r */
    public final void mo14308r() throws RemoteException {
        zzb(19, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: s */
    public final float mo14307s() throws RemoteException {
        Parcel zza = zza(23, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: t */
    public final float mo14306t() throws RemoteException {
        Parcel zza = zza(24, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12769nh
    /* renamed from: u */
    public final float mo14305u() throws RemoteException {
        Parcel zza = zza(25, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }
}
