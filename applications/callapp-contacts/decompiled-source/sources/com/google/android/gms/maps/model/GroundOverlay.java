package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.e.m;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/GroundOverlay.class */
public final class GroundOverlay {
    private final m zzcw;

    public GroundOverlay(m mVar) {
        this.zzcw = (m) o.a(mVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GroundOverlay)) {
            return false;
        }
        try {
            return this.zzcw.j();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getBearing() {
        try {
            return this.zzcw.f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final LatLngBounds getBounds() {
        try {
            return this.zzcw.e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getHeight() {
        try {
            return this.zzcw.d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getId() {
        try {
            return this.zzcw.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final LatLng getPosition() {
        try {
            return this.zzcw.b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Object getTag() {
        try {
            return d.a(this.zzcw.m());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getTransparency() {
        try {
            return this.zzcw.i();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getWidth() {
        try {
            return this.zzcw.c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzcw.g();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzcw.k();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzcw.l();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzcw.h();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void remove() {
    }

    public final void setBearing(float f) {
    }

    public final void setClickable(boolean z) {
    }

    public final void setDimensions(float f) {
    }

    public final void setDimensions(float f, float f2) {
    }

    public final void setImage(BitmapDescriptor bitmapDescriptor) {
        o.a(bitmapDescriptor, "imageDescriptor must not be null");
        try {
            bitmapDescriptor.zzb();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setPosition(LatLng latLng) {
    }

    public final void setPositionFromBounds(LatLngBounds latLngBounds) {
    }

    public final void setTag(Object obj) {
        try {
            d.a(obj);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setTransparency(float f) {
    }

    public final void setVisible(boolean z) {
    }

    public final void setZIndex(float f) {
    }
}
