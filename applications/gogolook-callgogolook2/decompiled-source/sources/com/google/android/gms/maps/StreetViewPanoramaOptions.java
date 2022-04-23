package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewSource;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.C8934n;
import p081h.p203i.p204a.p224e.p282l.p283j.C8889j;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/StreetViewPanoramaOptions.class */
public final class StreetViewPanoramaOptions extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<StreetViewPanoramaOptions> CREATOR = new C8934n();

    /* renamed from: a */
    public StreetViewPanoramaCamera f7004a;

    /* renamed from: b */
    public String f7005b;

    /* renamed from: c */
    public LatLng f7006c;

    /* renamed from: d */
    public Integer f7007d;

    /* renamed from: e */
    public Boolean f7008e;

    /* renamed from: f */
    public Boolean f7009f;

    /* renamed from: g */
    public Boolean f7010g;

    /* renamed from: h */
    public Boolean f7011h;

    /* renamed from: i */
    public Boolean f7012i;

    /* renamed from: j */
    public StreetViewSource f7013j;

    public StreetViewPanoramaOptions() {
        this.f7008e = true;
        this.f7009f = true;
        this.f7010g = true;
        this.f7011h = true;
        this.f7013j = StreetViewSource.f7120b;
    }

    public StreetViewPanoramaOptions(StreetViewPanoramaCamera streetViewPanoramaCamera, String str, LatLng latLng, Integer num, byte b, byte b2, byte b3, byte b4, byte b5, StreetViewSource streetViewSource) {
        this.f7008e = true;
        this.f7009f = true;
        this.f7010g = true;
        this.f7011h = true;
        this.f7013j = StreetViewSource.f7120b;
        this.f7004a = streetViewPanoramaCamera;
        this.f7006c = latLng;
        this.f7007d = num;
        this.f7005b = str;
        this.f7008e = C8889j.m16825a(b);
        this.f7009f = C8889j.m16825a(b2);
        this.f7010g = C8889j.m16825a(b3);
        this.f7011h = C8889j.m16825a(b4);
        this.f7012i = C8889j.m16825a(b5);
        this.f7013j = streetViewSource;
    }

    /* renamed from: H */
    public final Integer m31760H() {
        return this.f7007d;
    }

    /* renamed from: I */
    public final StreetViewSource m31759I() {
        return this.f7013j;
    }

    /* renamed from: J */
    public final StreetViewPanoramaCamera m31758J() {
        return this.f7004a;
    }

    /* renamed from: c */
    public final String m31757c() {
        return this.f7005b;
    }

    public final LatLng getPosition() {
        return this.f7006c;
    }

    public final String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("PanoramaId", this.f7005b);
        a.m21295a("Position", this.f7006c);
        a.m21295a("Radius", this.f7007d);
        a.m21295a("Source", this.f7013j);
        a.m21295a("StreetViewPanoramaCamera", this.f7004a);
        a.m21295a("UserNavigationEnabled", this.f7008e);
        a.m21295a("ZoomGesturesEnabled", this.f7009f);
        a.m21295a("PanningGesturesEnabled", this.f7010g);
        a.m21295a("StreetNamesEnabled", this.f7011h);
        a.m21295a("UseViewLifecycleInFragment", this.f7012i);
        return a.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21220a(parcel, 2, (Parcelable) m31758J(), i, false);
        C7031b.m21215a(parcel, 3, m31757c(), false);
        C7031b.m21220a(parcel, 4, (Parcelable) getPosition(), i, false);
        C7031b.m21217a(parcel, 5, m31760H(), false);
        C7031b.m21228a(parcel, 6, C8889j.m16824a(this.f7008e));
        C7031b.m21228a(parcel, 7, C8889j.m16824a(this.f7009f));
        C7031b.m21228a(parcel, 8, C8889j.m16824a(this.f7010g));
        C7031b.m21228a(parcel, 9, C8889j.m16824a(this.f7011h));
        C7031b.m21228a(parcel, 10, C8889j.m16824a(this.f7012i));
        C7031b.m21220a(parcel, 11, (Parcelable) m31759I(), i, false);
        C7031b.m21229a(parcel, a);
    }
}
