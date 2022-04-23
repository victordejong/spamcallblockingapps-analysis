package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rb.class */
public final class rb extends dvb implements qz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public rb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzdp.writeInt(i2);
        dvc.a(zzdp, intent);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onBackPressed() throws RemoteException {
        zzb(10, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onDestroy() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onPause() throws RemoteException {
        zzb(5, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onRestart() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onResume() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        Parcel zza = zza(6, zzdp);
        if (zza.readInt() != 0) {
            bundle.readFromParcel(zza);
        }
        zza.recycle();
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onStart() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onStop() throws RemoteException {
        zzb(7, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void onUserLeaveHint() throws RemoteException {
        zzb(14, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void zzae(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final void zzdq() throws RemoteException {
        zzb(9, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.qz
    public final boolean zzwh() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }
}
