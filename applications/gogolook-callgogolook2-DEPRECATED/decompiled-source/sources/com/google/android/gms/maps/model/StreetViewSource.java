package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8927v;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/StreetViewSource.class */
public final class StreetViewSource extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewSource> CREATOR = new C8927v();

    /* renamed from: b */
    public static final StreetViewSource f7120b = new StreetViewSource(0);

    /* renamed from: a */
    public final int f7121a;

    static {
        new StreetViewSource(1);
    }

    public StreetViewSource(int i) {
        this.f7121a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StreetViewSource) && this.f7121a == ((StreetViewSource) obj).f7121a;
    }

    public final int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f7121a));
    }

    public final String toString() {
        int i = this.f7121a;
        return String.format("StreetViewSource:%s", i != 0 ? i != 1 ? String.format("UNKNOWN(%s)", Integer.valueOf(i)) : "OUTDOOR" : "DEFAULT");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 2, this.f7121a);
        C7031b.m21229a(parcel, a);
    }
}
