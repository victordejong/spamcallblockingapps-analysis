package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.wearable.internal.av */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/av.class */
public final class C14253av implements Parcelable.Creator<zzdr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdr createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        boolean z = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdr(i, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdr[] newArray(int i) {
        return new zzdr[i];
    }
}
