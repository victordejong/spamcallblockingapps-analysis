package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ue.class */
public final class ue implements Parcelable.Creator<zzavt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavt createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        zzvq zzvqVar = null;
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                zzvqVar = (zzvq) SafeParcelReader.a(parcel, readInt, zzvq.CREATOR);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzavt(zzvqVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzavt[] newArray(int i) {
        return new zzavt[i];
    }
}
