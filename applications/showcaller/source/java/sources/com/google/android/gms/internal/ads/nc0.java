package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/nc0.class */
public final class nc0 implements Parcelable.Creator<zzcax> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcax createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 2) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v != 3) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                arrayList = SafeParcelReader.m16956r(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzcax(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcax[] newArray(int i) {
        return new zzcax[i];
    }
}
