package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;
import com.google.android.gms.maps.model.StreetViewSource;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama.class */
public class StreetViewPanorama {
    private final IStreetViewPanoramaDelegate zzbo;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaCameraChangeListener.class */
    public interface OnStreetViewPanoramaCameraChangeListener {
        void onStreetViewPanoramaCameraChange(StreetViewPanoramaCamera streetViewPanoramaCamera);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaChangeListener.class */
    public interface OnStreetViewPanoramaChangeListener {
        void onStreetViewPanoramaChange(StreetViewPanoramaLocation streetViewPanoramaLocation);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaClickListener.class */
    public interface OnStreetViewPanoramaClickListener {
        void onStreetViewPanoramaClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener.class */
    public interface OnStreetViewPanoramaLongClickListener {
        void onStreetViewPanoramaLongClick(StreetViewPanoramaOrientation streetViewPanoramaOrientation);
    }

    public StreetViewPanorama(IStreetViewPanoramaDelegate iStreetViewPanoramaDelegate) {
        this.zzbo = (IStreetViewPanoramaDelegate) Preconditions.checkNotNull(iStreetViewPanoramaDelegate, "delegate");
    }

    public void animateTo(StreetViewPanoramaCamera streetViewPanoramaCamera, long j) {
        try {
            this.zzbo.animateTo(streetViewPanoramaCamera, j);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public StreetViewPanoramaLocation getLocation() {
        try {
            return this.zzbo.getStreetViewPanoramaLocation();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public StreetViewPanoramaCamera getPanoramaCamera() {
        try {
            return this.zzbo.getPanoramaCamera();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isPanningGesturesEnabled() {
        try {
            return this.zzbo.isPanningGesturesEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isStreetNamesEnabled() {
        try {
            return this.zzbo.isStreetNamesEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isUserNavigationEnabled() {
        try {
            return this.zzbo.isUserNavigationEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isZoomGesturesEnabled() {
        try {
            return this.zzbo.isZoomGesturesEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public Point orientationToPoint(StreetViewPanoramaOrientation streetViewPanoramaOrientation) {
        try {
            IObjectWrapper orientationToPoint = this.zzbo.orientationToPoint(streetViewPanoramaOrientation);
            if (orientationToPoint != null) {
                return (Point) ObjectWrapper.unwrap(orientationToPoint);
            }
            return null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public StreetViewPanoramaOrientation pointToOrientation(Point point) {
        try {
            return this.zzbo.pointToOrientation(ObjectWrapper.wrap(point));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnStreetViewPanoramaCameraChangeListener(OnStreetViewPanoramaCameraChangeListener onStreetViewPanoramaCameraChangeListener) {
        try {
            if (onStreetViewPanoramaCameraChangeListener == null) {
                this.zzbo.setOnStreetViewPanoramaCameraChangeListener(null);
            } else {
                this.zzbo.setOnStreetViewPanoramaCameraChangeListener(new zzae(this, onStreetViewPanoramaCameraChangeListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnStreetViewPanoramaChangeListener(OnStreetViewPanoramaChangeListener onStreetViewPanoramaChangeListener) {
        try {
            if (onStreetViewPanoramaChangeListener == null) {
                this.zzbo.setOnStreetViewPanoramaChangeListener(null);
            } else {
                this.zzbo.setOnStreetViewPanoramaChangeListener(new zzad(this, onStreetViewPanoramaChangeListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnStreetViewPanoramaClickListener(OnStreetViewPanoramaClickListener onStreetViewPanoramaClickListener) {
        try {
            if (onStreetViewPanoramaClickListener == null) {
                this.zzbo.setOnStreetViewPanoramaClickListener(null);
            } else {
                this.zzbo.setOnStreetViewPanoramaClickListener(new zzaf(this, onStreetViewPanoramaClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnStreetViewPanoramaLongClickListener(OnStreetViewPanoramaLongClickListener onStreetViewPanoramaLongClickListener) {
        try {
            if (onStreetViewPanoramaLongClickListener == null) {
                this.zzbo.setOnStreetViewPanoramaLongClickListener(null);
            } else {
                this.zzbo.setOnStreetViewPanoramaLongClickListener(new zzag(this, onStreetViewPanoramaLongClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPanningGesturesEnabled(boolean z) {
        try {
            this.zzbo.enablePanning(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPosition(LatLng latLng) {
        try {
            this.zzbo.setPosition(latLng);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPosition(LatLng latLng, int i) {
        try {
            this.zzbo.setPositionWithRadius(latLng, i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPosition(LatLng latLng, int i, StreetViewSource streetViewSource) {
        try {
            this.zzbo.setPositionWithRadiusAndSource(latLng, i, streetViewSource);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPosition(LatLng latLng, StreetViewSource streetViewSource) {
        try {
            this.zzbo.setPositionWithSource(latLng, streetViewSource);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setPosition(String str) {
        try {
            this.zzbo.setPositionWithID(str);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setStreetNamesEnabled(boolean z) {
        try {
            this.zzbo.enableStreetNames(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setUserNavigationEnabled(boolean z) {
        try {
            this.zzbo.enableUserNavigation(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setZoomGesturesEnabled(boolean z) {
        try {
            this.zzbo.enableZoom(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
