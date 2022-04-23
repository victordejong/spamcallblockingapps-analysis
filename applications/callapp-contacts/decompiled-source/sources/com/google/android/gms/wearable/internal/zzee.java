package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/zzee.class */
public final class zzee extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzee> CREATOR = new bd();
    public final int statusCode;
    public final ParcelFileDescriptor zzdz;

    public zzee(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.statusCode = i;
        this.zzdz = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, this.statusCode);
        a.a(parcel, 3, this.zzdz, i | 1, false);
        a.b(parcel, a2);
    }
}
