package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzav.class */
public final class zzav implements Parcelable.Creator {
    /* renamed from: a */
    public static void m38616a(zzau zzauVar, Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        SafeParcelWriter.m38846q(parcel, 2, zzauVar.a, false);
        SafeParcelWriter.m38847p(parcel, 3, zzauVar.b, i, false);
        SafeParcelWriter.m38846q(parcel, 4, zzauVar.c, false);
        long j = zzauVar.d;
        parcel.writeInt(524293);
        parcel.writeLong(j);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        zzas zzasVar = null;
        String str2 = null;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c2 == 3) {
                zzasVar = (zzas) SafeParcelReader.m38880i(parcel, readInt, zzas.CREATOR);
            } else if (c2 == 4) {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                c = SafeParcelReader.m38866w(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzau(str, zzasVar, str2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new zzau[i];
    }
}
