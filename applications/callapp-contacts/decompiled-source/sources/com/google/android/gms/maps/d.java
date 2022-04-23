package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.maps.a.a;
import com.google.android.gms.maps.a.ab;
import com.google.android.gms.maps.a.ac;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f29365a = false;

    private d() {
    }

    public static int a(Context context) {
        synchronized (d.class) {
            try {
                o.a(context, "Context is null");
                if (f29365a) {
                    return 0;
                }
                try {
                    ac a2 = ab.a(context);
                    try {
                        b.f29362a = (a) o.a(a2.a());
                        BitmapDescriptorFactory.zza(a2.b());
                        f29365a = true;
                        return 0;
                    } catch (RemoteException e) {
                        throw new RuntimeRemoteException(e);
                    }
                } catch (GooglePlayServicesNotAvailableException e2) {
                    return e2.f22589a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
