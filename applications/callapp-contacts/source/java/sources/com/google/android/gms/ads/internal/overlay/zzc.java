package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzc.class */
public final class zzc implements Parcelable.Creator<zzb> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
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
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 7:
                    str6 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\b':
                    str7 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\t':
                    intent = (Intent) SafeParcelReader.m19143a(parcel, readInt, Intent.CREATOR);
                    break;
                case '\n':
                    iBinder = SafeParcelReader.m19127n(parcel, readInt);
                    break;
                case 11:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzb(str, str2, str3, str4, str5, str6, str7, intent, iBinder, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzb[] newArray(int i) {
        return new zzb[i];
    }
}
