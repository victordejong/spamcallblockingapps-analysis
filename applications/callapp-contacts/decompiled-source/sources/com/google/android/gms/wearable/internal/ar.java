package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ar.class */
public final class ar implements Parcelable.Creator<zzdi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdi createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.c(parcel, readInt, zzah.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdi(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdi[] newArray(int i) {
        return new zzdi[i];
    }
}
