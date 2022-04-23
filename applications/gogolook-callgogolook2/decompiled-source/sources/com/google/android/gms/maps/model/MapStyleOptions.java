package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8917l;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/MapStyleOptions.class */
public final class MapStyleOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MapStyleOptions> CREATOR = new C8917l();

    /* renamed from: a */
    public String f7066a;

    public MapStyleOptions(String str) {
        this.f7066a = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21215a(parcel, 2, this.f7066a, false);
        C7031b.m21229a(parcel, a);
    }
}
