package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/r.class */
public final class r implements Parcelable.Creator<zzas> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(zzas zzasVar, Parcel parcel, int i) {
        int a2 = a.a(parcel, 20293);
        a.a(parcel, 2, zzasVar.zza, false);
        a.a(parcel, 3, zzasVar.zzb, i, false);
        a.a(parcel, 4, zzasVar.zzc, false);
        a.a(parcel, 5, zzasVar.zzd);
        a.b(parcel, a2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzas createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        zzaq zzaqVar = null;
        String str2 = null;
        long j = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 3) {
                zzaqVar = (zzaq) SafeParcelReader.a(parcel, readInt, zzaq.CREATOR);
            } else if (c2 == 4) {
                str2 = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                j = SafeParcelReader.f(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzas(str, zzaqVar, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas[] newArray(int i) {
        return new zzas[i];
    }
}
