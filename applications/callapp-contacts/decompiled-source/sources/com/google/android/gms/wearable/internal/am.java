package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/am.class */
public final class am implements Parcelable.Creator<DataItemAssetParcelable> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataItemAssetParcelable createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new DataItemAssetParcelable(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataItemAssetParcelable[] newArray(int i) {
        return new DataItemAssetParcelable[i];
    }
}
