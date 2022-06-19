package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.xp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xp.class */
public final class C13049xp extends dvb implements AbstractC13047xn {
    public C13049xp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13047xn
    /* renamed from: a */
    public final void mo14002a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13047xn
    /* renamed from: a */
    public final void mo14001a(String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13047xn
    /* renamed from: a */
    public final void mo14000a(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15674a(zzdp, bundle);
        zzb(3, zzdp);
    }
}
