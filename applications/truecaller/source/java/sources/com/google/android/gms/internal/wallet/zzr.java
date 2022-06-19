package com.google.android.gms.internal.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import android.widget.RemoteViews;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/wallet/zzr.class */
public final class zzr implements Parcelable.Creator<zzq> {
    @Override // android.os.Parcelable.Creator
    public final zzq createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String[] strArr = null;
        int[] iArr = null;
        RemoteViews remoteViews = null;
        byte[] bArr = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                strArr = SafeParcelReader.m38878k(parcel, readInt);
            } else if (c == 2) {
                iArr = SafeParcelReader.m38883f(parcel, readInt);
            } else if (c == 3) {
                remoteViews = (RemoteViews) SafeParcelReader.m38880i(parcel, readInt, RemoteViews.CREATOR);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                bArr = SafeParcelReader.m38885d(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzq(strArr, iArr, remoteViews, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzq[] newArray(int i) {
        return new zzq[i];
    }
}
