package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzs.class */
public final class zzs implements Parcelable.Creator<zzr> {
    @Override // android.os.Parcelable.Creator
    public final zzr createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        boolean z2 = true;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 4:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 5:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\b':
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\t':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\n':
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzr(str, i, i2, str2, str3, z2, str4, z, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzr[] newArray(int i) {
        return new zzr[i];
    }
}
