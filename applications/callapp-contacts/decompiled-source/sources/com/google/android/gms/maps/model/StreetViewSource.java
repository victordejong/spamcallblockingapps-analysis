package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/StreetViewSource.class */
public final class StreetViewSource extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StreetViewSource> CREATOR = new zzq();
    public static final StreetViewSource DEFAULT = new StreetViewSource(0);
    public static final StreetViewSource OUTDOOR = new StreetViewSource(1);
    private static final String TAG = "StreetViewSource";
    private final int type;

    public StreetViewSource(int i) {
        this.type = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof StreetViewSource) && this.type == ((StreetViewSource) obj).type;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.type)});
    }

    public final String toString() {
        int i = this.type;
        return String.format("StreetViewSource:%s", i != 0 ? i != 1 ? String.format("UNKNOWN(%s)", Integer.valueOf(i)) : "OUTDOOR" : "DEFAULT");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.type);
        a.b(parcel, a2);
    }
}
