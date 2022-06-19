package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzcgz;
/* renamed from: com.google.android.gms.ads.internal.overlay.n */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/n.class */
public final class C5652n implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        zzc zzcVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        String str2 = null;
        IBinder iBinder5 = null;
        String str3 = null;
        zzcgz zzcgzVar = null;
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
        IBinder iBinder11 = null;
        IBinder iBinder12 = null;
        boolean z = false;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 2:
                    zzcVar = (zzc) SafeParcelReader.m16959o(parcel, m16983C, zzc.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 4:
                    iBinder2 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 5:
                    iBinder3 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 6:
                    iBinder4 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 7:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 8:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 9:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 10:
                    iBinder5 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 11:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 12:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 13:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 14:
                    zzcgzVar = (zzcgz) SafeParcelReader.m16959o(parcel, m16983C, zzcgz.CREATOR);
                    break;
                case 15:
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
                case 16:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 17:
                    zzjVar = (zzj) SafeParcelReader.m16959o(parcel, m16983C, zzj.CREATOR);
                    break;
                case 18:
                    iBinder6 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 19:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 20:
                    iBinder7 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 21:
                    iBinder8 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 22:
                    iBinder9 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 23:
                    iBinder10 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 24:
                    str6 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 25:
                    str7 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 26:
                    iBinder11 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
                case 27:
                    iBinder12 = SafeParcelReader.m16982D(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new AdOverlayInfoParcel(zzcVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, zzcgzVar, str4, zzjVar, iBinder6, str5, iBinder7, iBinder8, iBinder9, iBinder10, str6, str7, iBinder11, iBinder12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
