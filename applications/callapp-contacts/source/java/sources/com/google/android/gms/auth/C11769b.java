package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/b.class */
public final class C11769b implements Parcelable.Creator<AccountChangeEvent> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEvent createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 3:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 5:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 6:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new AccountChangeEvent(i, c, str, i2, i3, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEvent[] newArray(int i) {
        return new AccountChangeEvent[i];
    }
}
