package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzdg.class */
public final class zzdg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdg> CREATOR = new aq();
    public final int statusCode;
    public final int zzdh;

    public zzdg(int i, int i2) {
        this.statusCode = i;
        this.zzdh = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.statusCode);
        a.a(parcel, 3, this.zzdh);
        a.b(parcel, a2);
    }
}
