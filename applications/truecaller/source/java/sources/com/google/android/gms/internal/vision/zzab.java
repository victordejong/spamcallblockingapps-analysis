package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzab.class */
public final class zzab implements Parcelable.Creator<zzac> {
    @Override // android.os.Parcelable.Creator
    public final zzac createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        zzaj[] zzajVarArr = null;
        zzw zzwVar = null;
        zzw zzwVar2 = null;
        zzw zzwVar3 = null;
        String str = null;
        String str2 = null;
        float f = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    zzajVarArr = (zzaj[]) SafeParcelReader.m38876m(parcel, readInt, zzaj.CREATOR);
                    break;
                case 3:
                    zzwVar = (zzw) SafeParcelReader.m38880i(parcel, readInt, zzw.CREATOR);
                    break;
                case 4:
                    zzwVar2 = (zzw) SafeParcelReader.m38880i(parcel, readInt, zzw.CREATOR);
                    break;
                case 5:
                    zzwVar3 = (zzw) SafeParcelReader.m38880i(parcel, readInt, zzw.CREATOR);
                    break;
                case 6:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 7:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '\b':
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\t':
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\n':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 11:
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '\f':
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzac(zzajVarArr, zzwVar, zzwVar2, zzwVar3, str, f, str2, i, z, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzac[] newArray(int i) {
        return new zzac[i];
    }
}
