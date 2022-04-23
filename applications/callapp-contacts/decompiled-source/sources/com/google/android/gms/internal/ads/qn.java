package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qn.class */
public final class qn extends dvb implements ql {
    /* JADX INFO: Access modifiers changed from: package-private */
    public qn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override // com.google.android.gms.internal.ads.ql
    public final void a() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ql
    public final void a(Intent intent) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, intent);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ql
    public final void a(b bVar, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(2, zzdp);
    }
}
