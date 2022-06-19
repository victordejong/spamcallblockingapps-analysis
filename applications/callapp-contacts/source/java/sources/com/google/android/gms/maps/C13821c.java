package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.p359e.AbstractC13299r;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MapStyleOptions;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.p362a.AbstractC13795b;
/* renamed from: com.google.android.gms.maps.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/c.class */
public final class C13821c {

    /* renamed from: a */
    public final AbstractC13795b f51150a;

    /* renamed from: b */
    private C13837k f51151b;

    /* renamed from: com.google.android.gms.maps.c$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/c$a.class */
    public interface AbstractC13822a {
        /* renamed from: a */
        void mo12168a(LatLng latLng);
    }

    /* renamed from: com.google.android.gms.maps.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/c$b.class */
    public interface AbstractC13823b {
        /* renamed from: a */
        void mo12167a();
    }

    /* renamed from: com.google.android.gms.maps.c$c */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/c$c.class */
    public interface AbstractC13824c {
        void onSnapshotReady(Bitmap bitmap);
    }

    public C13821c(AbstractC13795b abstractC13795b) {
        this.f51150a = (AbstractC13795b) C12045o.m19162a(abstractC13795b);
    }

    /* renamed from: a */
    public final C13837k m12175a() {
        try {
            if (this.f51151b == null) {
                this.f51151b = new C13837k(this.f51150a.mo12234a());
            }
            return this.f51151b;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: a */
    public final Marker m12170a(MarkerOptions markerOptions) {
        try {
            AbstractC13299r mo12227a = this.f51150a.mo12227a(markerOptions);
            if (mo12227a == null) {
                return null;
            }
            return new Marker(mo12227a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: a */
    public final void m12174a(C13786a c13786a) {
        try {
            this.f51150a.mo12232a(c13786a.f51145a);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: a */
    public final void m12173a(AbstractC13822a abstractC13822a) {
        try {
            this.f51150a.mo12231a(new BinderC13848v(this, abstractC13822a));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: a */
    public final void m12172a(AbstractC13823b abstractC13823b) {
        try {
            this.f51150a.mo12230a(new BinderC13846t(this, abstractC13823b));
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: a */
    public final boolean m12171a(MapStyleOptions mapStyleOptions) {
        try {
            return this.f51150a.mo12228a(mapStyleOptions);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    /* renamed from: b */
    public final void m12169b() {
        try {
            this.f51150a.mo12233a(16.0f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
