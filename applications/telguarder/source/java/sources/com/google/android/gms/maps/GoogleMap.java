package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.location.Location;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.maps.zzac;
import com.google.android.gms.internal.maps.zzk;
import com.google.android.gms.internal.maps.zzn;
import com.google.android.gms.internal.maps.zzt;
import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.zzd;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.Circle;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.GroundOverlay;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.IndoorBuilding;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.PointOfInterest;
import com.google.android.gms.maps.model.Polygon;
import com.google.android.gms.maps.model.PolygonOptions;
import com.google.android.gms.maps.model.Polyline;
import com.google.android.gms.maps.model.PolylineOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.TileOverlay;
import com.google.android.gms.maps.model.TileOverlayOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap.class */
public final class GoogleMap {
    public static final int MAP_TYPE_HYBRID = 4;
    public static final int MAP_TYPE_NONE = 0;
    public static final int MAP_TYPE_NORMAL = 1;
    public static final int MAP_TYPE_SATELLITE = 2;
    public static final int MAP_TYPE_TERRAIN = 3;
    private final IGoogleMapDelegate zzg;
    private UiSettings zzh;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$CancelableCallback.class */
    public interface CancelableCallback {
        void onCancel();

        void onFinish();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$InfoWindowAdapter.class */
    public interface InfoWindowAdapter {
        View getInfoContents(Marker marker);

        View getInfoWindow(Marker marker);
    }

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraChangeListener.class */
    public interface OnCameraChangeListener {
        void onCameraChange(CameraPosition cameraPosition);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraIdleListener.class */
    public interface OnCameraIdleListener {
        void onCameraIdle();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraMoveCanceledListener.class */
    public interface OnCameraMoveCanceledListener {
        void onCameraMoveCanceled();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraMoveListener.class */
    public interface OnCameraMoveListener {
        void onCameraMove();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCameraMoveStartedListener.class */
    public interface OnCameraMoveStartedListener {
        public static final int REASON_API_ANIMATION = 2;
        public static final int REASON_DEVELOPER_ANIMATION = 3;
        public static final int REASON_GESTURE = 1;

