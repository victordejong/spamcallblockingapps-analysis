package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.sk */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sk.class */
public final class C12907sk implements Parcelable.Creator<zzatu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatu createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m19120u(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzatu(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatu[] newArray(int i) {
        return new zzatu[i];
    }
}
