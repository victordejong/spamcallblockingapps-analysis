package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.p359e.AbstractC13293l;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/Circle.class */
public final class Circle {
    private final AbstractC13293l zzco;

    public Circle(AbstractC13293l abstractC13293l) {
        this.zzco = (AbstractC13293l) C12045o.m19162a(abstractC13293l);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Circle)) {
            return false;
        }
        try {
            return this.zzco.m13470i();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final LatLng getCenter() {
        try {
            return this.zzco.m13477b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getFillColor() {
        try {
            return this.zzco.m13473f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getId() {
        try {
            return this.zzco.m13478a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final double getRadius() {
        try {
            return this.zzco.m13476c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getStrokeColor() {
        try {
            return this.zzco.m13474e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<PatternItem> getStrokePattern() {
        try {
            return PatternItem.zza(this.zzco.m13467l());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getStrokeWidth() {
        try {
            return this.zzco.m13475d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Object getTag() {
        try {
            return BinderC12129d.m18980a(this.zzco.m13466m());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzco.m13472g();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzco.m13469j();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzco.m13468k();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzco.m13471h();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void remove() {
    }

    public final void setCenter(LatLng latLng) {
    }

    public final void setClickable(boolean z) {
    }

    public final void setFillColor(int i) {
    }

    public final void setRadius(double d) {
    }

    public final void setStrokeColor(int i) {
    }

    public final void setStrokePattern(List<PatternItem> list) {
    }

    public final void setStrokeWidth(float f) {
    }

    public final void setTag(Object obj) {
        try {
            BinderC12129d.m18979a(obj);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setVisible(boolean z) {
    }

    public final void setZIndex(float f) {
    }
}
