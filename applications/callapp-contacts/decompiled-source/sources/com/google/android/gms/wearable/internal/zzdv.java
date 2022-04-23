package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdv.class */
public final class zzdv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdv> CREATOR = new ax();
    private final boolean enabled;
    private final int statusCode;

    public zzdv(int i, boolean z) {
        this.statusCode = i;
        this.enabled = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.statusCode);
        a.a(parcel, 3, this.enabled);
        a.b(parcel, a2);
    }
}
