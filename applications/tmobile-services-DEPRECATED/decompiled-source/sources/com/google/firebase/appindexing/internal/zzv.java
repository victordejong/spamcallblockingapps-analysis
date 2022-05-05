package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/firebase/appindexing/internal/zzv.class */
public final class zzv implements Parcelable.Creator<zzc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    i = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 2:
                    z = SafeParcelReader.m14468v(parcel, B);
                    break;
                case 3:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 4:
                    str2 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 5:
                    bArr = SafeParcelReader.m14483g(parcel, B);
                    break;
                case 6:
                    z2 = SafeParcelReader.m14468v(parcel, B);
                    break;
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzc(i, z, str, str2, bArr, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc[] newArray(int i) {
        return new zzc[i];
    }
}
