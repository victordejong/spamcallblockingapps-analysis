package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzam.class */
public final class zzam implements Parcelable.Creator<zzaj> {
    @Override // android.os.Parcelable.Creator
    public final zzaj createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        zzag[] zzagVarArr = null;
        zzw zzwVar = null;
        zzw zzwVar2 = null;
        String str = null;
        String str2 = null;
        float f = 0.0f;
        boolean z = false;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    zzagVarArr = (zzag[]) SafeParcelReader.m38876m(parcel, readInt, zzag.CREATOR);
                    break;
                case 3:
                    zzwVar = (zzw) SafeParcelReader.m38880i(parcel, readInt, zzw.CREATOR);
                    break;
                case 4:
                    zzwVar2 = (zzw) SafeParcelReader.m38880i(parcel, readInt, zzw.CREATOR);
                    break;
                case 5:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 7:
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzaj(zzagVarArr, zzwVar, zzwVar2, str, f, str2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaj[] newArray(int i) {
        return new zzaj[i];
    }
}
