package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sk.class */
public final class sk implements Parcelable.Creator<zzatu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatu createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.u(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzatu(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatu[] newArray(int i) {
        return new zzatu[i];
    }
}
