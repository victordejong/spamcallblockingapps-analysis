package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.fp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fp.class */
public final class C3146fp implements Parcelable.Creator<C3143fm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3143fm createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String[] strArr = null;
        String[] strArr2 = null;
        String str = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 2:
                    strArr2 = SafeParcelReader.m13948o(parcel, m13969a);
                    break;
                case 3:
                    strArr = SafeParcelReader.m13948o(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3143fm(str, strArr2, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3143fm[] newArray(int i) {
        return new C3143fm[i];
    }
}
