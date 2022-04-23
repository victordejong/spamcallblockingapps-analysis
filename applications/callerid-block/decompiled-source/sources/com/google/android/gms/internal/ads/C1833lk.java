package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.lk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lk.class */
public final class C1833lk implements Parcelable.Creator<zzaxe> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaxe createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 2) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k != 3) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                i = SafeParcelReader.m8310s(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzaxe(str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzaxe[] newArray(int i) {
        return new zzaxe[i];
    }
}
