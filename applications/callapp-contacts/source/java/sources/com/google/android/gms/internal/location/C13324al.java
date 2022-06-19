package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.zzs;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.location.al */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/al.class */
public final class C13324al implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        zzs zzsVar = zzj.zzb;
        ArrayList arrayList = zzj.zza;
        String str = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                zzsVar = (zzs) SafeParcelReader.m19143a(parcel, readInt, zzs.CREATOR);
            } else if (c == 2) {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, ClientIdentity.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzj(zzsVar, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
