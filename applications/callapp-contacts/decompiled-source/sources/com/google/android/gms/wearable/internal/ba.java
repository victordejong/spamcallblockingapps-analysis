package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/ba.class */
public final class ba implements Parcelable.Creator<zzd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzd createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        IBinder iBinder = null;
        IntentFilter[] intentFilterArr = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                iBinder = SafeParcelReader.n(parcel, readInt);
            } else if (c2 == 3) {
                intentFilterArr = (IntentFilter[]) SafeParcelReader.b(parcel, readInt, IntentFilter.CREATOR);
            } else if (c2 == 4) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzd(iBinder, intentFilterArr, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzd[] newArray(int i) {
        return new zzd[i];
    }
}
