package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/l03.class */
public abstract class l03<T> {

    /* renamed from: a */
    private static final AbstractC1764h0 f7080a;

    static {
        AbstractC1764h0 h0Var = null;
        try {
            Object newInstance = k03.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                C1894po.m6180f("ClientApi class is not an instance of IBinder.");
            } else {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    f0 queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    h0Var = queryLocalInterface instanceof AbstractC1764h0 ? (AbstractC1764h0) queryLocalInterface : new f0(iBinder);
                }
            }
        } catch (Exception e) {
            C1894po.m6180f("Failed to instantiate ClientApi class.");
        }
        f7080a = h0Var;
    }

    l03() {
    }

    /* renamed from: e */
    private final T m6735e() {
        AbstractC1764h0 h0Var = f7080a;
        if (h0Var == null) {
            C1894po.m6180f("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return m6737c(h0Var);
        } catch (RemoteException e) {
            C1894po.m6179g("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    /* renamed from: f */
    private final T m6734f() {
        try {
            return m6738b();
        } catch (RemoteException e) {
            C1894po.m6179g("Cannot invoke remote loader.", e);
            return null;
        }
    }

    /* renamed from: a */
    protected abstract T m6739a();

    /* renamed from: b */
    protected abstract T m6738b();

    /* renamed from: c */
    protected abstract T m6737c(AbstractC1764h0 h0Var);

    /* JADX WARN: Removed duplicated region for block: B:21:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0109  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m6736d(android.content.Context r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.l03.m6736d(android.content.Context, boolean):java.lang.Object");
    }
}
