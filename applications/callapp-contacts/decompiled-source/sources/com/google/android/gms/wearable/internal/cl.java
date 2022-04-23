package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cl.class */
public final class cl implements Parcelable.Creator<zzge> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzge createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        long j = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                j = SafeParcelReader.f(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.c(parcel, readInt, zzfs.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzge(i, j, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzge[] newArray(int i) {
        return new zzge[i];
    }
}
