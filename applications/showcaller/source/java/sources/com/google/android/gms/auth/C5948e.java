package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/e.class */
public final class C5948e implements Parcelable.Creator<AccountChangeEventsResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsResponse createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v != 2) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                arrayList = SafeParcelReader.m16954t(parcel, m16983C, AccountChangeEvent.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new AccountChangeEventsResponse(i, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsResponse[] newArray(int i) {
        return new AccountChangeEventsResponse[i];
    }
}
