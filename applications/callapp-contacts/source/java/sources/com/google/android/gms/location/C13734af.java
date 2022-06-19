package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.af */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/af.class */
public final class C13734af implements Parcelable.Creator<zzbo> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbo createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 65535;
        char c2 = 65535;
        int i = 1;
        int i2 = 1;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c3 == 2) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c3 == 3) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c3 != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                c2 = SafeParcelReader.m19135f(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzbo(i, i2, c, c2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbo[] newArray(int i) {
        return new zzbo[i];
    }
}
