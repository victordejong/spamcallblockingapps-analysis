package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p362a.AbstractC13787a;
/* renamed from: com.google.android.gms.maps.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/b.class */
public final class C13820b {

    /* renamed from: a */
    static AbstractC13787a f51149a;

    private C13820b() {
    }

    /* renamed from: a */
    public static C13786a m12176a(LatLng latLng, float f) {
        try {
            return new C13786a(((AbstractC13787a) C12045o.m19161a(f51149a, "CameraUpdateFactory is not initialized")).mo12202a(latLng, f));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
