package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elp.class */
public final class elp extends dvb implements eln {
    public elp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14548a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14547a(float f) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeFloat(f);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14546a(AbstractC12126b abstractC12126b, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14545a(AbstractC12645it abstractC12645it) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12645it);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14544a(AbstractC12746mm abstractC12746mm) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12746mm);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14543a(zzaat zzaatVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzaatVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14542a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14541a(String str, AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: a */
    public final void mo14540a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15673a(zzdp, z);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: b */
    public final float mo14539b() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: b */
    public final void mo14538b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: c */
    public final boolean mo14537c() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: d */
    public final String mo14536d() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: e */
    public final List<zzajm> mo14535e() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzajm.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.internal.ads.eln
    /* renamed from: f */
    public final void mo14534f() throws RemoteException {
        zzb(15, zzdp());
    }
}
