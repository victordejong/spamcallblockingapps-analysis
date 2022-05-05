package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8906a;
import p081h.p203i.p204a.p224e.p282l.p284k.C8918m;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/MarkerOptions.class */
public final class MarkerOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MarkerOptions> CREATOR = new C8918m();

    /* renamed from: a */
    public LatLng f7067a;

    /* renamed from: b */
    public String f7068b;

    /* renamed from: c */
    public String f7069c;

    /* renamed from: d */
    public C8906a f7070d;

    /* renamed from: e */
    public float f7071e;

    /* renamed from: f */
    public float f7072f;

    /* renamed from: g */
    public boolean f7073g;

    /* renamed from: h */
    public boolean f7074h;

    /* renamed from: i */
    public boolean f7075i;

    /* renamed from: j */
    public float f7076j;

    /* renamed from: k */
    public float f7077k;

    /* renamed from: l */
    public float f7078l;

    /* renamed from: m */
    public float f7079m;

    /* renamed from: n */
    public float f7080n;

    public MarkerOptions() {
        this.f7071e = 0.5f;
        this.f7072f = 1.0f;
        this.f7074h = true;
        this.f7075i = false;
        this.f7076j = 0.0f;
        this.f7077k = 0.5f;
        this.f7078l = 0.0f;
        this.f7079m = 1.0f;
    }

    public MarkerOptions(LatLng latLng, String str, String str2, IBinder iBinder, float f, float f2, boolean z, boolean z2, boolean z3, float f3, float f4, float f5, float f6, float f7) {
        this.f7071e = 0.5f;
        this.f7072f = 1.0f;
        this.f7074h = true;
        this.f7075i = false;
        this.f7076j = 0.0f;
        this.f7077k = 0.5f;
        this.f7078l = 0.0f;
        this.f7079m = 1.0f;
        this.f7067a = latLng;
        this.f7068b = str;
        this.f7069c = str2;
        this.f7070d = iBinder == null ? null : new C8906a(AbstractC7106b.BinderC7107a.m21060a(iBinder));
        this.f7071e = f;
        this.f7072f = f2;
        this.f7073g = z;
        this.f7074h = z2;
        this.f7075i = z3;
        this.f7076j = f3;
        this.f7077k = f4;
        this.f7078l = f5;
        this.f7079m = f6;
        this.f7080n = f7;
    }

    /* renamed from: H */
    public final float m31720H() {
        return this.f7071e;
    }

    /* renamed from: I */
    public final float m31719I() {
        return this.f7072f;
    }

    /* renamed from: J */
    public final float m31718J() {
        return this.f7077k;
    }

    /* renamed from: K */
    public final float m31717K() {
        return this.f7078l;
    }

    /* renamed from: L */
    public final float m31716L() {
        return this.f7076j;
    }

    /* renamed from: M */
    public final String m31715M() {
        return this.f7069c;
    }

    /* renamed from: N */
    public final String m31714N() {
        return this.f7068b;
    }

    /* renamed from: a */
    public final MarkerOptions m31713a(@NonNull LatLng latLng) {
        if (latLng != null) {
            this.f7067a = latLng;
            return this;
        }
        throw new IllegalArgumentException("latlng cannot be null - a position is required.");
    }

    /* renamed from: a */
    public final MarkerOptions m31712a(@Nullable C8906a aVar) {
        this.f7070d = aVar;
        return this;
    }

    /* renamed from: a */
    public final MarkerOptions m31711a(boolean z) {
        this.f7073g = z;
        return this;
    }

    /* renamed from: c */
    public final float m31710c() {
        return this.f7079m;
    }

    public final LatLng getPosition() {
        return this.f7067a;
    }

    /* renamed from: j0 */
    public final float m31709j0() {
        return this.f7080n;
    }

    /* renamed from: k0 */
    public final boolean m31708k0() {
        return this.f7073g;
    }

    /* renamed from: l0 */
    public final boolean m31707l0() {
        return this.f7075i;
    }

    /* renamed from: m0 */
    public final boolean m31706m0() {
        return this.f7074h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) getPosition(), i, false);
        C7031b.m21215a(parcel, 3, m31714N(), false);
        C7031b.m21215a(parcel, 4, m31715M(), false);
        C8906a aVar = this.f7070d;
        C7031b.m21222a(parcel, 5, aVar == null ? null : aVar.m16808a().asBinder(), false);
        C7031b.m21226a(parcel, 6, m31720H());
        C7031b.m21226a(parcel, 7, m31719I());
        C7031b.m21212a(parcel, 8, m31708k0());
        C7031b.m21212a(parcel, 9, m31706m0());
        C7031b.m21212a(parcel, 10, m31707l0());
        C7031b.m21226a(parcel, 11, m31716L());
        C7031b.m21226a(parcel, 12, m31718J());
        C7031b.m21226a(parcel, 13, m31717K());
        C7031b.m21226a(parcel, 14, m31710c());
        C7031b.m21226a(parcel, 15, m31709j0());
        C7031b.m21229a(parcel, a);
    }
}
