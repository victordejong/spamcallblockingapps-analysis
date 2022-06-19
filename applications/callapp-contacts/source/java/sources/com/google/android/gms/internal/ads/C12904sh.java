package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.ads.sh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sh.class */
public final class C12904sh implements Parcelable.Creator<zzatq> {
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatq createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        char c2 = 0;
        int i = 0;
        Bundle bundle = null;
        zzvq zzvqVar = null;
        zzvt zzvtVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzbar zzbarVar = null;
        Bundle bundle2 = null;
        int i2 = 0;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzaei zzaeiVar = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        float f2 = 0.0f;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        String str9 = null;
        String str10 = null;
        boolean z4 = false;
        int i7 = 0;
        Bundle bundle4 = null;
        String str11 = null;
        zzzj zzzjVar = null;
        boolean z5 = false;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        boolean z6 = false;
        ArrayList arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        int i8 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        zzajy zzajyVar = null;
        String str17 = null;
        Bundle bundle6 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 2:
                    bundle = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case 3:
                    zzvqVar = (zzvq) SafeParcelReader.m19143a(parcel, readInt, zzvq.CREATOR);
                    break;
                case 4:
                    zzvtVar = (zzvt) SafeParcelReader.m19143a(parcel, readInt, zzvt.CREATOR);
                    break;
                case 5:
                    str = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m19143a(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) SafeParcelReader.m19143a(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case '\b':
                    str2 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\t':
                    str3 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\n':
                    str4 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 11:
                    zzbarVar = (zzbar) SafeParcelReader.m19143a(parcel, readInt, zzbar.CREATOR);
                    break;
                case '\f':
                    bundle2 = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case '\r':
                    i2 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 14:
                    arrayList = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 15:
                    bundle3 = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case 16:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case ' ':
                case '&':
                case '>':
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
                case 18:
                    i3 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 19:
                    i4 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case 20:
                    f = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case 21:
                    str5 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 25:
                    c = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case 26:
                    str6 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 27:
                    arrayList2 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 28:
                    str7 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 29:
                    zzaeiVar = (zzaei) SafeParcelReader.m19143a(parcel, readInt, zzaei.CREATOR);
                    break;
                case 30:
                    arrayList3 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case 31:
                    c2 = SafeParcelReader.m19135f(parcel, readInt);
                    break;
                case '!':
                    str8 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '\"':
                    f2 = SafeParcelReader.m19132i(parcel, readInt);
                    break;
                case '#':
                    i5 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '$':
                    i6 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '%':
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '\'':
                    str9 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '(':
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case ')':
                    str10 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '*':
                    z4 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '+':
                    i7 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case ',':
                    bundle4 = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case '-':
                    str11 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '.':
                    zzzjVar = (zzzj) SafeParcelReader.m19143a(parcel, readInt, zzzj.CREATOR);
                    break;
                case '/':
                    z5 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '0':
                    bundle5 = SafeParcelReader.m19126o(parcel, readInt);
                    break;
                case '1':
                    str12 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '2':
                    str13 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '3':
                    str14 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '4':
                    z6 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '5':
                    int m19145a = SafeParcelReader.m19145a(parcel, readInt);
                    int dataPosition = parcel.dataPosition();
                    if (m19145a == 0) {
                        arrayList4 = null;
                        break;
                    } else {
                        arrayList4 = new ArrayList();
                        int readInt2 = parcel.readInt();
                        for (int i9 = 0; i9 < readInt2; i9++) {
                            arrayList4.add(Integer.valueOf(parcel.readInt()));
                        }
                        parcel.setDataPosition(dataPosition + m19145a);
                        break;
                    }
                case '6':
                    str15 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '7':
                    arrayList5 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case '8':
                    i8 = SafeParcelReader.m19136e(parcel, readInt);
                    break;
                case '9':
                    z7 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case ':':
                    z8 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case ';':
                    z9 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case '<':
                    arrayList6 = SafeParcelReader.m19120u(parcel, readInt);
                    break;
                case '=':
                    str16 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case '?':
                    zzajyVar = (zzajy) SafeParcelReader.m19143a(parcel, readInt, zzajy.CREATOR);
                    break;
                case '@':
                    str17 = SafeParcelReader.m19128m(parcel, readInt);
                    break;
                case 'A':
                    bundle6 = SafeParcelReader.m19126o(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzatq(i, bundle, zzvqVar, zzvtVar, str, applicationInfo, packageInfo, str2, str3, str4, zzbarVar, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, c, str6, arrayList2, str7, zzaeiVar, arrayList3, c2, str8, f2, z2, i5, i6, z3, str9, str10, z4, i7, bundle4, str11, zzzjVar, z5, bundle5, str12, str13, str14, z6, arrayList4, str15, arrayList5, i8, z7, z8, z9, arrayList6, str16, zzajyVar, str17, bundle6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzatq[] newArray(int i) {
        return new zzatq[i];
    }
}
