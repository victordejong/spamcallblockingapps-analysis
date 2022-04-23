package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.api.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/b.class */
public final class C1548b implements Parcelable.Creator<Scope> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Scope createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                i = SafeParcelReader.m8310s(parcel, q);
            } else if (k != 2) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                str = SafeParcelReader.m8323f(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new Scope(i, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Scope[] newArray(int i) {
        return new Scope[i];
    }
}
