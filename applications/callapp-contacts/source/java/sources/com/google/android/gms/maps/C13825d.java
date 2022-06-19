package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p362a.AbstractC13787a;
import com.google.android.gms.maps.p362a.AbstractC13790ac;
import com.google.android.gms.maps.p362a.C13789ab;
/* renamed from: com.google.android.gms.maps.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/d.class */
public final class C13825d {

    /* renamed from: a */
    private static boolean f51152a = false;

    private C13825d() {
    }

    /* renamed from: a */
    public static int m12166a(Context context) {
        synchronized (C13825d.class) {
            try {
                C12045o.m19161a(context, "Context is null");
                if (f51152a) {
                    return 0;
                }
                try {
                    AbstractC13790ac m12246a = C13789ab.m12246a(context);
                    try {
                        C13820b.f51149a = (AbstractC13787a) C12045o.m19162a(m12246a.mo12241a());
                        BitmapDescriptorFactory.zza(m12246a.mo12236b());
                        f51152a = true;
                        return 0;
                    } catch (RemoteException e) {
                        throw new RuntimeRemoteException(e);
                    }
                } catch (GooglePlayServicesNotAvailableException e2) {
                    return e2.f39154a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
