package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.wearable.internal.cl */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cl.class */
public final class C14297cl implements Parcelable.Creator<zzge> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzge createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        char c = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 == 3) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, zzfs.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzge(i, c, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzge[] newArray(int i) {
        return new zzge[i];
    }
}
