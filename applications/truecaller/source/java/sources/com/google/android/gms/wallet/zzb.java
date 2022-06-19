package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/zzb.class */
public final class zzb implements Parcelable.Creator<zza> {
    @Override // android.os.Parcelable.Creator
    public final zza createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        boolean z = false;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 4:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    str6 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    str7 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\t':
                    str8 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\n':
                    str9 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 11:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\f':
                    str10 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zza(str, str2, str3, str4, str5, str6, str7, str8, str9, z, str10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zza[] newArray(int i) {
        return new zza[i];
    }
}
