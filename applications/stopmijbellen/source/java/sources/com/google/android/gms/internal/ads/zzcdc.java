package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
import me.zhanghai.android.materialprogressbar.C3681R;
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "AdRequestInfoParcelCreator")
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdc.class */
public final class zzcdc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcdc> CREATOR = new zzcdd();
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable)
    public final long zzA;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle)
    public final String zzB;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_activityChooserViewStyle)
    public final float zzC;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle)
    public final int zzD;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_alertDialogCenterButtons)
    public final int zzE;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_alertDialogStyle)
    public final boolean zzF;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle)
    public final String zzG;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_borderlessButtonStyle)
    public final boolean zzH;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_buttonBarButtonStyle)
    public final String zzI;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle)
    public final boolean zzJ;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle)
    public final int zzK;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle)
    public final Bundle zzL;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_buttonBarStyle)
    public final String zzM;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_buttonStyle)
    public final zzbjd zzN;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_buttonStyleSmall)
    public final boolean zzO;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_checkboxStyle)
    public final Bundle zzP;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_checkedTextViewStyle)
    public final String zzQ;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorAccent)
    public final String zzR;
    @SafeParcelable.Field(m4805id = 51)
    public final String zzS;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorButtonNormal)
    public final boolean zzT;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorControlActivated)
    public final List<Integer> zzU;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorControlHighlight)
    public final String zzV;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorControlNormal)
    public final List<String> zzW;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorError)
    public final int zzX;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorPrimary)
    public final boolean zzY;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorPrimaryDark)
    public final boolean zzZ;
    @SafeParcelable.Field(m4805id = 1)
    public final int zza;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal)
    public final boolean zzaa;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_controlBackground)
    public final ArrayList<String> zzab;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_dialogCornerRadius)
    public final String zzac;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_dialogTheme)
    public final zzbtz zzad;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_dividerHorizontal)
    public final String zzae;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_dividerVertical)
    public final Bundle zzaf;
    @SafeParcelable.Field(m4805id = 2)
    public final Bundle zzb;
    @SafeParcelable.Field(m4805id = 3)
    public final zzbfd zzc;
    @SafeParcelable.Field(m4805id = 4)
    public final zzbfi zzd;
    @SafeParcelable.Field(m4805id = 5)
    public final String zze;
    @SafeParcelable.Field(m4805id = 6)
    public final ApplicationInfo zzf;
    @SafeParcelable.Field(m4805id = 7)
    public final PackageInfo zzg;
    @SafeParcelable.Field(m4805id = 8)
    public final String zzh;
    @SafeParcelable.Field(m4805id = 9)
    public final String zzi;
    @SafeParcelable.Field(m4805id = 10)
    public final String zzj;
    @SafeParcelable.Field(m4805id = 11)
    public final zzcjf zzk;
    @SafeParcelable.Field(m4805id = 12)
    public final Bundle zzl;
    @SafeParcelable.Field(m4805id = 13)
    public final int zzm;
    @SafeParcelable.Field(m4805id = 14)
    public final List<String> zzn;
    @SafeParcelable.Field(m4805id = 15)
    public final Bundle zzo;
    @SafeParcelable.Field(m4805id = 16)
    public final boolean zzp;
    @SafeParcelable.Field(m4805id = 18)
    public final int zzq;
    @SafeParcelable.Field(m4805id = 19)
    public final int zzr;
    @SafeParcelable.Field(m4805id = 20)
    public final float zzs;
    @SafeParcelable.Field(m4805id = 21)
    public final String zzt;
    @SafeParcelable.Field(m4805id = 25)
    public final long zzu;
    @SafeParcelable.Field(m4805id = 26)
    public final String zzv;
    @SafeParcelable.Field(m4805id = 27)
    public final List<String> zzw;
    @SafeParcelable.Field(m4805id = 28)
    public final String zzx;
    @SafeParcelable.Field(m4805id = 29)
    public final zzbnw zzy;
    @SafeParcelable.Field(m4805id = C3681R.styleable.AppCompatTheme_actionModeTheme)
    public final List<String> zzz;

    @SafeParcelable.Constructor
    public zzcdc(@SafeParcelable.Param(m4804id = 1) int i, @SafeParcelable.Param(m4804id = 2) Bundle bundle, @SafeParcelable.Param(m4804id = 3) zzbfd zzbfdVar, @SafeParcelable.Param(m4804id = 4) zzbfi zzbfiVar, @SafeParcelable.Param(m4804id = 5) String str, @SafeParcelable.Param(m4804id = 6) ApplicationInfo applicationInfo, @SafeParcelable.Param(m4804id = 7) PackageInfo packageInfo, @SafeParcelable.Param(m4804id = 8) String str2, @SafeParcelable.Param(m4804id = 9) String str3, @SafeParcelable.Param(m4804id = 10) String str4, @SafeParcelable.Param(m4804id = 11) zzcjf zzcjfVar, @SafeParcelable.Param(m4804id = 12) Bundle bundle2, @SafeParcelable.Param(m4804id = 13) int i2, @SafeParcelable.Param(m4804id = 14) List<String> list, @SafeParcelable.Param(m4804id = 15) Bundle bundle3, @SafeParcelable.Param(m4804id = 16) boolean z, @SafeParcelable.Param(m4804id = 18) int i3, @SafeParcelable.Param(m4804id = 19) int i4, @SafeParcelable.Param(m4804id = 20) float f, @SafeParcelable.Param(m4804id = 21) String str5, @SafeParcelable.Param(m4804id = 25) long j, @SafeParcelable.Param(m4804id = 26) String str6, @SafeParcelable.Param(m4804id = 27) List<String> list2, @SafeParcelable.Param(m4804id = 28) String str7, @SafeParcelable.Param(m4804id = 29) zzbnw zzbnwVar, @SafeParcelable.Param(m4804id = 30) List<String> list3, @SafeParcelable.Param(m4804id = 31) long j2, @SafeParcelable.Param(m4804id = 33) String str8, @SafeParcelable.Param(m4804id = 34) float f2, @SafeParcelable.Param(m4804id = 40) boolean z2, @SafeParcelable.Param(m4804id = 35) int i5, @SafeParcelable.Param(m4804id = 36) int i6, @SafeParcelable.Param(m4804id = 37) boolean z3, @SafeParcelable.Param(m4804id = 39) String str9, @SafeParcelable.Param(m4804id = 41) String str10, @SafeParcelable.Param(m4804id = 42) boolean z4, @SafeParcelable.Param(m4804id = 43) int i7, @SafeParcelable.Param(m4804id = 44) Bundle bundle4, @SafeParcelable.Param(m4804id = 45) String str11, @SafeParcelable.Param(m4804id = 46) zzbjd zzbjdVar, @SafeParcelable.Param(m4804id = 47) boolean z5, @SafeParcelable.Param(m4804id = 48) Bundle bundle5, @SafeParcelable.Param(m4804id = 49) String str12, @SafeParcelable.Param(m4804id = 50) String str13, @SafeParcelable.Param(m4804id = 51) String str14, @SafeParcelable.Param(m4804id = 52) boolean z6, @SafeParcelable.Param(m4804id = 53) List<Integer> list4, @SafeParcelable.Param(m4804id = 54) String str15, @SafeParcelable.Param(m4804id = 55) List<String> list5, @SafeParcelable.Param(m4804id = 56) int i8, @SafeParcelable.Param(m4804id = 57) boolean z7, @SafeParcelable.Param(m4804id = 58) boolean z8, @SafeParcelable.Param(m4804id = 59) boolean z9, @SafeParcelable.Param(m4804id = 60) ArrayList<String> arrayList, @SafeParcelable.Param(m4804id = 61) String str16, @SafeParcelable.Param(m4804id = 63) zzbtz zzbtzVar, @SafeParcelable.Param(m4804id = 64) String str17, @SafeParcelable.Param(m4804id = 65) Bundle bundle6) {
        this.zza = i;
        this.zzb = bundle;
        this.zzc = zzbfdVar;
        this.zzd = zzbfiVar;
        this.zze = str;
        this.zzf = applicationInfo;
        this.zzg = packageInfo;
        this.zzh = str2;
        this.zzi = str3;
        this.zzj = str4;
        this.zzk = zzcjfVar;
        this.zzl = bundle2;
        this.zzm = i2;
        this.zzn = list;
        this.zzz = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzo = bundle3;
        this.zzp = z;
        this.zzq = i3;
        this.zzr = i4;
        this.zzs = f;
        this.zzt = str5;
        this.zzu = j;
        this.zzv = str6;
        this.zzw = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzx = str7;
        this.zzy = zzbnwVar;
        this.zzA = j2;
        this.zzB = str8;
        this.zzC = f2;
        this.zzH = z2;
        this.zzD = i5;
        this.zzE = i6;
        this.zzF = z3;
        this.zzG = str9;
        this.zzI = str10;
        this.zzJ = z4;
        this.zzK = i7;
        this.zzL = bundle4;
        this.zzM = str11;
        this.zzN = zzbjdVar;
        this.zzO = z5;
        this.zzP = bundle5;
        this.zzQ = str12;
        this.zzR = str13;
        this.zzS = str14;
        this.zzT = z6;
        this.zzU = list4;
        this.zzV = str15;
        this.zzW = list5;
        this.zzX = i8;
        this.zzY = z7;
        this.zzZ = z8;
        this.zzaa = z9;
        this.zzab = arrayList;
        this.zzac = str16;
        this.zzad = zzbtzVar;
        this.zzae = str17;
        this.zzaf = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeBundle(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.zze, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzg, i, false);
        SafeParcelWriter.writeString(parcel, 8, this.zzh, false);
        SafeParcelWriter.writeString(parcel, 9, this.zzi, false);
        SafeParcelWriter.writeString(parcel, 10, this.zzj, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.zzk, i, false);
        SafeParcelWriter.writeBundle(parcel, 12, this.zzl, false);
        SafeParcelWriter.writeInt(parcel, 13, this.zzm);
        SafeParcelWriter.writeStringList(parcel, 14, this.zzn, false);
        SafeParcelWriter.writeBundle(parcel, 15, this.zzo, false);
        SafeParcelWriter.writeBoolean(parcel, 16, this.zzp);
        SafeParcelWriter.writeInt(parcel, 18, this.zzq);
        SafeParcelWriter.writeInt(parcel, 19, this.zzr);
        SafeParcelWriter.writeFloat(parcel, 20, this.zzs);
        SafeParcelWriter.writeString(parcel, 21, this.zzt, false);
        SafeParcelWriter.writeLong(parcel, 25, this.zzu);
        SafeParcelWriter.writeString(parcel, 26, this.zzv, false);
        SafeParcelWriter.writeStringList(parcel, 27, this.zzw, false);
        SafeParcelWriter.writeString(parcel, 28, this.zzx, false);
        SafeParcelWriter.writeParcelable(parcel, 29, this.zzy, i, false);
        SafeParcelWriter.writeStringList(parcel, 30, this.zzz, false);
        SafeParcelWriter.writeLong(parcel, 31, this.zzA);
        SafeParcelWriter.writeString(parcel, 33, this.zzB, false);
        SafeParcelWriter.writeFloat(parcel, 34, this.zzC);
        SafeParcelWriter.writeInt(parcel, 35, this.zzD);
        SafeParcelWriter.writeInt(parcel, 36, this.zzE);
        SafeParcelWriter.writeBoolean(parcel, 37, this.zzF);
        SafeParcelWriter.writeString(parcel, 39, this.zzG, false);
        SafeParcelWriter.writeBoolean(parcel, 40, this.zzH);
        SafeParcelWriter.writeString(parcel, 41, this.zzI, false);
        SafeParcelWriter.writeBoolean(parcel, 42, this.zzJ);
        SafeParcelWriter.writeInt(parcel, 43, this.zzK);
        SafeParcelWriter.writeBundle(parcel, 44, this.zzL, false);
        SafeParcelWriter.writeString(parcel, 45, this.zzM, false);
        SafeParcelWriter.writeParcelable(parcel, 46, this.zzN, i, false);
        SafeParcelWriter.writeBoolean(parcel, 47, this.zzO);
        SafeParcelWriter.writeBundle(parcel, 48, this.zzP, false);
        SafeParcelWriter.writeString(parcel, 49, this.zzQ, false);
        SafeParcelWriter.writeString(parcel, 50, this.zzR, false);
        SafeParcelWriter.writeString(parcel, 51, this.zzS, false);
        SafeParcelWriter.writeBoolean(parcel, 52, this.zzT);
        SafeParcelWriter.writeIntegerList(parcel, 53, this.zzU, false);
        SafeParcelWriter.writeString(parcel, 54, this.zzV, false);
        SafeParcelWriter.writeStringList(parcel, 55, this.zzW, false);
        SafeParcelWriter.writeInt(parcel, 56, this.zzX);
        SafeParcelWriter.writeBoolean(parcel, 57, this.zzY);
        SafeParcelWriter.writeBoolean(parcel, 58, this.zzZ);
        SafeParcelWriter.writeBoolean(parcel, 59, this.zzaa);
        SafeParcelWriter.writeStringList(parcel, 60, this.zzab, false);
        SafeParcelWriter.writeString(parcel, 61, this.zzac, false);
        SafeParcelWriter.writeParcelable(parcel, 63, this.zzad, i, false);
        SafeParcelWriter.writeString(parcel, 64, this.zzae, false);
        SafeParcelWriter.writeBundle(parcel, 65, this.zzaf, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
