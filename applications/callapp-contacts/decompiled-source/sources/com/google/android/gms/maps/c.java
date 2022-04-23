package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.e.r;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.gms.maps.a.b f29363a;

    /* renamed from: b  reason: collision with root package name */
    private k f29364b;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/c$a.class */
    public interface a {
        void a(LatLng latLng);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/c$b.class */
    public interface b {
        void a();
    }

    /* renamed from: com.google.android.gms.maps.c$c  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/c$c.class */
    public interface AbstractC0480c {
        void onSnapshotReady(Bitmap bitmap);
    }

    public c(com.google.android.gms.maps.a.b bVar) {
        this.f29363a = (com.google.android.gms.maps.a.b) o.a(bVar);
    }

    public final k a() {
        try {
            if (this.f29364b == null) {
                this.f29364b = new k(this.f29363a.a());
            }
            return this.f29364b;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final Marker a(MarkerOptions markerOptions) {
        try {
            r a2 = this.f29363a.a(markerOptions);
            if (a2 != null) {
                return new Marker(a2);
            }
            return null;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void a(com.google.android.gms.maps.a aVar) {
        try {
            this.f29363a.a(aVar.f29358a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void a(a aVar) {
        try {
            this.f29363a.a(new v(this, aVar));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void a(b bVar) {
        try {
            this.f29363a.a(new t(this, bVar));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean a(MapStyleOptions mapStyleOptions) {
        try {
            return this.f29363a.a(mapStyleOptions);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void b() {
        try {
            this.f29363a.a(16.0f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
