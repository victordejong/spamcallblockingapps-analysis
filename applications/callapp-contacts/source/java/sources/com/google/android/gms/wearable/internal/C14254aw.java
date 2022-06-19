package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.aw */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/aw.class */
public final class C14254aw implements Parcelable.Creator<zzdt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdt createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 3) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdt(i, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdt[] newArray(int i) {
        return new zzdt[i];
    }
}
