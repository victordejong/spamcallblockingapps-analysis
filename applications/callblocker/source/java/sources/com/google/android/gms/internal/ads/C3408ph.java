package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.ph */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ph.class */
public final class C3408ph implements Parcelable.Creator<C3409pi> {
    /* JADX WARN: Type inference failed for: r0v144, types: [long] */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /* JADX WARN: Type inference failed for: r0v154, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3409pi createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        int i2 = 0;
        ArrayList<String> arrayList2 = null;
        char c = 0;
        boolean z = false;
        char c2 = 0;
        ArrayList<String> arrayList3 = null;
        char c3 = 0;
        int i3 = 0;
        String str3 = null;
        char c4 = 0;
        String str4 = null;
        boolean z2 = false;
        String str5 = null;
        String str6 = null;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        C3422pv c3422pv = null;
        String str7 = null;
        String str8 = null;
        boolean z8 = false;
        boolean z9 = false;
        C3472rr c3472rr = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        boolean z10 = false;
        C3411pk c3411pk = null;
        boolean z11 = false;
        String str9 = null;
        ArrayList<String> arrayList6 = null;
        boolean z12 = false;
        String str10 = null;
        C3500ss c3500ss = null;
        String str11 = null;
        boolean z13 = false;
        boolean z14 = false;
        Bundle bundle = null;
        boolean z15 = false;
        int i4 = 0;
        boolean z16 = false;
        ArrayList<String> arrayList7 = null;
        boolean z17 = false;
        String str12 = null;
        String str13 = null;
        boolean z18 = false;
        boolean z19 = false;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 4:
                    arrayList = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 5:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 6:
                    arrayList2 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 7:
                    c = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 8:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 9:
                    c2 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 10:
                    arrayList3 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 11:
                    c3 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 12:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 13:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 14:
                    c4 = SafeParcelReader.m13957f(parcel, m13969a);
                    break;
                case 15:
                    str4 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 16:
                case 17:
                case 20:
                case 27:
                case 41:
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
                case 18:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 19:
                    str5 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 21:
                    str6 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 22:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 23:
                    z4 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 24:
                    z5 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 25:
                    z6 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 26:
                    z7 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 28:
                    c3422pv = (C3422pv) SafeParcelReader.m13965a(parcel, m13969a, C3422pv.CREATOR);
                    break;
                case 29:
                    str7 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 30:
                    str8 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 31:
                    z8 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 32:
                    z9 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 33:
                    c3472rr = (C3472rr) SafeParcelReader.m13965a(parcel, m13969a, C3472rr.CREATOR);
                    break;
                case 34:
                    arrayList4 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 35:
                    arrayList5 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 36:
                    z10 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 37:
                    c3411pk = (C3411pk) SafeParcelReader.m13965a(parcel, m13969a, C3411pk.CREATOR);
                    break;
                case 38:
                    z11 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 39:
                    str9 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 40:
                    arrayList6 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 42:
                    z12 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 43:
                    str10 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 44:
                    c3500ss = (C3500ss) SafeParcelReader.m13965a(parcel, m13969a, C3500ss.CREATOR);
                    break;
                case 45:
                    str11 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 46:
                    z13 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 47:
                    z14 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 48:
                    bundle = SafeParcelReader.m13950m(parcel, m13969a);
                    break;
                case 49:
                    z15 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 50:
                    i4 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 51:
                    z16 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 52:
                    arrayList7 = SafeParcelReader.m13946q(parcel, m13969a);
                    break;
                case 53:
                    z17 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 54:
                    str12 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 55:
                    str13 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 56:
                    z18 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 57:
                    z19 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C3409pi(i, str, str2, arrayList, i2, arrayList2, c, z, c2, arrayList3, c3, i3, str3, c4, str4, z2, str5, str6, z3, z4, z5, z6, z7, c3422pv, str7, str8, z8, z9, c3472rr, arrayList4, arrayList5, z10, c3411pk, z11, str9, arrayList6, z12, str10, c3500ss, str11, z13, z14, bundle, z15, i4, z16, arrayList7, z17, str12, str13, z18, z19);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C3409pi[] newArray(int i) {
        return new C3409pi[i];
    }
}
