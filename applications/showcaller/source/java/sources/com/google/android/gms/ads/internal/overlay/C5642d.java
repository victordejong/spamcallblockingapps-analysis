package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.internal.overlay.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/d.class */
public final class C5642d implements Parcelable.Creator<zzc> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzc createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Intent intent = null;
        IBinder iBinder = null;
        boolean z = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 4:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 6:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 7:
                    str6 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 8:
                    str7 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 9:
                    intent = (Intent) SafeParcelReader.m16959o(parcel, m16983C, Intent.CREATOR);
                    break;
                case 10:
                    iBinder = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 11:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzc(str, str2, str3, str4, str5, str6, str7, intent, iBinder, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzc[] newArray(int i) {
        return new zzc[i];
    }
}
