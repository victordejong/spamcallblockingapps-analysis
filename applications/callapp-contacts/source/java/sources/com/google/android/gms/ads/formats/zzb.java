package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/zzb.class */
public final class zzb implements Parcelable.Creator<AdManagerAdViewOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdManagerAdViewOptions createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        boolean z = false;
        IBinder iBinder = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                iBinder = SafeParcelReader.m19127n(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new AdManagerAdViewOptions(z, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdManagerAdViewOptions[] newArray(int i) {
        return new AdManagerAdViewOptions[i];
    }
}
