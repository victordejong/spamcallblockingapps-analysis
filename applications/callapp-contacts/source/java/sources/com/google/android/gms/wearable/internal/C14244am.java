package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.am */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/am.class */
public final class C14244am implements Parcelable.Creator<DataItemAssetParcelable> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataItemAssetParcelable createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new DataItemAssetParcelable(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataItemAssetParcelable[] newArray(int i) {
        return new DataItemAssetParcelable[i];
    }
}
