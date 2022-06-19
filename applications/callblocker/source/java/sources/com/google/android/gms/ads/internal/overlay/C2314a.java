package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.internal.overlay.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/a.class */
public final class C2314a implements Parcelable.Creator<C2317d> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2317d createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        Intent intent = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str7 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    str6 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 4:
                    str5 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 6:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 7:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 8:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 9:
                    intent = (Intent) SafeParcelReader.m13965a(parcel, m13969a, Intent.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2317d(str7, str6, str5, str4, str3, str2, str, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2317d[] newArray(int i) {
        return new C2317d[i];
    }
}
