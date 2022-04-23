package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdr.class */
public final class zzdr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdr> CREATOR = new av();
    private final int statusCode;
    private final boolean zzds;

    public zzdr(int i, boolean z) {
        this.statusCode = i;
        this.zzds = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.statusCode);
        a.a(parcel, 3, this.zzds);
        a.b(parcel, a2);
    }
}
