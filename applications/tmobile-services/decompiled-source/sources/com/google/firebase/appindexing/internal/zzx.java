package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzx.class */
public final class zzx implements Parcelable.Creator<zzy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzy createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        Thing[] thingArr = null;
        String[] strArr = null;
        String[] strArr2 = null;
        zza zzaVar = null;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    i = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 2:
                    thingArr = (Thing[]) SafeParcelReader.m14472r(parcel, B, Thing.CREATOR);
                    break;
                case 3:
                    strArr = SafeParcelReader.m14474p(parcel, B);
                    break;
                case 4:
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
                case 5:
                    strArr2 = SafeParcelReader.m14474p(parcel, B);
                    break;
                case 6:
                    zzaVar = (zza) SafeParcelReader.m14476n(parcel, B, zza.CREATOR);
                    break;
                case 7:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 8:
                    str2 = SafeParcelReader.m14475o(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzy(i, thingArr, strArr, strArr2, zzaVar, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzy[] newArray(int i) {
        return new zzy[i];
    }
}
