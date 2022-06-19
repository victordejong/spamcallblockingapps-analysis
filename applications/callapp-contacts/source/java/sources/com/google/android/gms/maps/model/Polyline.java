package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.dynamic.BinderC12129d;
import com.google.android.gms.internal.p359e.AbstractC13303v;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/Polyline.class */
public final class Polyline {
    private final AbstractC13303v zzeb;

    public Polyline(AbstractC13303v abstractC13303v) {
        this.zzeb = (AbstractC13303v) C12045o.m19162a(abstractC13303v);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Polyline)) {
            return false;
        }
        try {
            return this.zzeb.m13387h();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getColor() {
        try {
            return this.zzeb.m13391d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Cap getEndCap() {
        try {
            return this.zzeb.m13383l().zzh();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getId() {
        try {
            return this.zzeb.m13394a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getJointType() {
        try {
            return this.zzeb.m13382m();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<PatternItem> getPattern() {
        try {
            return PatternItem.zza(this.zzeb.m13381n());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<LatLng> getPoints() {
        try {
            return this.zzeb.m13393b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Cap getStartCap() {
        try {
            return this.zzeb.m13384k().zzh();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Object getTag() {
        try {
            return BinderC12129d.m18980a(this.zzeb.m13380o());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getWidth() {
        try {
            return this.zzeb.m13392c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzeb.m13390e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzeb.m13386i();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isClickable() {
        try {
            return this.zzeb.m13385j();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isGeodesic() {
        try {
            return this.zzeb.m13388g();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzeb.m13389f();
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
        C12045o.m19161a(cap, "endCap must not be null");
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
        C12045o.m19161a(cap, "startCap must not be null");
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

    public final void setWidth(float f) {
    }

    public final void setZIndex(float f) {
    }
}
