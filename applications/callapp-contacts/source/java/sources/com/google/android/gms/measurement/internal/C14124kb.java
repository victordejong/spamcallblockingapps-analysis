package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.kb */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/kb.class */
public final class C14124kb implements Parcelable.Creator<zzp> {
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v80, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzp createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        char c4 = 0;
        char c5 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        String str8 = null;
        String str9 = "";
        char c6 = 0;
        boolean z = true;
        boolean z2 = false;
        int i = 0;
        boolean z3 = true;
        boolean z4 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 5:
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 7:
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\b':
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\t':
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\n':
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 11:
                    c6 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\f':
                    str6 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\r':
                    c3 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 14:
                    c4 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 15:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 16:
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 17:
                case 20:
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
                case 18:
                    z4 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 19:
                    str7 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 21:
                    int m19145a = SafeParcelReader.m19145a(parcel, readInt);
                    if (m19145a != 0) {
                        SafeParcelReader.m19141b(parcel, m19145a, 4);
                        bool = Boolean.valueOf(parcel.readInt() != 0);
                        break;
                    } else {
                        bool = null;
                        break;
                    }
                case 22:
                    c5 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 23:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 24:
                    str8 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 25:
                    str9 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzp(str, str2, str3, str4, c, c2, str5, z, z2, c6, str6, c3, c4, i, z3, z4, str7, bool, c5, arrayList, str8, str9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzp[] newArray(int i) {
        return new zzp[i];
    }
}
