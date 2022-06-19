package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.px */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/px.class */
public final class C3424px implements Parcelable.Creator<C3422pv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3422pv createFromParcel(Parcel parcel) {
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
        return new C3422pv(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3422pv[] newArray(int i) {
        return new C3422pv[i];
    }
}
