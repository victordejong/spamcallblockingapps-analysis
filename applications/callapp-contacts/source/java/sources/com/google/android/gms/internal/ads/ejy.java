package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejy.class */
public abstract class ejy<T> {

    /* renamed from: a */
    private static final elf f49141a = m14842c();

    /* renamed from: c */
    private static elf m14842c() {
        try {
            Object newInstance = ejj.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                C13088za.zzez("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            return queryLocalInterface instanceof elf ? (elf) queryLocalInterface : new elh(iBinder);
        } catch (Exception e) {
            C13088za.zzez("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    /* renamed from: d */
    private final T m14841d() {
        elf elfVar = f49141a;
        if (elfVar == null) {
            C13088za.zzez("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return mo14838a(elfVar);
        } catch (RemoteException e) {
            C13088za.zzd("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    /* renamed from: e */
    private final T m14840e() {
        try {
            return mo14837b();
        } catch (RemoteException e) {
            C13088za.zzd("Cannot invoke remote loader.", e);
            return null;
        }
    }

    /* renamed from: a */
    protected abstract T mo14839a();

    /* JADX WARN: Removed duplicated region for block: B:19:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0106  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m14843a(android.content.Context r7, boolean r8) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ejy.m14843a(android.content.Context, boolean):java.lang.Object");
    }

    /* renamed from: a */
    protected abstract T mo14838a(elf elfVar) throws RemoteException;

    /* renamed from: b */
    protected abstract T mo14837b() throws RemoteException;
}
