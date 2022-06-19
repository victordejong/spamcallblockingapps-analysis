package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.C12050a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.measurement.internal.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/r.class */
public final class C14140r implements Parcelable.Creator<zzas> {
    /* renamed from: a */
    public static void m11513a(zzas zzasVar, Parcel parcel, int i) {
        int m19116a = C12050a.m19116a(parcel, 20293);
        C12050a.m19104a(parcel, 2, zzasVar.zza, false);
        C12050a.m19107a(parcel, 3, zzasVar.zzb, i, false);
        C12050a.m19104a(parcel, 4, zzasVar.zzc, false);
        C12050a.m19111a(parcel, 5, zzasVar.zzd);
        C12050a.m19095b(parcel, m19116a);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzas createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        zzaq zzaqVar = null;
        String str2 = null;
        char c = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c2 == 3) {
                zzaqVar = (zzaq) SafeParcelReader.m19143a(parcel, readInt, zzaq.CREATOR);
            } else if (c2 == 4) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                c = SafeParcelReader.m19135f(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzas(str, zzaqVar, str2, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzas[] newArray(int i) {
        return new zzas[i];
    }
}
