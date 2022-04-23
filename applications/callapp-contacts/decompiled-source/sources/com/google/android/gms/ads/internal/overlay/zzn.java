package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.ads.internal.zzk;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.ads.zzbar;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzn.class */
public final class zzn implements Parcelable.Creator<AdOverlayInfoParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        zzb zzbVar = null;
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        IBinder iBinder4 = null;
        String str = null;
        String str2 = null;
        IBinder iBinder5 = null;
        String str3 = null;
        zzbar zzbarVar = null;
        String str4 = null;
        zzk zzkVar = null;
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
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    zzbVar = (zzb) SafeParcelReader.a(parcel, readInt, zzb.CREATOR);
                    break;
                case 3:
                    iBinder = SafeParcelReader.n(parcel, readInt);
                    break;
                case 4:
                    iBinder2 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 5:
                    iBinder3 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 6:
                    iBinder4 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 7:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case '\t':
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\n':
                    iBinder5 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 11:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case '\f':
                    i2 = SafeParcelReader.e(parcel, readInt);
                    break;
                case '\r':
                    str3 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 14:
                    zzbarVar = (zzbar) SafeParcelReader.a(parcel, readInt, zzbar.CREATOR);
                    break;
                case 15:
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
                case 16:
                    str4 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 17:
                    zzkVar = (zzk) SafeParcelReader.a(parcel, readInt, zzk.CREATOR);
                    break;
                case 18:
                    iBinder6 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 19:
                    str5 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 20:
                    iBinder7 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 21:
                    iBinder8 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 22:
                    iBinder9 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 23:
                    iBinder10 = SafeParcelReader.n(parcel, readInt);
                    break;
                case 24:
                    str6 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 25:
                    str7 = SafeParcelReader.m(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new AdOverlayInfoParcel(zzbVar, iBinder, iBinder2, iBinder3, iBinder4, str, z, str2, iBinder5, i, i2, str3, zzbarVar, str4, zzkVar, iBinder6, str5, iBinder7, iBinder8, iBinder9, iBinder10, str6, str7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdOverlayInfoParcel[] newArray(int i) {
        return new AdOverlayInfoParcel[i];
    }
}
