package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.si */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/si.class */
public final class C12905si implements Parcelable.Creator<zzats> {
    /* JADX WARN: Type inference failed for: r0v75, types: [long] */
    /* JADX WARN: Type inference failed for: r0v79, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzats createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        char c4 = 0;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        zzaue zzaueVar = null;
        String str7 = null;
        String str8 = null;
        zzavy zzavyVar = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        zzatu zzatuVar = null;
        String str9 = null;
        ArrayList<String> arrayList6 = null;
        String str10 = null;
        zzaxn zzaxnVar = null;
        String str11 = null;
        Bundle bundle = null;
        ArrayList<String> arrayList7 = null;
        String str12 = null;
        String str13 = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        int i4 = 0;
        boolean z15 = false;
        boolean z16 = false;
        boolean z17 = false;
        boolean z18 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 3:
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 4:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 5:
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 6:
                    arrayList2 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 7:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\b':
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\t':
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\n':
                    arrayList3 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 11:
                    c3 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '\f':
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '\r':
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 14:
                    c4 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 15:
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 16:
                case 17:
                case 20:
                case 27:
                case '&':
                case ')':
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
                case 18:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 19:
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 21:
                    str6 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 22:
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 23:
                    z4 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 24:
                    z5 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 25:
                    z6 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 26:
                    z7 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 28:
                    zzaueVar = (zzaue) SafeParcelReader.m19143a(parcel, readInt, zzaue.CREATOR);
                    break;
                case 29:
                    str7 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 30:
                    str8 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 31:
                    z8 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case ' ':
                    z9 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '!':
                    zzavyVar = (zzavy) SafeParcelReader.m19143a(parcel, readInt, zzavy.CREATOR);
                    break;
                case '\"':
                    arrayList4 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case '#':
                    arrayList5 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case '$':
                    z10 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '%':
                    zzatuVar = (zzatu) SafeParcelReader.m19143a(parcel, readInt, zzatu.CREATOR);
                    break;
                case '\'':
                    str9 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '(':
                    arrayList6 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case '*':
                    z11 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '+':
                    str10 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case ',':
                    zzaxnVar = (zzaxn) SafeParcelReader.m19143a(parcel, readInt, zzaxn.CREATOR);
                    break;
                case '-':
                    str11 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '.':
                    z12 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '/':
                    z13 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '0':
                    bundle = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case '1':
                    z14 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '2':
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '3':
                    z15 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '4':
                    arrayList7 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case '5':
                    z16 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '6':
                    str12 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '7':
                    str13 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '8':
                    z17 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '9':
                    z18 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzats(i, str, str2, arrayList, i2, arrayList2, c, z, c2, arrayList3, c3, i3, str3, c4, str4, z2, str5, str6, z3, z4, z5, z6, z7, zzaueVar, str7, str8, z8, z9, zzavyVar, arrayList4, arrayList5, z10, zzatuVar, str9, arrayList6, z11, str10, zzaxnVar, str11, z12, z13, bundle, z14, i4, z15, arrayList7, z16, str12, str13, z17, z18);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzats[] newArray(int i) {
        return new zzats[i];
    }
}
