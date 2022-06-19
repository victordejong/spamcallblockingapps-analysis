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
        int m8305x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 2) {
                z = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k != 3) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                arrayList = SafeParcelReader.m8321h(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzavq(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzavq[] newArray(int i) {
        return new zzavq[i];
    }
}
