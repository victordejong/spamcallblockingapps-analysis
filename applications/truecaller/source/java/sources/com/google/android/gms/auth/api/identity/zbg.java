package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/identity/zbg.class */
public final class zbg implements Parcelable.Creator<SaveAccountLinkingTokenRequest> {
    @Override // android.os.Parcelable.Creator
    public final SaveAccountLinkingTokenRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        PendingIntent pendingIntent = null;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        String str3 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                pendingIntent = (PendingIntent) SafeParcelReader.m38880i(parcel, readInt, PendingIntent.CREATOR);
            } else if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 4) {
                arrayList = SafeParcelReader.m38877l(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str3 = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new SaveAccountLinkingTokenRequest(pendingIntent, str, str2, arrayList, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SaveAccountLinkingTokenRequest[] newArray(int i) {
        return new SaveAccountLinkingTokenRequest[i];
    }
}
