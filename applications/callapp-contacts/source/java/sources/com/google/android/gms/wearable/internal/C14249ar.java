package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.wearable.internal.ar */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ar.class */
public final class C14249ar implements Parcelable.Creator<zzdi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdi createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, zzah.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdi(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdi[] newArray(int i) {
        return new zzdi[i];
    }
}
