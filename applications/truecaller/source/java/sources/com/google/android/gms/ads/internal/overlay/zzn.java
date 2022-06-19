package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzj;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzcgz;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzn.class */
public final class zzn implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        int i = 0;
        int i2 = 0;
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
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    zzcVar = (zzc) SafeParcelReader.m38880i(parcel, readInt, zzc.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 4:
                    iBinder2 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 5:
                    iBinder3 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 6:
                    iBinder4 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 7:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\n':
                    iBinder5 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 11:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\f':
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\r':
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 14:
                    zzcgzVar = (zzcgz) SafeParcelReader.m38880i(parcel, readInt, zzcgz.CREATOR);
                    break;
                case 15:
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
                case 16:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 17:
                    zzjVar = (zzj) SafeParcelReader.m38880i(parcel, readInt, zzj.CREATOR);
                    break;
                case 18:
                    iBinder6 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 19:
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 20:
                    iBinder7 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 21:
                    iBinder8 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 22:
                    iBinder9 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 23:
                    iBinder10 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 24:
                    str6 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 25:
                    str7 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 26:
                    iBinder11 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
                case 27:
                    iBinder12 = SafeParcelReader.m38868u(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new AdOverlayInfoParcel(zzcVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, zzcgzVar, str4, zzjVar, iBinder6, str5, iBinder7, iBinder8, iBinder9, iBinder10, str6, str7, iBinder11, iBinder12);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
