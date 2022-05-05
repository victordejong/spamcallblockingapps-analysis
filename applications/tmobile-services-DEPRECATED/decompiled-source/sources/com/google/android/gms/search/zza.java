package com.google.android.gms.search;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/search/zza.class */
public final class zza implements Parcelable.Creator<GoogleNowAuthState> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleNowAuthState createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        long j = 0;
        String str2 = null;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u == 2) {
                str2 = SafeParcelReader.m14475o(parcel, B);
            } else if (u != 3) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                j = SafeParcelReader.m14496F(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new GoogleNowAuthState(str, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleNowAuthState[] newArray(int i) {
        return new GoogleNowAuthState[i];
    }
}
