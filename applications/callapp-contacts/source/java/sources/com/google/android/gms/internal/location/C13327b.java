package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.location.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/b.class */
public final class C13327b implements Parcelable.Creator<zzaa> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaa createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        Status status = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                status = (Status) SafeParcelReader.m19143a(parcel, readInt, Status.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaa(status);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaa[] newArray(int i) {
        return new zzaa[i];
    }
}
