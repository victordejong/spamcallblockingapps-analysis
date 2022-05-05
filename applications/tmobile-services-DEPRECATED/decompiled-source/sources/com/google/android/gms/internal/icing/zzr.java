package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzr.class */
public final class zzr implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        Status status = null;
        ArrayList arrayList = null;
        String[] strArr = null;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                status = (Status) SafeParcelReader.m14476n(parcel, B, Status.CREATOR);
            } else if (u == 2) {
                arrayList = SafeParcelReader.m14471s(parcel, B, zzw.CREATOR);
            } else if (u != 3) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                strArr = SafeParcelReader.m14474p(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzo(status, arrayList, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i) {
        return new zzo[i];
    }
}
