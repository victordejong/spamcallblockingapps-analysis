package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.bz */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bz.class */
public final class C14284bz implements Parcelable.Creator<zzfe> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfe createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        byte[] bArr = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 3) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 4) {
                bArr = SafeParcelReader.m19125p(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzfe(i, str, bArr, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfe[] newArray(int i) {
        return new zzfe[i];
    }
}
