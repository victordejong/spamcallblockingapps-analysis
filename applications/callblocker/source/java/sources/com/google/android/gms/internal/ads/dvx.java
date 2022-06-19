package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvx.class */
public final class dvx implements Parcelable.Creator<dvu> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dvu createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        boolean z = false;
        char c = 0;
        Bundle bundle = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        char c2 = 0;
        String str4 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    c2 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 4:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 6:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 7:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 8:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 9:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new dvu(str4, c2, str3, str2, str, bundle, z, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dvu[] newArray(int i) {
        return new dvu[i];
    }
}
