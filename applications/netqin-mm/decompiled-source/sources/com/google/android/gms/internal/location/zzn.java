package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.zzj;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzn.class */
public final class zzn implements Parcelable.Creator<zzm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzm createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        zzj zzjVar = zzm.f29392e;
        List<ClientIdentity> list = zzm.f29391d;
        String str = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                zzjVar = (zzj) SafeParcelReader.m17264a(parcel, a, zzj.CREATOR);
            } else if (a2 == 2) {
                list = SafeParcelReader.m17259c(parcel, a, ClientIdentity.CREATOR);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                str = SafeParcelReader.m17246p(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzm(zzjVar, list, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzm[] newArray(int i) {
        return new zzm[i];
    }
}
