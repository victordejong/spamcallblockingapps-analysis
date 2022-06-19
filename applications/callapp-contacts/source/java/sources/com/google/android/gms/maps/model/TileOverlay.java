package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.p359e.AbstractC13283b;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/TileOverlay.class */
public final class TileOverlay {
    private final AbstractC13283b zzeh;

    public TileOverlay(AbstractC13283b abstractC13283b) {
        this.zzeh = (AbstractC13283b) C12045o.m19162a(abstractC13283b);
    }

    public final void clearTileCache() {
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TileOverlay)) {
            return false;
        }
        try {
            return this.zzeh.m13496d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean getFadeIn() {
        try {
            return this.zzeh.m13494f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getId() {
        try {
            return this.zzeh.m13499a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getTransparency() {
        try {
            return this.zzeh.m13493g();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getZIndex() {
        try {
            return this.zzeh.m13498b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzeh.m13495e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isVisible() {
        try {
            return this.zzeh.m13497c();
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
