package com.google.android.gms.location;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzam.class */
public final class zzam implements Parcelable.Creator<zzal> {
    @Override // android.os.Parcelable.Creator
    public final zzal createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList<String> arrayList = null;
        String str = "";
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                arrayList = SafeParcelReader.m38877l(parcel, readInt);
            } else if (c == 2) {
                pendingIntent = (PendingIntent) SafeParcelReader.m38880i(parcel, readInt, PendingIntent.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzal(arrayList, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzal[] newArray(int i) {
        return new zzal[i];
    }
}
