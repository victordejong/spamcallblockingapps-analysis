package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ag.class */
public final class ag implements Parcelable.Creator<zzbq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbq createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        ArrayList<String> arrayList = null;
        String str = "";
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                arrayList = SafeParcelReader.u(parcel, readInt);
            } else if (c2 == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.a(parcel, readInt, PendingIntent.CREATOR);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzbq(arrayList, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbq[] newArray(int i) {
        return new zzbq[i];
    }
}
