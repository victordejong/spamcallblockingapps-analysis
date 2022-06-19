package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhc.class */
public final class zzhc extends zzgw implements zzhb {
    public zzhc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.clearcut.IClearcut");
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void log() throws RemoteException {
        zzb(3, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zza(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zza(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, iObjectWrapper);
        zzdo.writeString(str);
        zzdo.writeString(null);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zza(int[] iArr) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeIntArray(null);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzc(byte[] bArr) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeByteArray(bArr);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzs(int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzt(int i) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeInt(i);
        zzb(7, zzdo);
    }
}
