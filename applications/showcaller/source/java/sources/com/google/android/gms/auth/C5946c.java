package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/c.class */
public final class C5946c implements Parcelable.Creator<AccountChangeEvent> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEvent createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 3:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 4:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 5:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 6:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new AccountChangeEvent(i, c, str, i2, i3, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEvent[] newArray(int i) {
        return new AccountChangeEvent[i];
    }
}
