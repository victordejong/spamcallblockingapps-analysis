package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.p359e.AbstractC13294m;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/GroundOverlay.class */
public final class GroundOverlay {
    private final AbstractC13294m zzcw;

    public GroundOverlay(AbstractC13294m abstractC13294m) {
        this.zzcw = (AbstractC13294m) C12045o.m19162a(abstractC13294m);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GroundOverlay)) {
            return false;
        }
        try {
            return this.zzcw.m13456j();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getBearing() {
        try {
            return this.zzcw.m13460f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final LatLngBounds getBounds() {
        try {
            return this.zzcw.m13461e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getHeight() {
        try {
            return this.zzcw.m13462d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getId() {
        try {
            return this.zzcw.m13465a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final LatLng getPosition() {
        try {
            return this.zzcw.m13464b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Object getTag() {
        try {
            return BinderC12129d.m18980a(this.zzcw.m13453m());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getTransparency() {
        try {
            return this.zzcw.m13457i();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getWidth() {
        try {
            return this.zzcw.m13463c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzcw.m13459g();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzcw.m13455k();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzcw.m13454l();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzcw.m13458h();
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
        C12045o.m19161a(bitmapDescriptor, "imageDescriptor must not be null");
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
            BinderC12129d.m18979a(obj);
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
