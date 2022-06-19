package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.location.ag */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ag.class */
public final class C13735ag implements Parcelable.Creator<zzbq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbq createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList<String> arrayList = null;
        String str = "";
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                arrayList = SafeParcelReader.m19120u(parcel, readInt);
            } else if (c == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.m19143a(parcel, readInt, PendingIntent.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzbq(arrayList, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbq[] newArray(int i) {
        return new zzbq[i];
    }
}
