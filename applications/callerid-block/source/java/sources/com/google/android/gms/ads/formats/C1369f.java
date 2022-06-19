package com.google.android.gms.ads.formats;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.ads.formats.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/f.class */
public final class C1369f implements Parcelable.Creator<AdManagerAdViewOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdManagerAdViewOptions createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        IBinder iBinder = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                z = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k != 2) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                iBinder = SafeParcelReader.m8311r(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new AdManagerAdViewOptions(z, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ AdManagerAdViewOptions[] newArray(int i) {
        return new AdManagerAdViewOptions[i];
    }
}
