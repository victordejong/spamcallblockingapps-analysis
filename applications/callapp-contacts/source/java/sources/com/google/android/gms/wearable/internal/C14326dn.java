package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.dn */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/dn.class */
public final class C14326dn implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i = 0;
        byte b = 0;
        byte b2 = 0;
        byte b3 = 0;
        byte b4 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 3:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 7:
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\b':
                    str6 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\t':
                    b4 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\n':
                    b3 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case 11:
                    b2 = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\f':
                    b = SafeParcelReader.m19137d(parcel, readInt);
                    break;
                case '\r':
                    str7 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzl(i, str, str2, str3, str4, str5, str6, b4, b3, b2, b, str7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i) {
        return new zzl[i];
    }
}
