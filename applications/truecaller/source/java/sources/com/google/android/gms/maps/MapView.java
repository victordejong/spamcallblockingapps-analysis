package com.google.android.gms.maps;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import e.m.a.f.k.c;
import p193e.p1577m.p1578a.p1642f.p1660f.C24996c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/MapView.class */
public class MapView extends FrameLayout {

    /* renamed from: a */
    public final b f6240a;

    public MapView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6240a = new b(this, context, GoogleMapOptions.o2(context, attributeSet));
        setClickable(true);
    }

    /* renamed from: a */
    public void m38704a(OnMapReadyCallback onMapReadyCallback) {
        Preconditions.m38902f("getMapAsync() must be called on the main thread");
        b bVar = this.f6240a;
        a aVar = bVar.f6169a;
        if (aVar == null) {
            bVar.i.add(onMapReadyCallback);
            return;
        }
        try {
            aVar.b.m38679a(new c(onMapReadyCallback));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public final void m38703b(Bundle bundle) {
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitAll().build());
        try {
            b bVar = this.f6240a;
            bVar.m38751m(null, new C24996c(bVar, null));
            if (this.f6240a.f6169a == 0) {
                DeferredLifecycleHelper.m38753k(this);
            }
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
    }
}
