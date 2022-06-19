package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
import me.zhanghai.android.materialprogressbar.C3681R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdd.class */
public final class zzcdd implements Parcelable.Creator<zzcdc> {
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v128, types: [long] */
    public static final zzcdc zza(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        char c = 0;
        char c2 = 0;
        Bundle bundle = null;
        zzbfd zzbfdVar = null;
        zzbfi zzbfiVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzcjf zzcjfVar = null;
        Bundle bundle2 = null;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        String str5 = null;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzbnw zzbnwVar = null;
        ArrayList<String> arrayList3 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        Bundle bundle4 = null;
        String str11 = null;
        zzbjd zzbjdVar = null;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        ArrayList<Integer> arrayList4 = null;
        String str15 = null;
        ArrayList<String> arrayList5 = null;
        ArrayList<String> arrayList6 = null;
        String str16 = null;
        zzbtz zzbtzVar = null;
        String str17 = null;
        Bundle bundle6 = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        float f2 = 0.0f;
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
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(readHeader)) {
                case 1:
                    i = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 2:
                    bundle = SafeParcelReader.createBundle(parcel, readHeader);
                    break;
                case 3:
                    zzbfdVar = (zzbfd) SafeParcelReader.createParcelable(parcel, readHeader, zzbfd.CREATOR);
                    break;
                case 4:
                    zzbfiVar = (zzbfi) SafeParcelReader.createParcelable(parcel, readHeader, zzbfi.CREATOR);
                    break;
                case 5:
                    str = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) SafeParcelReader.createParcelable(parcel, readHeader, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) SafeParcelReader.createParcelable(parcel, readHeader, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 9:
                    str3 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 10:
                    str4 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 11:
                    zzcjfVar = (zzcjf) SafeParcelReader.createParcelable(parcel, readHeader, zzcjf.CREATOR);
                    break;
                case 12:
                    bundle2 = SafeParcelReader.createBundle(parcel, readHeader);
                    break;
                case 13:
                    i2 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 14:
                    arrayList = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 15:
                    bundle3 = SafeParcelReader.createBundle(parcel, readHeader);
                    break;
                case 16:
                    z = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                default:
                    SafeParcelReader.skipUnknownField(parcel, readHeader);
                    break;
                case 18:
                    i3 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 19:
                    i4 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case 20:
                    f = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case 21:
                    str5 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 25:
                    c = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case 26:
                    str6 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 27:
                    arrayList2 = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case 28:
                    str7 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 29:
                    zzbnwVar = (zzbnw) SafeParcelReader.createParcelable(parcel, readHeader, zzbnw.CREATOR);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    arrayList3 = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    c2 = SafeParcelReader.readLong(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    str8 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    f2 = SafeParcelReader.readFloat(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    i5 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    i6 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    z3 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    str9 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    z2 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    str10 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    z4 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    i7 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    bundle4 = SafeParcelReader.createBundle(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    str11 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    zzbjdVar = (zzbjd) SafeParcelReader.createParcelable(parcel, readHeader, zzbjd.CREATOR);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    z5 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    bundle5 = SafeParcelReader.createBundle(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    str12 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    str13 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case 51:
                    str14 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    z6 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    arrayList4 = SafeParcelReader.createIntegerList(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    str15 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    arrayList5 = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i8 = SafeParcelReader.readInt(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    z7 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    z8 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    z9 = SafeParcelReader.readBoolean(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    arrayList6 = SafeParcelReader.createStringList(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    str16 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    zzbtzVar = (zzbtz) SafeParcelReader.createParcelable(parcel, readHeader, zzbtz.CREATOR);
                    break;
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    str17 = SafeParcelReader.createString(parcel, readHeader);
                    break;
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    bundle6 = SafeParcelReader.createBundle(parcel, readHeader);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzcdc(i, bundle, zzbfdVar, zzbfiVar, str, applicationInfo, packageInfo, str2, str3, str4, zzcjfVar, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, c, str6, arrayList2, str7, zzbnwVar, arrayList3, c2, str8, f2, z2, i5, i6, z3, str9, str10, z4, i7, bundle4, str11, zzbjdVar, z5, bundle5, str12, str13, str14, z6, arrayList4, str15, arrayList5, i8, z7, z8, z9, arrayList6, str16, zzbtzVar, str17, bundle6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcdc createFromParcel(Parcel parcel) {
        return zza(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcdc[] newArray(int i) {
        return new zzcdc[i];
    }
}
