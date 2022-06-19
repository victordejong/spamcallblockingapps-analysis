package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ge */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ge.class */
public final class C3162ge implements Parcelable.Creator<C3159gb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3159gb createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        int i = 0;
        boolean z = false;
        String str2 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 2:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3159gb(str2, z, i, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3159gb[] newArray(int i) {
        return new C3159gb[i];
    }
}
