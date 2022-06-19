package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/wallet/wobs/zzl.class */
public final class zzl implements Parcelable.Creator<TimeInterval> {
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final TimeInterval createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 2) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c3 != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                c2 = SafeParcelReader.m38866w(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new TimeInterval(c, c2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ TimeInterval[] newArray(int i) {
        return new TimeInterval[i];
    }
}
