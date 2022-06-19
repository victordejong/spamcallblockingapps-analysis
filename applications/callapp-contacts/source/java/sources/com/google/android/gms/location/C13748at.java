package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.at */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/at.class */
public final class C13748at implements Parcelable.Creator<zzs> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzs createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = '2';
        char c2 = 65535;
        boolean z = true;
        float f = 0.0f;
        int i = Integer.MAX_VALUE;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 1) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c3 == 2) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c3 == 3) {
                f = SafeParcelReader.m19132i(parcel, readInt);
            } else if (c3 == 4) {
                c2 = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c3 != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzs(z, c, f, c2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzs[] newArray(int i) {
        return new zzs[i];
    }
}
