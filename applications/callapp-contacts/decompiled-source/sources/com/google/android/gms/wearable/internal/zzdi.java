package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdi.class */
public final class zzdi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdi> CREATOR = new ar();
    public final int statusCode;
    public final List<zzah> zzdp;

    public zzdi(int i, List<zzah> list) {
        this.statusCode = i;
        this.zzdp = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.statusCode);
        a.a(parcel, 3, (List) this.zzdp, false);
        a.b(parcel, a2);
    }
}
