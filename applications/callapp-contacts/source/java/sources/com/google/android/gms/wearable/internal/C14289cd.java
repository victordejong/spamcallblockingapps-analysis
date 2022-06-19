package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.cd */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cd.class */
public final class C14289cd implements Parcelable.Creator<zzfs> {
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfs createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        char c = 0;
        String str2 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c2 == 3) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                c = SafeParcelReader.m19135f(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzfs(str, str2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfs[] newArray(int i) {
        return new zzfs[i];
    }
}
