package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.internal.overlay.e */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/e.class */
public final class C1391e implements Parcelable.Creator<zzc> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzc createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
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
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(q)) {
                case 2:
                    str = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 3:
                    str2 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 4:
                    str3 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 5:
                    str4 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 6:
                    str5 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 7:
                    str6 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 8:
                    str7 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 9:
                    intent = (Intent) SafeParcelReader.m8324e(parcel, q, Intent.CREATOR);
                    break;
                case 10:
                    iBinder = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 11:
                    z = SafeParcelReader.m8317l(parcel, q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzc(str, str2, str3, str4, str5, str6, str7, intent, iBinder, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzc[] newArray(int i) {
        return new zzc[i];
    }
}
