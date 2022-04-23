package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.zi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zi.class */
public final class C2070zi implements Parcelable.Creator<zzavq> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzavq createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 2) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k != 3) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                arrayList = SafeParcelReader.m8321h(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzavq(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzavq[] newArray(int i) {
        return new zzavq[i];
    }
}
