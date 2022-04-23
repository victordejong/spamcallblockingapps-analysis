package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.e.b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/TileOverlay.class */
public final class TileOverlay {
    private final b zzeh;

    public TileOverlay(b bVar) {
        this.zzeh = (b) o.a(bVar);
    }

    public final void clearTileCache() {
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TileOverlay)) {
            return false;
        }
        try {
            return this.zzeh.d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean getFadeIn() {
        try {
            return this.zzeh.f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getId() {
        try {
            return this.zzeh.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getTransparency() {
        try {
            return this.zzeh.g();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzeh.b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzeh.e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzeh.c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void remove() {
    }

    public final void setFadeIn(boolean z) {
    }

    public final void setTransparency(float f) {
    }

    public final void setVisible(boolean z) {
    }

    public final void setZIndex(float f) {
    }
}
