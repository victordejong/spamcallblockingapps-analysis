package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaya.class */
public final class zzaya extends zzgw implements zzaxy {
    public zzaya(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(IObjectWrapper iObjectWrapper, zzaye zzayeVar, zzaxx zzaxxVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzayeVar);
        zzgx.zza(zzdo, zzaxxVar);
        zzb(1, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(zzasq zzasqVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzasqVar);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zza(List<Uri> list, IObjectWrapper iObjectWrapper, zzasj zzasjVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeTypedList(list);
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzasjVar);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zzan(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final IObjectWrapper zzao(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        Parcel zza = zza(4, zzdo);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final IObjectWrapper zzb(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, iObjectWrapper2);
        Parcel zza = zza(3, zzdo);
        IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(zza.readStrongBinder());
        zza.recycle();
        return asInterface;
    }

    @Override // com.google.android.gms.internal.ads.zzaxy
    public final void zzb(List<Uri> list, IObjectWrapper iObjectWrapper, zzasj zzasjVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeTypedList(list);
        zzgx.zza(zzdo, iObjectWrapper);
        zzgx.zza(zzdo, zzasjVar);
        zzb(6, zzdo);
    }
}
