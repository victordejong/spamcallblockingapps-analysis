package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgn.class */
public abstract class zzbgn<T> {
    private static final zzbhu zza;

    static {
        zzbhs zzbhsVar = null;
        try {
            Object newInstance = zzbgm.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzciz.zzj("ClientApi class is not an instance of IBinder.");
            } else {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    zzbhsVar = queryLocalInterface instanceof zzbhu ? (zzbhu) queryLocalInterface : new zzbhs(iBinder);
                }
            }
        } catch (Exception e) {
            zzciz.zzj("Failed to instantiate ClientApi class.");
        }
        zza = zzbhsVar;
    }

    private final T zze() {
        zzbhu zzbhuVar = zza;
        if (zzbhuVar == null) {
            zzciz.zzj("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return zzb(zzbhuVar);
        } catch (RemoteException e) {
            zzciz.zzk("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    private final T zzf() {
        try {
            return zzc();
        } catch (RemoteException e) {
            zzciz.zzk("Cannot invoke remote loader.", e);
            return null;
        }
    }

    public abstract T zza();

    public abstract T zzb(zzbhu zzbhuVar) throws RemoteException;

    public abstract T zzc() throws RemoteException;

    /* JADX WARN: Removed duplicated region for block: B:21:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0109  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T zzd(android.content.Context r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbgn.zzd(android.content.Context, boolean):java.lang.Object");
    }
}
