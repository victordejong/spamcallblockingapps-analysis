package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/iv2.class */
public final class iv2 implements Parcelable.Creator<zzts> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzts createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Bundle bundle = null;
        String str5 = null;
        boolean z = false;
        int i = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 2:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 3:
                    c = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 4:
                    str2 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 5:
                    str3 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 6:
                    str4 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 7:
                    bundle = SafeParcelReader.m8328a(parcel, m8312q);
                    break;
                case 8:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 9:
                    c2 = SafeParcelReader.m8309t(parcel, m8312q);
                    break;
                case 10:
                    str5 = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 11:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzts(str, c, str2, str3, str4, bundle, z, c2, str5, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzts[] newArray(int i) {
        return new zzts[i];
    }
}
