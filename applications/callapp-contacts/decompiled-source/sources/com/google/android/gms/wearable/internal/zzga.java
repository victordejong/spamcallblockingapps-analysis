package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzga.class */
public final class zzga extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzga> CREATOR = new ci();
    public final int statusCode;
    public final int zzeh;

    public zzga(int i, int i2) {
        this.statusCode = i;
        this.zzeh = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.statusCode);
        a.a(parcel, 3, this.zzeh);
        a.b(parcel, a2);
    }
}
