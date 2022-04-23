package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: com.google.android.gms.ads.internal.overlay.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/p.class */
public final class C1399p implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        zzc zzcVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        String str2 = null;
        IBinder iBinder5 = null;
        String str3 = null;
        zzbbq zzbbqVar = null;
        String str4 = null;
        zzj zzjVar = null;
        IBinder iBinder6 = null;
        String str5 = null;
        IBinder iBinder7 = null;
        IBinder iBinder8 = null;
        IBinder iBinder9 = null;
        IBinder iBinder10 = null;
        String str6 = null;
        String str7 = null;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(q)) {
                case 2:
                    zzcVar = (zzc) SafeParcelReader.m8324e(parcel, q, zzc.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 4:
                    iBinder2 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 5:
                    iBinder3 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 6:
                    iBinder4 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 7:
                    str = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 8:
                    z = SafeParcelReader.m8317l(parcel, q);
                    break;
                case 9:
                    str2 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 10:
                    iBinder5 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 11:
                    i = SafeParcelReader.m8310s(parcel, q);
                    break;
                case 12:
                    i2 = SafeParcelReader.m8310s(parcel, q);
                    break;
                case 13:
                    str3 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 14:
                    zzbbqVar = (zzbbq) SafeParcelReader.m8324e(parcel, q, zzbbq.CREATOR);
                    break;
                case 15:
                default:
                    SafeParcelReader.m8306w(parcel, q);
                    break;
                case 16:
                    str4 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 17:
                    zzjVar = (zzj) SafeParcelReader.m8324e(parcel, q, zzj.CREATOR);
                    break;
                case 18:
                    iBinder6 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 19:
                    str5 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 20:
                    iBinder7 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 21:
                    iBinder8 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 22:
                    iBinder9 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 23:
                    iBinder10 = SafeParcelReader.m8311r(parcel, q);
                    break;
                case 24:
                    str6 = SafeParcelReader.m8323f(parcel, q);
                    break;
                case 25:
                    str7 = SafeParcelReader.m8323f(parcel, q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new AdOverlayInfoParcel(zzcVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, zzbbqVar, str4, zzjVar, iBinder6, str5, iBinder7, iBinder8, iBinder9, iBinder10, str6, str7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
