package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvs.class */
public final class dvs implements Parcelable.Creator<dvt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dvt createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m13965a(parcel, m13969a, ParcelFileDescriptor.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new dvt(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dvt[] newArray(int i) {
        return new dvt[i];
    }
}
