package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dn.class */
public final class dn implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i = 0;
        byte b2 = 0;
        byte b3 = 0;
        byte b4 = 0;
        byte b5 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 3:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 5:
                    str3 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 6:
                    str4 = SafeParcelReader.m(parcel, readInt);
                    break;
                case 7:
                    str5 = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\b':
                    str6 = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\t':
                    b2 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\n':
                    b3 = SafeParcelReader.d(parcel, readInt);
                    break;
                case 11:
                    b4 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\f':
                    b5 = SafeParcelReader.d(parcel, readInt);
                    break;
                case '\r':
                    str7 = SafeParcelReader.m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzl(i, str, str2, str3, str4, str5, str6, b2, b3, b4, b5, str7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}
