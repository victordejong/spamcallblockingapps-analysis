package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8922q;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/PolylineOptions.class */
public final class PolylineOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PolylineOptions> CREATOR = new C8922q();

    /* renamed from: a */
    public final List<LatLng> f7097a;

    /* renamed from: b */
    public float f7098b;

    /* renamed from: c */
    public int f7099c;

    /* renamed from: d */
    public float f7100d;

    /* renamed from: e */
    public boolean f7101e;

    /* renamed from: f */
    public boolean f7102f;

    /* renamed from: g */
    public boolean f7103g;
    @NonNull

    /* renamed from: h */
    public Cap f7104h;
    @NonNull

    /* renamed from: i */
    public Cap f7105i;

    /* renamed from: j */
    public int f7106j;
    @Nullable

    /* renamed from: k */
    public List<PatternItem> f7107k;

    public PolylineOptions() {
        this.f7098b = 10.0f;
        this.f7099c = -16777216;
        this.f7100d = 0.0f;
        this.f7101e = true;
        this.f7102f = false;
        this.f7103g = false;
        this.f7104h = new ButtCap();
        this.f7105i = new ButtCap();
        this.f7106j = 0;
        this.f7107k = null;
        this.f7097a = new ArrayList();
    }

    public PolylineOptions(List list, float f, int i, float f2, boolean z, boolean z2, boolean z3, @Nullable Cap cap, @Nullable Cap cap2, int i2, @Nullable List<PatternItem> list2) {
        this.f7098b = 10.0f;
        this.f7099c = -16777216;
        this.f7100d = 0.0f;
        this.f7101e = true;
        this.f7102f = false;
        this.f7103g = false;
        this.f7104h = new ButtCap();
        this.f7105i = new ButtCap();
        this.f7106j = 0;
        this.f7107k = null;
        this.f7097a = list;
        this.f7098b = f;
        this.f7099c = i;
        this.f7100d = f2;
        this.f7101e = z;
        this.f7102f = z2;
        this.f7103g = z3;
        if (cap != null) {
            this.f7104h = cap;
        }
        if (cap2 != null) {
            this.f7105i = cap2;
        }
        this.f7106j = i2;
        this.f7107k = list2;
    }

    @NonNull
    /* renamed from: H */
    public final Cap m31695H() {
        return this.f7105i;
    }

    /* renamed from: I */
    public final int m31694I() {
        return this.f7106j;
    }

    @Nullable
    /* renamed from: J */
    public final List<PatternItem> m31693J() {
        return this.f7107k;
    }

    /* renamed from: K */
    public final List<LatLng> m31692K() {
        return this.f7097a;
    }

    @NonNull
    /* renamed from: L */
    public final Cap m31691L() {
        return this.f7104h;
    }

    /* renamed from: M */
    public final float m31690M() {
        return this.f7098b;
    }

    /* renamed from: N */
    public final float m31689N() {
        return this.f7100d;
    }

    /* renamed from: c */
    public final int m31688c() {
        return this.f7099c;
    }

    /* renamed from: j0 */
    public final boolean m31687j0() {
        return this.f7103g;
    }

    /* renamed from: k0 */
    public final boolean m31686k0() {
        return this.f7102f;
    }

    /* renamed from: l0 */
    public final boolean m31685l0() {
        return this.f7101e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 2, m31692K(), false);
        C7031b.m21226a(parcel, 3, m31690M());
        C7031b.m21225a(parcel, 4, m31688c());
        C7031b.m21226a(parcel, 5, m31689N());
        C7031b.m21212a(parcel, 6, m31685l0());
        C7031b.m21212a(parcel, 7, m31686k0());
        C7031b.m21212a(parcel, 8, m31687j0());
        C7031b.m21220a(parcel, 9, (Parcelable) m31691L(), i, false);
        C7031b.m21220a(parcel, 10, (Parcelable) m31695H(), i, false);
        C7031b.m21225a(parcel, 11, m31694I());
        C7031b.m21201c(parcel, 12, m31693J(), false);
        C7031b.m21229a(parcel, a);
    }
}
