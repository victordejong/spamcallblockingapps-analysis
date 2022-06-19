package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcaw.class */
public final class zzcaw implements Parcelable.Creator<zzcav> {
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    public static final zzcav zza(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 0;
        char c2 = 0;
        float f = 0.0f;
        float f2 = 0.0f;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        int i7 = 0;
        boolean z5 = false;
        boolean z6 = false;
        int i8 = 0;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        Bundle bundle = null;
        zzbdg zzbdgVar = null;
        zzbdl zzbdlVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzcgz zzcgzVar = null;
        Bundle bundle2 = null;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzblv zzblvVar = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Bundle bundle4 = null;
        String str11 = null;
        zzbhg zzbhgVar = null;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        ArrayList<Integer> arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        zzbrx zzbrxVar = null;
        String str17 = null;
        Bundle bundle6 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    bundle = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case 3:
                    zzbdgVar = (zzbdg) SafeParcelReader.m38880i(parcel, readInt, zzbdg.CREATOR);
                    break;
                case 4:
                    zzbdlVar = (zzbdl) SafeParcelReader.m38880i(parcel, readInt, zzbdl.CREATOR);
                    break;
                case 5:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.m38880i(parcel, readInt, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) SafeParcelReader.m38880i(parcel, readInt, PackageInfo.CREATOR);
                    break;
                case '\b':
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\t':
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\n':
                    str4 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 11:
                    zzcgzVar = (zzcgz) SafeParcelReader.m38880i(parcel, readInt, zzcgz.CREATOR);
                    break;
                case '\f':
                    bundle2 = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case '\r':
                    i2 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 14:
                    arrayList = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 15:
                    bundle3 = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case 16:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case ' ':
                case '&':
                case '>':
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
                case 18:
                    i3 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 19:
                    i4 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 20:
                    f = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case 21:
                    str5 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 25:
                    c = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case 26:
                    str6 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 27:
                    arrayList2 = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 28:
                    str7 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 29:
                    zzblvVar = (zzblv) SafeParcelReader.m38880i(parcel, readInt, zzblv.CREATOR);
                    break;
                case 30:
                    arrayList3 = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case 31:
                    c2 = SafeParcelReader.m38866w(parcel, readInt);
                    break;
                case '!':
                    str8 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\"':
                    f2 = SafeParcelReader.m38870s(parcel, readInt);
                    break;
                case '#':
                    i5 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '$':
                    i6 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '%':
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '\'':
                    str9 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '(':
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case ')':
                    str10 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '*':
                    z4 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '+':
                    i7 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case ',':
                    bundle4 = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case '-':
                    str11 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '.':
                    zzbhgVar = (zzbhg) SafeParcelReader.m38880i(parcel, readInt, zzbhg.CREATOR);
                    break;
                case '/':
                    z5 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '0':
                    bundle5 = SafeParcelReader.m38886c(parcel, readInt);
                    break;
                case '1':
                    str12 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '2':
                    str13 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '3':
                    str14 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '4':
                    z6 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '5':
                    arrayList4 = SafeParcelReader.m38882g(parcel, readInt);
                    break;
                case '6':
                    str15 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '7':
                    arrayList5 = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case '8':
                    i8 = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case '9':
                    z7 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case ':':
                    z8 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case ';':
                    z9 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case '<':
                    arrayList6 = SafeParcelReader.m38877l(parcel, readInt);
                    break;
                case '=':
                    str16 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '?':
                    zzbrxVar = (zzbrx) SafeParcelReader.m38880i(parcel, readInt, zzbrx.CREATOR);
                    break;
                case '@':
                    str17 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case 'A':
                    bundle6 = SafeParcelReader.m38886c(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzcav(i, bundle, zzbdgVar, zzbdlVar, str, applicationInfo, packageInfo, str2, str3, str4, zzcgzVar, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, c, str6, arrayList2, str7, zzblvVar, arrayList3, c2, str8, f2, z2, i5, i6, z3, str9, str10, z4, i7, bundle4, str11, zzbhgVar, z5, bundle5, str12, str13, str14, z6, arrayList4, str15, arrayList5, i8, z7, z8, z9, arrayList6, str16, zzbrxVar, str17, bundle6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcav createFromParcel(Parcel parcel) {
        return zza(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcav[] newArray(int i) {
        return new zzcav[i];
    }
}
