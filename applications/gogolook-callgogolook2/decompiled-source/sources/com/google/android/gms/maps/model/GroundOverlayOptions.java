package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8906a;
import p081h.p203i.p204a.p224e.p282l.p284k.C8914i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/GroundOverlayOptions.class */
public final class GroundOverlayOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GroundOverlayOptions> CREATOR = new C8914i();
    @NonNull

    /* renamed from: a */
    public C8906a f7046a;

    /* renamed from: b */
    public LatLng f7047b;

    /* renamed from: c */
    public float f7048c;

    /* renamed from: d */
    public float f7049d;

    /* renamed from: e */
    public LatLngBounds f7050e;

    /* renamed from: f */
    public float f7051f;

    /* renamed from: g */
    public float f7052g;

    /* renamed from: h */
    public boolean f7053h;

    /* renamed from: i */
    public float f7054i;

    /* renamed from: j */
    public float f7055j;

    /* renamed from: k */
    public float f7056k;

    /* renamed from: l */
    public boolean f7057l;

    public GroundOverlayOptions() {
        this.f7053h = true;
        this.f7054i = 0.0f;
        this.f7055j = 0.5f;
        this.f7056k = 0.5f;
        this.f7057l = false;
    }

    public GroundOverlayOptions(IBinder iBinder, LatLng latLng, float f, float f2, LatLngBounds latLngBounds, float f3, float f4, boolean z, float f5, float f6, float f7, boolean z2) {
        this.f7053h = true;
        this.f7054i = 0.0f;
        this.f7055j = 0.5f;
        this.f7056k = 0.5f;
        this.f7057l = false;
        this.f7046a = new C8906a(AbstractC7106b.BinderC7107a.m21060a(iBinder));
        this.f7047b = latLng;
        this.f7048c = f;
        this.f7049d = f2;
        this.f7050e = latLngBounds;
        this.f7051f = f3;
        this.f7052g = f4;
        this.f7053h = z;
        this.f7054i = f5;
        this.f7055j = f6;
        this.f7056k = f7;
        this.f7057l = z2;
    }

    /* renamed from: H */
    public final float m31740H() {
        return this.f7056k;
    }

    /* renamed from: I */
    public final float m31739I() {
        return this.f7051f;
    }

    /* renamed from: J */
    public final LatLngBounds m31738J() {
        return this.f7050e;
    }

    /* renamed from: K */
    public final float m31737K() {
        return this.f7049d;
    }

    /* renamed from: L */
    public final LatLng m31736L() {
        return this.f7047b;
    }

    /* renamed from: M */
    public final float m31735M() {
        return this.f7054i;
    }

    /* renamed from: N */
    public final float m31734N() {
        return this.f7048c;
    }

    /* renamed from: c */
    public final float m31733c() {
        return this.f7055j;
    }

    /* renamed from: j0 */
    public final float m31732j0() {
        return this.f7052g;
    }

    /* renamed from: k0 */
    public final boolean m31731k0() {
        return this.f7057l;
    }

    /* renamed from: l0 */
    public final boolean m31730l0() {
        return this.f7053h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21222a(parcel, 2, this.f7046a.m16808a().asBinder(), false);
        C7031b.m21220a(parcel, 3, (Parcelable) m31736L(), i, false);
        C7031b.m21226a(parcel, 4, m31734N());
        C7031b.m21226a(parcel, 5, m31737K());
        C7031b.m21220a(parcel, 6, (Parcelable) m31738J(), i, false);
        C7031b.m21226a(parcel, 7, m31739I());
        C7031b.m21226a(parcel, 8, m31732j0());
        C7031b.m21212a(parcel, 9, m31730l0());
        C7031b.m21226a(parcel, 10, m31735M());
        C7031b.m21226a(parcel, 11, m31733c());
        C7031b.m21226a(parcel, 12, m31740H());
        C7031b.m21212a(parcel, 13, m31731k0());
        C7031b.m21229a(parcel, a);
    }
}
