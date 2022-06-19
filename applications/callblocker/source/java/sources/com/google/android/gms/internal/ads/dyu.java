package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyu.class */
public abstract class dyu<T> {

    /* renamed from: a */
    private static final dzx f16148a = m8171c();

    /* renamed from: c */
    private static dzx m8171c() {
        dzz dzzVar;
        try {
            Object newInstance = dyl.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                C3645yb.m6745e("ClientApi class is not an instance of IBinder.");
                dzzVar = null;
            } else {
                IBinder iBinder = (IBinder) newInstance;
                if (iBinder == null) {
                    dzzVar = null;
                } else {
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
                    dzzVar = queryLocalInterface instanceof dzx ? (dzx) queryLocalInterface : new dzz(iBinder);
                }
            }
        } catch (Exception e) {
            C3645yb.m6745e("Failed to instantiate ClientApi class.");
            dzzVar = null;
        }
        return dzzVar;
    }

    /* renamed from: d */
    private final T m8170d() {
        T t = null;
        if (f16148a == null) {
            C3645yb.m6745e("ClientApi class cannot be loaded.");
        } else {
            try {
                t = mo8167a(f16148a);
            } catch (RemoteException e) {
                C3645yb.m6746d("Cannot invoke local loader using ClientApi class.", e);
            }
        }
        return t;
    }

    /* renamed from: e */
    private final T m8169e() {
        T t;
        try {
            t = mo8166b();
        } catch (RemoteException e) {
            C3645yb.m6746d("Cannot invoke remote loader.", e);
            t = null;
        }
        return t;
    }

    /* renamed from: a */
    protected abstract T mo8168a();

    /* renamed from: a */
    public final T m8172a(Context context, boolean z) {
        T m8170d;
        boolean z2 = z;
        boolean z3 = z2;
        if (!z2) {
            dyx.m8162a();
            z3 = z2;
            if (!C3634xr.m6783c(context, 12451000)) {
                C3645yb.m6751b("Google Play Services is not available.");
                z3 = true;
            }
        }
        boolean z4 = DynamiteModule.m13790a(context, ModuleDescriptor.MODULE_ID) > DynamiteModule.m13784b(context, ModuleDescriptor.MODULE_ID) ? true : z3;
        edi.m7866a(context);
        if (C2780am.f9976a.mo13599a().booleanValue()) {
            z4 = false;
        }
        if (z4) {
            T m8170d2 = m8170d();
            m8170d = m8170d2;
            if (m8170d2 == null) {
                m8170d = m8169e();
            }
        } else {
            T m8169e = m8169e();
            boolean z5 = m8169e == null;
            if (z5) {
                if (dyx.m8155h().nextInt(C2819aw.f10443a.mo13599a().intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", z5 ? 1 : 0);
                    dyx.m8162a().m6800a(context, dyx.m8156g().f17636a, "gmob-apps", bundle, true);
                }
            }
            m8170d = m8169e == null ? m8170d() : m8169e;
        }
        T t = m8170d;
        if (m8170d == null) {
            t = mo8168a();
        }
        return t;
    }

    /* renamed from: a */
    protected abstract T mo8167a(dzx dzxVar);

    /* renamed from: b */
    protected abstract T mo8166b();
}
