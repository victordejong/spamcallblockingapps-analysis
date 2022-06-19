package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzayo.class */
public final class zzayo implements Parcelable.Creator<zzayn> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v36, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzayn createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        int i = 0;
        char c = 0;
        char c2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Bundle bundle = null;
        String str5 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 3:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 4:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 5:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    bundle = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\t':
                    c2 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case '\n':
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 11:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzayn(str, c, str2, str3, str4, bundle, z, c2, str5, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzayn[] newArray(int i) {
        return new zzayn[i];
    }
}
