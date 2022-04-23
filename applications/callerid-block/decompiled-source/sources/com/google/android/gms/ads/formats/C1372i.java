package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.formats.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/i.class */
public final class C1372i implements Parcelable.Creator<PublisherAdViewOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PublisherAdViewOptions createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        boolean z = false;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 2) {
                iBinder = SafeParcelReader.m8311r(parcel, q);
            } else if (k != 3) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                iBinder2 = SafeParcelReader.m8311r(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new PublisherAdViewOptions(z, iBinder, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ PublisherAdViewOptions[] newArray(int i) {
        return new PublisherAdViewOptions[i];
    }
}
