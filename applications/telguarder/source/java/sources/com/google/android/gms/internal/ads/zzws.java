package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzws.class */
public abstract class zzws<T> {
    private static final zzxy zzcju = zzqw();

    private static zzxy zzqw() {
        try {
            Object newInstance = zzwc.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                zzazk.zzex("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return queryLocalInterface instanceof zzxy ? (zzxy) queryLocalInterface : new zzya(iBinder);
        } catch (Exception e) {
            zzazk.zzex("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    private final T zzqx() {
        zzxy zzxyVar = zzcju;
        if (zzxyVar == null) {
            zzazk.zzex("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return zza(zzxyVar);
        } catch (RemoteException e) {
            zzazk.zzd("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    private final T zzqy() {
        try {
            return zzqk();
        } catch (RemoteException e) {
            zzazk.zzd("Cannot invoke remote loader.", e);
            return null;
        }
    }

    protected abstract T zza(zzxy zzxyVar) throws RemoteException;

    /* JADX WARN: Removed duplicated region for block: B:23:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T zzd(android.content.Context r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzws.zzd(android.content.Context, boolean):java.lang.Object");
    }

    protected abstract T zzqj();

    protected abstract T zzqk() throws RemoteException;
}
