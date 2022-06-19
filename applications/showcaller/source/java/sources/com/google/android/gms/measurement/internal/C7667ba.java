package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.ba */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ba.class */
public final class C7667ba implements Parcelable.Creator<zzp> {
    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v44, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v56, types: [long] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzp createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
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
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 2:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 3:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 4:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 5:
                    str4 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 6:
                    c = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 7:
                    c2 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 8:
                    str5 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 9:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 10:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 11:
                    c6 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 12:
                    str6 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 13:
                    c3 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 14:
                    c4 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 15:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 16:
                    z3 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 17:
                case 20:
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
                case 18:
                    z4 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 19:
                    str7 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 21:
                    bool = SafeParcelReader.m16950x(parcel, m16983C);
                    break;
                case 22:
                    c5 = SafeParcelReader.m16980F(parcel, m16983C);
                    break;
                case 23:
                    arrayList = SafeParcelReader.m16956r(parcel, m16983C);
                    break;
                case 24:
                    str8 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 25:
                    str9 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzp(str, str2, str3, str4, c, c2, str5, z, z2, c6, str6, c3, c4, i, z3, z4, str7, bool, c5, arrayList, str8, str9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzp[] newArray(int i) {
        return new zzp[i];
    }
}
