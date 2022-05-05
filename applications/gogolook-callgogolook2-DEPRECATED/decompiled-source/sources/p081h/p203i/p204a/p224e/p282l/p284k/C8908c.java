package p081h.p203i.p204a.p224e.p282l.p284k;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.maps.model.LatLng;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p275p.AbstractC8542j;
/* renamed from: h.i.a.e.l.k.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/k/c.class */
public final class C8908c {

    /* renamed from: a */
    public final AbstractC8542j f20184a;

    public C8908c(AbstractC8542j jVar) {
        C7021t.m21290a(jVar);
        this.f20184a = jVar;
    }

    /* renamed from: a */
    public final LatLng m16803a() {
        try {
            return this.f20184a.getPosition();
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: a */
    public final void m16802a(@NonNull LatLng latLng) {
        if (latLng != null) {
            try {
                this.f20184a.mo17849b(latLng);
            } catch (RemoteException e) {
                throw new C8909d(e);
            }
        } else {
            throw new IllegalArgumentException("latlng cannot be null - a position is required.");
        }
    }

    /* renamed from: a */
    public final void m16801a(@Nullable C8906a aVar) {
        try {
            if (aVar == null) {
                this.f20184a.mo17847e(null);
                return;
            }
            this.f20184a.mo17847e(aVar.m16808a());
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    /* renamed from: b */
    public final void m16800b() {
        try {
            this.f20184a.remove();
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C8908c)) {
            return false;
        }
        try {
            return this.f20184a.mo17848b(((C8908c) obj).f20184a);
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }

    public final int hashCode() {
        try {
            return this.f20184a.mo17850M();
        } catch (RemoteException e) {
            throw new C8909d(e);
        }
    }
}