        void onCameraMoveStarted(int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnCircleClickListener.class */
    public interface OnCircleClickListener {
        void onCircleClick(Circle circle);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnGroundOverlayClickListener.class */
    public interface OnGroundOverlayClickListener {
        void onGroundOverlayClick(GroundOverlay groundOverlay);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnIndoorStateChangeListener.class */
    public interface OnIndoorStateChangeListener {
        void onIndoorBuildingFocused();

        void onIndoorLevelActivated(IndoorBuilding indoorBuilding);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener.class */
    public interface OnInfoWindowClickListener {
        void onInfoWindowClick(Marker marker);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnInfoWindowCloseListener.class */
    public interface OnInfoWindowCloseListener {
        void onInfoWindowClose(Marker marker);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnInfoWindowLongClickListener.class */
    public interface OnInfoWindowLongClickListener {
        void onInfoWindowLongClick(Marker marker);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMapClickListener.class */
    public interface OnMapClickListener {
        void onMapClick(LatLng latLng);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMapLoadedCallback.class */
    public interface OnMapLoadedCallback {
        void onMapLoaded();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMapLongClickListener.class */
    public interface OnMapLongClickListener {
        void onMapLongClick(LatLng latLng);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMarkerClickListener.class */
    public interface OnMarkerClickListener {
        boolean onMarkerClick(Marker marker);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMarkerDragListener.class */
    public interface OnMarkerDragListener {
        void onMarkerDrag(Marker marker);

        void onMarkerDragEnd(Marker marker);

        void onMarkerDragStart(Marker marker);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMyLocationButtonClickListener.class */
    public interface OnMyLocationButtonClickListener {
        boolean onMyLocationButtonClick();
    }

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener.class */
    public interface OnMyLocationChangeListener {
        void onMyLocationChange(Location location);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnMyLocationClickListener.class */
    public interface OnMyLocationClickListener {
        void onMyLocationClick(Location location);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnPoiClickListener.class */
    public interface OnPoiClickListener {
        void onPoiClick(PointOfInterest pointOfInterest);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnPolygonClickListener.class */
    public interface OnPolygonClickListener {
        void onPolygonClick(Polygon polygon);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$OnPolylineClickListener.class */
    public interface OnPolylineClickListener {
        void onPolylineClick(Polyline polyline);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$SnapshotReadyCallback.class */
    public interface SnapshotReadyCallback {
        void onSnapshotReady(Bitmap bitmap);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/GoogleMap$zza.class */
    private static final class zza extends zzd {
        private final CancelableCallback zzai;

        zza(CancelableCallback cancelableCallback) {
            this.zzai = cancelableCallback;
        }

        @Override // com.google.android.gms.maps.internal.zzc
        public final void onCancel() {
            this.zzai.onCancel();
        }

        @Override // com.google.android.gms.maps.internal.zzc
        public final void onFinish() {
            this.zzai.onFinish();
        }
    }

    public GoogleMap(IGoogleMapDelegate iGoogleMapDelegate) {
        this.zzg = (IGoogleMapDelegate) Preconditions.checkNotNull(iGoogleMapDelegate);
    }

    public final Circle addCircle(CircleOptions circleOptions) {
        try {
            return new Circle(this.zzg.addCircle(circleOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final GroundOverlay addGroundOverlay(GroundOverlayOptions groundOverlayOptions) {
        try {
            zzk addGroundOverlay = this.zzg.addGroundOverlay(groundOverlayOptions);
            if (addGroundOverlay == null) {
                return null;
            }
            return new GroundOverlay(addGroundOverlay);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Marker addMarker(MarkerOptions markerOptions) {
        try {
            zzt addMarker = this.zzg.addMarker(markerOptions);
            if (addMarker == null) {
                return null;
            }
            return new Marker(addMarker);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Polygon addPolygon(PolygonOptions polygonOptions) {
        try {
            return new Polygon(this.zzg.addPolygon(polygonOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Polyline addPolyline(PolylineOptions polylineOptions) {
        try {
            return new Polyline(this.zzg.addPolyline(polylineOptions));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final TileOverlay addTileOverlay(TileOverlayOptions tileOverlayOptions) {
        try {
            zzac addTileOverlay = this.zzg.addTileOverlay(tileOverlayOptions);
            if (addTileOverlay == null) {
                return null;
            }
            return new TileOverlay(addTileOverlay);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate) {
        try {
            this.zzg.animateCamera(cameraUpdate.zzb());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, int i, CancelableCallback cancelableCallback) {
        try {
            this.zzg.animateCameraWithDurationAndCallback(cameraUpdate.zzb(), i, cancelableCallback == null ? null : new zza(cancelableCallback));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void animateCamera(CameraUpdate cameraUpdate, CancelableCallback cancelableCallback) {
        try {
            this.zzg.animateCameraWithCallback(cameraUpdate.zzb(), cancelableCallback == null ? null : new zza(cancelableCallback));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void clear() {
        try {
            this.zzg.clear();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final CameraPosition getCameraPosition() {
        try {
            return this.zzg.getCameraPosition();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final IndoorBuilding getFocusedBuilding() {
        try {
            zzn focusedBuilding = this.zzg.getFocusedBuilding();
            if (focusedBuilding == null) {
                return null;
            }
            return new IndoorBuilding(focusedBuilding);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getMapType() {
        try {
            return this.zzg.getMapType();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getMaxZoomLevel() {
        try {
            return this.zzg.getMaxZoomLevel();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final float getMinZoomLevel() {
        try {
            return this.zzg.getMinZoomLevel();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @Deprecated
    public final Location getMyLocation() {
        try {
            return this.zzg.getMyLocation();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Projection getProjection() {
        try {
            return new Projection(this.zzg.getProjection());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final UiSettings getUiSettings() {
        try {
            if (this.zzh == null) {
                this.zzh = new UiSettings(this.zzg.getUiSettings());
            }
            return this.zzh;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isBuildingsEnabled() {
        try {
            return this.zzg.isBuildingsEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isIndoorEnabled() {
        try {
            return this.zzg.isIndoorEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isMyLocationEnabled() {
        try {
            return this.zzg.isMyLocationEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isTrafficEnabled() {
        try {
            return this.zzg.isTrafficEnabled();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void moveCamera(CameraUpdate cameraUpdate) {
        try {
            this.zzg.moveCamera(cameraUpdate.zzb());
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void resetMinMaxZoomPreference() {
        try {
            this.zzg.resetMinMaxZoomPreference();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setBuildingsEnabled(boolean z) {
        try {
            this.zzg.setBuildingsEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setContentDescription(String str) {
        try {
            this.zzg.setContentDescription(str);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean setIndoorEnabled(boolean z) {
        try {
            return this.zzg.setIndoorEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setInfoWindowAdapter(InfoWindowAdapter infoWindowAdapter) {
        try {
            if (infoWindowAdapter == null) {
                this.zzg.setInfoWindowAdapter(null);
            } else {
                this.zzg.setInfoWindowAdapter(new zzg(this, infoWindowAdapter));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setLatLngBoundsForCameraTarget(LatLngBounds latLngBounds) {
        try {
            this.zzg.setLatLngBoundsForCameraTarget(latLngBounds);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setLocationSource(LocationSource locationSource) {
        try {
            if (locationSource == null) {
                this.zzg.setLocationSource(null);
            } else {
                this.zzg.setLocationSource(new zzl(this, locationSource));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean setMapStyle(MapStyleOptions mapStyleOptions) {
        try {
            return this.zzg.setMapStyle(mapStyleOptions);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setMapType(int i) {
        try {
            this.zzg.setMapType(i);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setMaxZoomPreference(float f) {
        try {
            this.zzg.setMaxZoomPreference(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setMinZoomPreference(float f) {
        try {
            this.zzg.setMinZoomPreference(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setMyLocationEnabled(boolean z) {
        try {
            this.zzg.setMyLocationEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @Deprecated
    public final void setOnCameraChangeListener(OnCameraChangeListener onCameraChangeListener) {
        try {
            if (onCameraChangeListener == null) {
                this.zzg.setOnCameraChangeListener(null);
            } else {
                this.zzg.setOnCameraChangeListener(new zzt(this, onCameraChangeListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCameraIdleListener(OnCameraIdleListener onCameraIdleListener) {
        try {
            if (onCameraIdleListener == null) {
                this.zzg.setOnCameraIdleListener(null);
            } else {
                this.zzg.setOnCameraIdleListener(new zzx(this, onCameraIdleListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCameraMoveCanceledListener(OnCameraMoveCanceledListener onCameraMoveCanceledListener) {
        try {
            if (onCameraMoveCanceledListener == null) {
                this.zzg.setOnCameraMoveCanceledListener(null);
            } else {
                this.zzg.setOnCameraMoveCanceledListener(new zzw(this, onCameraMoveCanceledListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCameraMoveListener(OnCameraMoveListener onCameraMoveListener) {
        try {
            if (onCameraMoveListener == null) {
                this.zzg.setOnCameraMoveListener(null);
            } else {
                this.zzg.setOnCameraMoveListener(new zzv(this, onCameraMoveListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCameraMoveStartedListener(OnCameraMoveStartedListener onCameraMoveStartedListener) {
        try {
            if (onCameraMoveStartedListener == null) {
                this.zzg.setOnCameraMoveStartedListener(null);
            } else {
                this.zzg.setOnCameraMoveStartedListener(new zzu(this, onCameraMoveStartedListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnCircleClickListener(OnCircleClickListener onCircleClickListener) {
        try {
            if (onCircleClickListener == null) {
                this.zzg.setOnCircleClickListener(null);
            } else {
                this.zzg.setOnCircleClickListener(new zzo(this, onCircleClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnGroundOverlayClickListener(OnGroundOverlayClickListener onGroundOverlayClickListener) {
        try {
            if (onGroundOverlayClickListener == null) {
                this.zzg.setOnGroundOverlayClickListener(null);
            } else {
                this.zzg.setOnGroundOverlayClickListener(new zzn(this, onGroundOverlayClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnIndoorStateChangeListener(OnIndoorStateChangeListener onIndoorStateChangeListener) {
        try {
            if (onIndoorStateChangeListener == null) {
                this.zzg.setOnIndoorStateChangeListener(null);
            } else {
                this.zzg.setOnIndoorStateChangeListener(new com.google.android.gms.maps.zza(this, onIndoorStateChangeListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnInfoWindowClickListener(OnInfoWindowClickListener onInfoWindowClickListener) {
        try {
            if (onInfoWindowClickListener == null) {
                this.zzg.setOnInfoWindowClickListener(null);
            } else {
                this.zzg.setOnInfoWindowClickListener(new zzd(this, onInfoWindowClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnInfoWindowCloseListener(OnInfoWindowCloseListener onInfoWindowCloseListener) {
        try {
            if (onInfoWindowCloseListener == null) {
                this.zzg.setOnInfoWindowCloseListener(null);
            } else {
                this.zzg.setOnInfoWindowCloseListener(new zzf(this, onInfoWindowCloseListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnInfoWindowLongClickListener(OnInfoWindowLongClickListener onInfoWindowLongClickListener) {
        try {
            if (onInfoWindowLongClickListener == null) {
                this.zzg.setOnInfoWindowLongClickListener(null);
            } else {
                this.zzg.setOnInfoWindowLongClickListener(new zze(this, onInfoWindowLongClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMapClickListener(OnMapClickListener onMapClickListener) {
        try {
            if (onMapClickListener == null) {
                this.zzg.setOnMapClickListener(null);
            } else {
                this.zzg.setOnMapClickListener(new zzy(this, onMapClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMapLoadedCallback(OnMapLoadedCallback onMapLoadedCallback) {
        try {
            if (onMapLoadedCallback == null) {
                this.zzg.setOnMapLoadedCallback(null);
            } else {
                this.zzg.setOnMapLoadedCallback(new zzk(this, onMapLoadedCallback));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMapLongClickListener(OnMapLongClickListener onMapLongClickListener) {
        try {
            if (onMapLongClickListener == null) {
                this.zzg.setOnMapLongClickListener(null);
            } else {
                this.zzg.setOnMapLongClickListener(new zzz(this, onMapLongClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMarkerClickListener(OnMarkerClickListener onMarkerClickListener) {
        try {
            if (onMarkerClickListener == null) {
                this.zzg.setOnMarkerClickListener(null);
            } else {
                this.zzg.setOnMarkerClickListener(new zzb(this, onMarkerClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMarkerDragListener(OnMarkerDragListener onMarkerDragListener) {
        try {
            if (onMarkerDragListener == null) {
                this.zzg.setOnMarkerDragListener(null);
            } else {
                this.zzg.setOnMarkerDragListener(new zzc(this, onMarkerDragListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMyLocationButtonClickListener(OnMyLocationButtonClickListener onMyLocationButtonClickListener) {
        try {
            if (onMyLocationButtonClickListener == null) {
                this.zzg.setOnMyLocationButtonClickListener(null);
            } else {
                this.zzg.setOnMyLocationButtonClickListener(new zzi(this, onMyLocationButtonClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    @Deprecated
    public final void setOnMyLocationChangeListener(OnMyLocationChangeListener onMyLocationChangeListener) {
        try {
            if (onMyLocationChangeListener == null) {
                this.zzg.setOnMyLocationChangeListener(null);
            } else {
                this.zzg.setOnMyLocationChangeListener(new zzh(this, onMyLocationChangeListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnMyLocationClickListener(OnMyLocationClickListener onMyLocationClickListener) {
        try {
            if (onMyLocationClickListener == null) {
                this.zzg.setOnMyLocationClickListener(null);
            } else {
                this.zzg.setOnMyLocationClickListener(new zzj(this, onMyLocationClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnPoiClickListener(OnPoiClickListener onPoiClickListener) {
        try {
            if (onPoiClickListener == null) {
                this.zzg.setOnPoiClickListener(null);
            } else {
                this.zzg.setOnPoiClickListener(new zzs(this, onPoiClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnPolygonClickListener(OnPolygonClickListener onPolygonClickListener) {
        try {
            if (onPolygonClickListener == null) {
                this.zzg.setOnPolygonClickListener(null);
            } else {
                this.zzg.setOnPolygonClickListener(new zzp(this, onPolygonClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setOnPolylineClickListener(OnPolylineClickListener onPolylineClickListener) {
        try {
            if (onPolylineClickListener == null) {
                this.zzg.setOnPolylineClickListener(null);
            } else {
                this.zzg.setOnPolylineClickListener(new zzq(this, onPolylineClickListener));
            }
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setPadding(int i, int i2, int i3, int i4) {
        try {
            this.zzg.setPadding(i, i2, i3, i4);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void setTrafficEnabled(boolean z) {
        try {
            this.zzg.setTrafficEnabled(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void snapshot(SnapshotReadyCallback snapshotReadyCallback) {
        snapshot(snapshotReadyCallback, null);
    }

    public final void snapshot(SnapshotReadyCallback snapshotReadyCallback, Bitmap bitmap) {
        try {
            this.zzg.snapshot(new zzr(this, snapshotReadyCallback), (ObjectWrapper) (bitmap != null ? ObjectWrapper.wrap(bitmap) : null));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void stopAnimation() {
        try {
            this.zzg.stopAnimation();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
