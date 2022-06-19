package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.ds */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ds.class */
public final class C12424ds extends dvb implements AbstractC12389dq {
    public C12424ds(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: a */
    public final float mo15788a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: a */
    public final void mo15787a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: a */
    public final void mo15786a(AbstractC12550ff abstractC12550ff) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12550ff);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: b */
    public final AbstractC12126b mo15785b() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: c */
    public final float mo15784c() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: d */
    public final float mo15783d() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: e */
    public final emk mo15782e() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12389dq
    /* renamed from: f */
    public final boolean mo15781f() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }
}
