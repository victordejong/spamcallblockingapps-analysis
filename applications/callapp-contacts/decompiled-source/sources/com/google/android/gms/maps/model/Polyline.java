package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.e.v;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/Polyline.class */
public final class Polyline {
    private final v zzeb;

    public Polyline(v vVar) {
        this.zzeb = (v) o.a(vVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Polyline)) {
            return false;
        }
        try {
            return this.zzeb.h();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getColor() {
        try {
            return this.zzeb.d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Cap getEndCap() {
        try {
            return this.zzeb.l().zzh();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getId() {
        try {
            return this.zzeb.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getJointType() {
        try {
            return this.zzeb.m();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<PatternItem> getPattern() {
        try {
            return PatternItem.zza(this.zzeb.n());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<LatLng> getPoints() {
        try {
            return this.zzeb.b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Cap getStartCap() {
        try {
            return this.zzeb.k().zzh();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Object getTag() {
        try {
            return d.a(this.zzeb.o());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getWidth() {
        try {
            return this.zzeb.c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzeb.e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzeb.i();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzeb.j();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isGeodesic() {
        try {
            return this.zzeb.g();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzeb.f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void remove() {
    }

    public final void setClickable(boolean z) {
    }

    public final void setColor(int i) {
    }

    public final void setEndCap(Cap cap) {
        o.a(cap, "endCap must not be null");
    }

    public final void setGeodesic(boolean z) {
    }

    public final void setJointType(int i) {
    }

    public final void setPattern(List<PatternItem> list) {
    }

    public final void setPoints(List<LatLng> list) {
    }

    public final void setStartCap(Cap cap) {
        o.a(cap, "startCap must not be null");
    }

    public final void setTag(Object obj) {
        try {
            d.a(obj);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setVisible(boolean z) {
    }

    public final void setWidth(float f) {
    }

    public final void setZIndex(float f) {
    }
}
