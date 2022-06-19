package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarq.class */
public final class zzarq extends zzgw implements zzaro {
    public zzarq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzdo.writeInt(i2);
        zzgx.zza(zzdo, intent);
        zzb(12, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onBackPressed() throws RemoteException {
        zzb(10, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onCreate(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onDestroy() throws RemoteException {
        zzb(8, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onPause() throws RemoteException {
        zzb(5, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRestart() throws RemoteException {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onResume() throws RemoteException {
        zzb(4, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, bundle);
        Parcel zza = zza(6, zzdo);
        if (zza.readInt() != 0) {
            bundle.readFromParcel(zza);
        }
        zza.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStart() throws RemoteException {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStop() throws RemoteException {
        zzb(7, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onUserLeaveHint() throws RemoteException {
        zzb(14, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzad(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzb(13, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzdp() throws RemoteException {
        zzb(9, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final boolean zzvw() throws RemoteException {
        Parcel zza = zza(11, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }
}
