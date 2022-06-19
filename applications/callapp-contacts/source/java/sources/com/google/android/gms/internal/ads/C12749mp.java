package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.mp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mp.class */
public final class C12749mp extends dvb implements AbstractC12747mn {
    public C12749mp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final AbstractC12126b mo14370a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14369a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14368a(AbstractC12126b abstractC12126b, AbstractC12640io abstractC12640io, List<zzajw> list) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12640io);
        zzdp.writeTypedList(list);
        zzb(31, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14367a(AbstractC12126b abstractC12126b, AbstractC12956uf abstractC12956uf, List<String> list) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12956uf);
        zzdp.writeStringList(list);
        zzb(23, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14366a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14365a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12956uf abstractC12956uf, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12956uf);
        zzdp.writeString(str2);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14364a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14363a(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms, zzaei zzaeiVar, List<String> list) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15676a(zzdp, abstractC12752ms);
        dvc.m15674a(zzdp, zzaeiVar);
        zzdp.writeStringList(list);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14362a(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvtVar);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14361a(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvtVar);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14359a(zzvq zzvqVar, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14358a(zzvq zzvqVar, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(20, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: a */
    public final void mo14356a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15673a(zzdp, z);
        zzb(25, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14355b() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14354b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(30, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14353b(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(28, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: b */
    public final void mo14352b(AbstractC12126b abstractC12126b, zzvt zzvtVar, zzvq zzvqVar, String str, String str2, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvtVar);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(35, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14351c() throws RemoteException {
        zzb(5, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14350c(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(37, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: c */
    public final void mo14349c(AbstractC12126b abstractC12126b, zzvq zzvqVar, String str, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvqVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(32, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: d */
    public final void mo14348d() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: e */
    public final void mo14347e() throws RemoteException {
        zzb(9, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: f */
    public final void mo14346f() throws RemoteException {
        zzb(12, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: g */
    public final boolean mo14345g() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: h */
    public final AbstractC12763nb mo14344h() throws RemoteException {
        C12765nd c12765nd;
        Parcel zza = zza(15, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12765nd = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            c12765nd = queryLocalInterface instanceof AbstractC12763nb ? (AbstractC12763nb) queryLocalInterface : new C12765nd(readStrongBinder);
        }
        zza.recycle();
        return c12765nd;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: i */
    public final AbstractC12764nc mo14343i() throws RemoteException {
        C12766ne c12766ne;
        Parcel zza = zza(16, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12766ne = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            c12766ne = queryLocalInterface instanceof AbstractC12764nc ? (AbstractC12764nc) queryLocalInterface : new C12766ne(readStrongBinder);
        }
        zza.recycle();
        return c12766ne;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: j */
    public final Bundle mo14342j() throws RemoteException {
        Parcel zza = zza(17, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: k */
    public final Bundle mo14341k() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: l */
    public final Bundle mo14340l() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: m */
    public final boolean mo14339m() throws RemoteException {
        Parcel zza = zza(22, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: n */
    public final AbstractC12532eo mo14338n() throws RemoteException {
        Parcel zza = zza(24, zzdp());
        AbstractC12532eo m14696a = AbstractBinderC12535er.m14696a(zza.readStrongBinder());
        zza.recycle();
        return m14696a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: o */
    public final emk mo14337o() throws RemoteException {
        Parcel zza = zza(26, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: p */
    public final AbstractC12769nh mo14336p() throws RemoteException {
        C12771nj c12771nj;
        Parcel zza = zza(27, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12771nj = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            c12771nj = queryLocalInterface instanceof AbstractC12769nh ? (AbstractC12769nh) queryLocalInterface : new C12771nj(readStrongBinder);
        }
        zza.recycle();
        return c12771nj;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: q */
    public final zzaqr mo14335q() throws RemoteException {
        Parcel zza = zza(33, zzdp());
        zzaqr zzaqrVar = (zzaqr) dvc.m15675a(zza, zzaqr.CREATOR);
        zza.recycle();
        return zzaqrVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: r */
    public final zzaqr mo14334r() throws RemoteException {
        Parcel zza = zza(34, zzdp());
        zzaqr zzaqrVar = (zzaqr) dvc.m15675a(zza, zzaqr.CREATOR);
        zza.recycle();
        return zzaqrVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12747mn
    /* renamed from: s */
    public final AbstractC12753mt mo14333s() throws RemoteException {
        C12755mv c12755mv;
        Parcel zza = zza(36, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12755mv = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            c12755mv = queryLocalInterface instanceof AbstractC12753mt ? (AbstractC12753mt) queryLocalInterface : new C12755mv(readStrongBinder);
        }
        zza.recycle();
        return c12755mv;
    }
}
