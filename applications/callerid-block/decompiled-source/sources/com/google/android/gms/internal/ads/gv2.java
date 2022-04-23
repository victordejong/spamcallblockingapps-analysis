package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gv2.class */
public final class gv2 implements Parcelable.Creator<zztp> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zztp createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        long j = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m8324e(parcel, q, ParcelFileDescriptor.CREATOR);
            } else if (k == 3) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 4) {
                z2 = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 5) {
                j = SafeParcelReader.m8309t(parcel, q);
            } else if (k != 6) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                z3 = SafeParcelReader.m8317l(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zztp(parcelFileDescriptor, z, z2, j, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zztp[] newArray(int i) {
        return new zztp[i];
    }
}
