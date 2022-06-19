package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate;
import com.google.android.gms.maps.internal.zzbz;
import com.google.android.gms.maps.internal.zze;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/MapsInitializer.class */
public final class MapsInitializer {

    /* renamed from: a */
    public static boolean f6241a = false;

    private MapsInitializer() {
    }

    /* renamed from: a */
    public static int m38702a(Context context) {
        synchronized (MapsInitializer.class) {
            try {
                Preconditions.m38897k(context, "Context is null");
                if (f6241a) {
                    return 0;
                }
                try {
                    zze m38644a = zzbz.m38644a(context);
                    try {
                        ICameraUpdateFactoryDelegate zze = m38644a.zze();
                        Objects.requireNonNull(zze, "null reference");
                        CameraUpdateFactory.f6236a = zze;
                        com.google.android.gms.internal.maps.zze zzf = m38644a.zzf();
                        if (BitmapDescriptorFactory.f6248a == null) {
                            Objects.requireNonNull(zzf, "null reference");
                            BitmapDescriptorFactory.f6248a = zzf;
                        }
                        f6241a = true;
                        return 0;
                    } catch (RemoteException e) {
                        throw new RuntimeRemoteException(e);
                    }
                } catch (GooglePlayServicesNotAvailableException e2) {
                    return e2.f5676a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
