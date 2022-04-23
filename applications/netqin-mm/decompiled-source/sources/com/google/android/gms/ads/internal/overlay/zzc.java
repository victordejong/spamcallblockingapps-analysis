package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzc.class */
public final class zzc implements Parcelable.Creator<zzb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Intent intent = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 2:
                    str = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 3:
                    str2 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 4:
                    str3 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 5:
                    str4 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 6:
                    str5 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 7:
                    str6 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 8:
                    str7 = SafeParcelReader.m17246p(parcel, a);
                    break;
                case 9:
                    intent = (Intent) SafeParcelReader.m17264a(parcel, a, Intent.CREATOR);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzb(str, str2, str3, str4, str5, str6, str7, intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb[] newArray(int i) {
        return new zzb[i];
    }
}
