package com.google.android.gms.dynamite;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.common.zza;
import com.google.android.gms.internal.common.zzc;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/dynamite/zzq.class */
public final class zzq extends zza implements IInterface {
    public zzq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    /* renamed from: B1 */
    public final IObjectWrapper m38727B1(IObjectWrapper iObjectWrapper, String str, int i, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i);
        zzc.zze(zza, iObjectWrapper2);
        return C22128a.m8608j1(zzB(8, zza));
    }

    /* renamed from: C1 */
    public final IObjectWrapper m38726C1(IObjectWrapper iObjectWrapper, String str, int i) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i);
        return C22128a.m8608j1(zzB(4, zza));
    }

    /* renamed from: D1 */
    public final IObjectWrapper m38725D1(IObjectWrapper iObjectWrapper, String str, boolean z, long j) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zzc.zzb(zza, z);
        zza.writeLong(j);
        return C22128a.m8608j1(zzB(7, zza));
    }

    /* renamed from: m1 */
    public final IObjectWrapper m38724m1(IObjectWrapper iObjectWrapper, String str, int i) throws RemoteException {
        Parcel zza = zza();
        zzc.zze(zza, iObjectWrapper);
        zza.writeString(str);
        zza.writeInt(i);
        return C22128a.m8608j1(zzB(2, zza));
    }
}
