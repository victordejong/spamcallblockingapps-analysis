package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elp.class */
public final class elp extends dvb implements eln {
    /* JADX INFO: Access modifiers changed from: package-private */
    public elp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(float f) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeFloat(f);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(b bVar, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(it itVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, itVar);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(mm mmVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, mmVar);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(zzaat zzaatVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzaatVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(String str, b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.a(zzdp, bVar);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final float b() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final boolean c() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final String d() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final List<zzajm> e() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        ArrayList createTypedArrayList = zza.createTypedArrayList(zzajm.CREATOR);
        zza.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.internal.ads.eln
    public final void f() throws RemoteException {
        zzb(15, zzdp());
    }
}
