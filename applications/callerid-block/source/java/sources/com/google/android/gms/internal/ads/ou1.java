package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ou1.class */
public final class ou1 implements Parcelable.Creator<zzeai> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzeai createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k != 2) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                bArr = SafeParcelReader.m8327b(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzeai(i, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzeai[] newArray(int i) {
        return new zzeai[i];
    }
}
