package com.google.android.gms.maps;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import e.m.a.f.k.h;
import e.m.a.f.k.i;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap.class */
public final class GoogleMap {

    /* renamed from: a */
    public final IGoogleMapDelegate f6237a;

    /* renamed from: b */
    public UiSettings f6238b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$CancelableCallback.class */
    public interface CancelableCallback {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$InfoWindowAdapter.class */
    public interface InfoWindowAdapter {
        /* renamed from: a */
        View mo35326a(Marker marker);

        /* renamed from: b */
        View mo35325b(Marker marker);
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraChangeListener.class */
    public interface OnCameraChangeListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraIdleListener.class */
    public interface OnCameraIdleListener {
        /* renamed from: a */
        void mo29255a();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener.class */
    public interface OnCameraMoveCanceledListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraMoveListener.class */
    public interface OnCameraMoveListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener.class */
    public interface OnCameraMoveStartedListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCircleClickListener.class */
    public interface OnCircleClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener.class */
    public interface OnGroundOverlayClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener.class */
    public interface OnIndoorStateChangeListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener.class */
    public interface OnInfoWindowClickListener {
        /* renamed from: a */
        void mo35333a(Marker marker);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener.class */
    public interface OnInfoWindowCloseListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener.class */
    public interface OnInfoWindowLongClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMapClickListener.class */
    public interface OnMapClickListener {
        /* renamed from: a */
        void mo35334a(LatLng latLng);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMapLoadedCallback.class */
    public interface OnMapLoadedCallback {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMapLongClickListener.class */
    public interface OnMapLongClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMarkerClickListener.class */
    public interface OnMarkerClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMarkerDragListener.class */
    public interface OnMarkerDragListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener.class */
    public interface OnMyLocationButtonClickListener {
    }

    @Deprecated
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener.class */
    public interface OnMyLocationChangeListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMyLocationClickListener.class */
    public interface OnMyLocationClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnPoiClickListener.class */
    public interface OnPoiClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnPolygonClickListener.class */
    public interface OnPolygonClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnPolylineClickListener.class */
    public interface OnPolylineClickListener {
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/GoogleMap$SnapshotReadyCallback.class */
    public interface SnapshotReadyCallback {
    }

    public GoogleMap(IGoogleMapDelegate iGoogleMapDelegate) {
        Objects.requireNonNull(iGoogleMapDelegate, "null reference");
        this.f6237a = iGoogleMapDelegate;
    }

    /* renamed from: a */
    public final UiSettings m38708a() {
        try {
            if (this.f6238b == null) {
                this.f6238b = new UiSettings(this.f6237a.m38691h0());
            }
            return this.f6238b;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public final void m38707b(CameraUpdate cameraUpdate) {
        try {
            this.f6237a.m38693Y0(cameraUpdate.f6235a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: c */
    public final void m38706c(InfoWindowAdapter infoWindowAdapter) {
        try {
            this.f6237a.m38690m0(new h(infoWindowAdapter));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: d */
    public final void m38705d(OnCameraIdleListener onCameraIdleListener) {
        try {
            this.f6237a.m38688o(new i(onCameraIdleListener));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
