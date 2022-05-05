package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8921p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/PolygonOptions.class */
public final class PolygonOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PolygonOptions> CREATOR = new C8921p();

    /* renamed from: a */
    public final List<LatLng> f7086a;

    /* renamed from: b */
    public final List<List<LatLng>> f7087b;

    /* renamed from: c */
    public float f7088c;

    /* renamed from: d */
    public int f7089d;

    /* renamed from: e */
    public int f7090e;

    /* renamed from: f */
    public float f7091f;

    /* renamed from: g */
    public boolean f7092g;

    /* renamed from: h */
    public boolean f7093h;

    /* renamed from: i */
    public boolean f7094i;

    /* renamed from: j */
    public int f7095j;
    @Nullable

    /* renamed from: k */
    public List<PatternItem> f7096k;

    public PolygonOptions() {
        this.f7088c = 10.0f;
        this.f7089d = -16777216;
        this.f7090e = 0;
        this.f7091f = 0.0f;
        this.f7092g = true;
        this.f7093h = false;
        this.f7094i = false;
        this.f7095j = 0;
        this.f7096k = null;
        this.f7086a = new ArrayList();
        this.f7087b = new ArrayList();
    }

    public PolygonOptions(List<LatLng> list, List list2, float f, int i, int i2, float f2, boolean z, boolean z2, boolean z3, int i3, @Nullable List<PatternItem> list3) {
        this.f7088c = 10.0f;
        this.f7089d = -16777216;
        this.f7090e = 0;
        this.f7091f = 0.0f;
        this.f7092g = true;
        this.f7093h = false;
        this.f7094i = false;
        this.f7095j = 0;
        this.f7096k = null;
        this.f7086a = list;
        this.f7087b = list2;
        this.f7088c = f;
        this.f7089d = i;
        this.f7090e = i2;
        this.f7091f = f2;
        this.f7092g = z;
        this.f7093h = z2;
        this.f7094i = z3;
        this.f7095j = i3;
        this.f7096k = list3;
    }

    /* renamed from: H */
    public final List<LatLng> m31705H() {
        return this.f7086a;
    }

    /* renamed from: I */
    public final int m31704I() {
        return this.f7089d;
    }

    /* renamed from: J */
    public final int m31703J() {
        return this.f7095j;
    }

    @Nullable
    /* renamed from: K */
    public final List<PatternItem> m31702K() {
        return this.f7096k;
    }

    /* renamed from: L */
    public final float m31701L() {
        return this.f7088c;
    }

    /* renamed from: M */
    public final float m31700M() {
        return this.f7091f;
    }

    /* renamed from: N */
    public final boolean m31699N() {
        return this.f7094i;
    }

    /* renamed from: c */
    public final int m31698c() {
        return this.f7090e;
    }

    /* renamed from: j0 */
    public final boolean m31697j0() {
        return this.f7093h;
    }

    /* renamed from: k0 */
    public final boolean m31696k0() {
        return this.f7092g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 2, m31705H(), false);
        C7031b.m21214a(parcel, 3, (List) this.f7087b, false);
        C7031b.m21226a(parcel, 4, m31701L());
        C7031b.m21225a(parcel, 5, m31704I());
        C7031b.m21225a(parcel, 6, m31698c());
        C7031b.m21226a(parcel, 7, m31700M());
        C7031b.m21212a(parcel, 8, m31696k0());
        C7031b.m21212a(parcel, 9, m31697j0());
        C7031b.m21212a(parcel, 10, m31699N());
        C7031b.m21225a(parcel, 11, m31703J());
        C7031b.m21201c(parcel, 12, m31702K(), false);
        C7031b.m21229a(parcel, a);
    }
}
