package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.em */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/em.class */
public final class C12529em extends dvb implements AbstractC12527ek {
    public C12529em(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: a */
    public final AbstractC12126b mo14801a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: a */
    public final void mo14800a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: b */
    public final String mo14799b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: b */
    public final boolean mo14798b(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        Parcel zza = zza(13, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: c */
    public final List mo14797c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        ArrayList m15672b = dvc.m15672b(zza);
        zza.recycle();
        return m15672b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: c */
    public final void mo14796c(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: d */
    public final String mo14795d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: e */
    public final AbstractC12394dr mo14794e() throws RemoteException {
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

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: f */
    public final String mo14793f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: g */
    public final String mo14792g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: h */
    public final Bundle mo14791h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: i */
    public final void mo14790i() throws RemoteException {
        zzb(10, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: j */
    public final emk mo14789j() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: k */
    public final AbstractC12371dj mo14788k() throws RemoteException {
        C12377dl c12377dl;
        Parcel zza = zza(15, zzdp());
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

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: l */
    public final AbstractC12126b mo14787l() throws RemoteException {
        Parcel zza = zza(16, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12527ek
    /* renamed from: m */
    public final String mo14786m() throws RemoteException {
        Parcel zza = zza(17, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
