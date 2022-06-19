package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.cb */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cb.class */
public final class C14287cb implements Parcelable.Creator<zzfo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfo createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        boolean z = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 3) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 4) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzfo(str, str2, i, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfo[] newArray(int i) {
        return new zzfo[i];
    }
}
