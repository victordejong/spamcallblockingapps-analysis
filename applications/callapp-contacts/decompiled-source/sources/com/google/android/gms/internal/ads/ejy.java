package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejy.class */
public abstract class ejy<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final elf f27926a = c();

    private static elf c() {
        try {
            Object newInstance = ejj.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                za.zzez("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return queryLocalInterface instanceof elf ? (elf) queryLocalInterface : new elh(iBinder);
        } catch (Exception e) {
            za.zzez("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    private final T d() {
        elf elfVar = f27926a;
        if (elfVar == null) {
            za.zzez("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return a(elfVar);
        } catch (RemoteException e) {
            za.zzd("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    private final T e() {
        try {
            return b();
        } catch (RemoteException e) {
            za.zzd("Cannot invoke remote loader.", e);
            return null;
        }
    }

    protected abstract T a();

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T a(android.content.Context r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ejy.a(android.content.Context, boolean):java.lang.Object");
    }

    protected abstract T a(elf elfVar) throws RemoteException;

    protected abstract T b() throws RemoteException;
}
