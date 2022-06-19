package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.signin.internal.b */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/b.class */
public final class C14156b implements Parcelable.Creator<zaa> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zaa createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        Intent intent = null;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                intent = (Intent) SafeParcelReader.m19143a(parcel, readInt, Intent.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zaa(i, i2, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zaa[] newArray(int i) {
        return new zaa[i];
    }
}
