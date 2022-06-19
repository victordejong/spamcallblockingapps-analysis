package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzac.class */
public final class zzac implements Parcelable.Creator {
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        String str = null;
        String str2 = null;
        zzks zzksVar = null;
        String str3 = null;
        zzau zzauVar = null;
        zzau zzauVar2 = null;
        zzau zzauVar3 = null;
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
                    zzksVar = (zzks) SafeParcelReader.m38880i(parcel, readInt, zzks.CREATOR);
                    break;
                case 5:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 6:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 7:
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    zzauVar = (zzau) SafeParcelReader.m38880i(parcel, readInt, zzau.CREATOR);
                    break;
                case '\t':
                    c2 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case '\n':
                    zzauVar2 = (zzau) SafeParcelReader.m38880i(parcel, readInt, zzau.CREATOR);
                    break;
                case 11:
                    c3 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case '\f':
                    zzauVar3 = (zzau) SafeParcelReader.m38880i(parcel, readInt, zzau.CREATOR);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzab(str, str2, zzksVar, c, z, str3, zzauVar, c2, zzauVar2, c3, zzauVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzab[i];
    }
}
