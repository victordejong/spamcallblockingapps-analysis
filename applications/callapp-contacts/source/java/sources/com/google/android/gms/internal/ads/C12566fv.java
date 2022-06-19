package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.fv */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fv.class */
public final class C12566fv extends dvb implements AbstractC12564ft {
    public C12566fv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final String mo14677a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14676a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        zzb(15, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14675a(elu eluVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, eluVar);
        zzb(26, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14674a(ely elyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, elyVar);
        zzb(25, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14673a(emd emdVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, emdVar);
        zzb(32, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: a */
    public final void mo14672a(AbstractC12563fs abstractC12563fs) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12563fs);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: b */
    public final List mo14671b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList m15672b = dvc.m15672b(zza);
        zza.recycle();
        return m15672b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: b */
    public final boolean mo14670b(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        Parcel zza = zza(16, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: c */
    public final String mo14669c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: c */
    public final void mo14668c(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        zzb(17, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: d */
    public final AbstractC12394dr mo14667d() throws RemoteException {
        C12425dt c12425dt;
        Parcel zza = zza(5, zzdp());
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

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: e */
    public final String mo14666e() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: f */
    public final String mo14665f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: g */
    public final double mo14664g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: h */
    public final String mo14663h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: i */
    public final String mo14662i() throws RemoteException {
        Parcel zza = zza(10, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: j */
    public final emk mo14661j() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: k */
    public final String mo14660k() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: l */
    public final void mo14659l() throws RemoteException {
        zzb(13, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: m */
    public final AbstractC12371dj mo14658m() throws RemoteException {
        C12377dl c12377dl;
        Parcel zza = zza(14, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12377dl = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            c12377dl = queryLocalInterface instanceof AbstractC12371dj ? (AbstractC12371dj) queryLocalInterface : new C12377dl(readStrongBinder);
        }
        zza.recycle();
        return c12377dl;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: n */
    public final AbstractC12126b mo14657n() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: o */
    public final AbstractC12126b mo14656o() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: p */
    public final Bundle mo14655p() throws RemoteException {
        Parcel zza = zza(20, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: q */
    public final void mo14654q() throws RemoteException {
        zzb(22, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: r */
    public final List mo14653r() throws RemoteException {
        Parcel zza = zza(23, zzdp());
        ArrayList m15672b = dvc.m15672b(zza);
        zza.recycle();
        return m15672b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: s */
    public final boolean mo14652s() throws RemoteException {
        Parcel zza = zza(24, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: t */
    public final void mo14651t() throws RemoteException {
        zzb(27, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: u */
    public final void mo14650u() throws RemoteException {
        zzb(28, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: v */
    public final AbstractC12389dq mo14649v() throws RemoteException {
        C12424ds c12424ds;
        Parcel zza = zza(29, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12424ds = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            c12424ds = queryLocalInterface instanceof AbstractC12389dq ? (AbstractC12389dq) queryLocalInterface : new C12424ds(readStrongBinder);
        }
        zza.recycle();
        return c12424ds;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: w */
    public final boolean mo14648w() throws RemoteException {
        Parcel zza = zza(30, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12564ft
    /* renamed from: x */
    public final emj mo14647x() throws RemoteException {
        Parcel zza = zza(31, zzdp());
        emj m14784a = emi.m14784a(zza.readStrongBinder());
        zza.recycle();
        return m14784a;
    }
}
