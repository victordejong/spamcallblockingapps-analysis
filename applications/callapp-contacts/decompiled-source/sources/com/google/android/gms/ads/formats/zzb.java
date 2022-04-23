package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/zzb.class */
public final class zzb implements Parcelable.Creator<AdManagerAdViewOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdManagerAdViewOptions createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        boolean z = false;
        IBinder iBinder = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                iBinder = SafeParcelReader.n(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new AdManagerAdViewOptions(z, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AdManagerAdViewOptions[] newArray(int i) {
        return new AdManagerAdViewOptions[i];
    }
}
