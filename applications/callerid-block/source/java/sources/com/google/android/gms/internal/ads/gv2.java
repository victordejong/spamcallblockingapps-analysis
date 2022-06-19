package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gv2.class */
public final class gv2 implements Parcelable.Creator<zztp> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zztp createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        char c = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 2) {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m8324e(parcel, m8312q, ParcelFileDescriptor.CREATOR);
            } else if (m8318k == 3) {
                z = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k == 4) {
                z2 = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k == 5) {
                c = SafeParcelReader.m8309t(parcel, m8312q);
            } else if (m8318k != 6) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                z3 = SafeParcelReader.m8317l(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zztp(parcelFileDescriptor, z, z2, c, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zztp[] newArray(int i) {
        return new zztp[i];
    }
}
