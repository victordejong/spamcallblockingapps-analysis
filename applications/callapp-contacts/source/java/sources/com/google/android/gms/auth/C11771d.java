package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/d.class */
public final class C11771d implements Parcelable.Creator<AccountChangeEventsResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsResponse createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, AccountChangeEvent.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new AccountChangeEventsResponse(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsResponse[] newArray(int i) {
        return new AccountChangeEventsResponse[i];
    }
}
