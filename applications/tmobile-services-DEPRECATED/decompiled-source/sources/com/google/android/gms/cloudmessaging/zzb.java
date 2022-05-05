package com.google.android.gms.cloudmessaging;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzb.class */
public final class zzb implements Parcelable.Creator<CloudMessage> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            if (SafeParcelReader.m14469u(B) != 1) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                intent = (Intent) SafeParcelReader.m14476n(parcel, B, Intent.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new CloudMessage(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CloudMessage[] newArray(int i) {
        return new CloudMessage[i];
    }
}
