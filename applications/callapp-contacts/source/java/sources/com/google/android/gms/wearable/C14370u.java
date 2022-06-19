package com.google.android.gms.wearable;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.u */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/wearable/u.class */
public final class C14370u implements Parcelable.Creator<ConnectionConfiguration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionConfiguration createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
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
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 5:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 6:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 7:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\b':
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\t':
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\n':
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new ConnectionConfiguration(str, str2, i, i2, z, z2, str3, z3, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ConnectionConfiguration[] newArray(int i) {
        return new ConnectionConfiguration[i];
    }
}
