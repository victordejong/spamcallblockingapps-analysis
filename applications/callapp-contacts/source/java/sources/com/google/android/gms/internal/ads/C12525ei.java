package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ei */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ei.class */
public final class C12525ei extends dvb implements AbstractC12442eg {
    public C12525ei(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: a */
    public final AbstractC12126b mo14886a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: a */
    public final void mo14885a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: b */
    public final String mo14884b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: b */
    public final boolean mo14883b(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        Parcel zza = zza(15, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: c */
    public final List mo14882c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        ArrayList m15672b = dvc.m15672b(zza);
        zza.recycle();
        return m15672b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: c */
    public final void mo14881c(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: d */
    public final String mo14880d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: e */
    public final AbstractC12394dr mo14879e() throws RemoteException {
        C12425dt c12425dt;
        Parcel zza = zza(6, zzdp());
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

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: f */
    public final String mo14878f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: g */
    public final double mo14877g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: h */
    public final String mo14876h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: i */
    public final String mo14875i() throws RemoteException {
        Parcel zza = zza(10, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: j */
    public final Bundle mo14874j() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: k */
    public final void mo14873k() throws RemoteException {
        zzb(12, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: l */
    public final emk mo14872l() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: m */
    public final AbstractC12371dj mo14871m() throws RemoteException {
        C12377dl c12377dl;
        Parcel zza = zza(17, zzdp());
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

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: n */
    public final AbstractC12126b mo14870n() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12442eg
    /* renamed from: o */
    public final String mo14869o() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
