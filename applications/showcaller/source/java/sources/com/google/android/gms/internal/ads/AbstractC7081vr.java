package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.vr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vr.class */
public abstract class AbstractC7081vr<T> {

    /* renamed from: a */
    private static final AbstractC6415dt f31317a;

    static {
        C6341bt c6341bt = null;
        try {
            Object newInstance = C7044ur.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                ei0.m15464f("ClientApi class is not an instance of IBinder.");
            } else {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder != null) {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    c6341bt = queryLocalInterface instanceof AbstractC6415dt ? (AbstractC6415dt) queryLocalInterface : new C6341bt(iBinder);
                }
            }
        } catch (Exception e) {
            ei0.m15464f("Failed to instantiate ClientApi class.");
        }
        f31317a = c6341bt;
    }

    /* renamed from: e */
    private final T m9876e() {
        AbstractC6415dt abstractC6415dt = f31317a;
        if (abstractC6415dt == null) {
            ei0.m15464f("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return mo9878c(abstractC6415dt);
        } catch (RemoteException e) {
            ei0.m15463g("Cannot invoke local loader using ClientApi class.", e);
            return null;
        }
    }

    /* renamed from: f */
    private final T m9875f() {
        try {
            return mo9879b();
        } catch (RemoteException e) {
            ei0.m15463g("Cannot invoke remote loader.", e);
            return null;
        }
    }

    /* renamed from: a */
    protected abstract T mo9880a();

    /* renamed from: b */
    protected abstract T mo9879b();

    /* renamed from: c */
    protected abstract T mo9878c(AbstractC6415dt abstractC6415dt);

    /* JADX WARN: Removed duplicated region for block: B:21:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0109  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final T m9877d(android.content.Context r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.AbstractC7081vr.m9877d(android.content.Context, boolean):java.lang.Object");
    }
}
