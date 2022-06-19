package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emm.class */
public final class emm extends dvb implements emk {
    public emm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14466a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14465a(emp empVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, empVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: a */
    public final void mo14464a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15673a(zzdp, z);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: b */
    public final void mo14463b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: c */
    public final void mo14462c() throws RemoteException {
        zzb(13, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: d */
    public final boolean mo14461d() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: e */
    public final int mo14460e() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: f */
    public final float mo14459f() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: g */
    public final float mo14458g() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: h */
    public final emp mo14457h() throws RemoteException {
        emq emqVar;
        Parcel zza = zza(11, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            emqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            emqVar = queryLocalInterface instanceof emp ? (emp) queryLocalInterface : new emq(readStrongBinder);
        }
        zza.recycle();
        return emqVar;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: i */
    public final float mo14456i() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: j */
    public final boolean mo14455j() throws RemoteException {
        Parcel zza = zza(10, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.emk
    /* renamed from: k */
    public final boolean mo14454k() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }
}
