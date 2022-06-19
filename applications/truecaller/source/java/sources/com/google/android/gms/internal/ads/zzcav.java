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
@SafeParcelable.Class
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcav.class */
public final class zzcav extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcav> CREATOR = new zzcaw();
    @SafeParcelable.Field
    public final long zzA;
    @SafeParcelable.Field
    public final String zzB;
    @SafeParcelable.Field
    public final float zzC;
    @SafeParcelable.Field
    public final int zzD;
    @SafeParcelable.Field
    public final int zzE;
    @SafeParcelable.Field
    public final boolean zzF;
    @SafeParcelable.Field
    public final String zzG;
    @SafeParcelable.Field
    public final boolean zzH;
    @SafeParcelable.Field
    public final String zzI;
    @SafeParcelable.Field
    public final boolean zzJ;
    @SafeParcelable.Field
    public final int zzK;
    @SafeParcelable.Field
    public final Bundle zzL;
    @SafeParcelable.Field
    public final String zzM;
    @SafeParcelable.Field
    public final zzbhg zzN;
    @SafeParcelable.Field
    public final boolean zzO;
    @SafeParcelable.Field
    public final Bundle zzP;
    @SafeParcelable.Field
    public final String zzQ;
    @SafeParcelable.Field
    public final String zzR;
    @SafeParcelable.Field
    public final String zzS;
    @SafeParcelable.Field
    public final boolean zzT;
    @SafeParcelable.Field
    public final List<Integer> zzU;
    @SafeParcelable.Field
    public final String zzV;
    @SafeParcelable.Field
    public final List<String> zzW;
    @SafeParcelable.Field
    public final int zzX;
    @SafeParcelable.Field
    public final boolean zzY;
    @SafeParcelable.Field
    public final boolean zzZ;
    @SafeParcelable.Field
    public final int zza;
    @SafeParcelable.Field
    public final boolean zzaa;
    @SafeParcelable.Field
    public final ArrayList<String> zzab;
    @SafeParcelable.Field
    public final String zzac;
    @SafeParcelable.Field
    public final zzbrx zzad;
    @SafeParcelable.Field
    public final String zzae;
    @SafeParcelable.Field
    public final Bundle zzaf;
    @SafeParcelable.Field
    public final Bundle zzb;
    @SafeParcelable.Field
    public final zzbdg zzc;
    @SafeParcelable.Field
    public final zzbdl zzd;
    @SafeParcelable.Field
    public final String zze;
    @SafeParcelable.Field
    public final ApplicationInfo zzf;
    @SafeParcelable.Field
    public final PackageInfo zzg;
    @SafeParcelable.Field
    public final String zzh;
    @SafeParcelable.Field
    public final String zzi;
    @SafeParcelable.Field
    public final String zzj;
    @SafeParcelable.Field
    public final zzcgz zzk;
    @SafeParcelable.Field
    public final Bundle zzl;
    @SafeParcelable.Field
    public final int zzm;
    @SafeParcelable.Field
    public final List<String> zzn;
    @SafeParcelable.Field
    public final Bundle zzo;
    @SafeParcelable.Field
    public final boolean zzp;
    @SafeParcelable.Field
    public final int zzq;
    @SafeParcelable.Field
    public final int zzr;
    @SafeParcelable.Field
    public final float zzs;
    @SafeParcelable.Field
    public final String zzt;
    @SafeParcelable.Field
    public final long zzu;
    @SafeParcelable.Field
    public final String zzv;
    @SafeParcelable.Field
    public final List<String> zzw;
    @SafeParcelable.Field
    public final String zzx;
    @SafeParcelable.Field
    public final zzblv zzy;
    @SafeParcelable.Field
    public final List<String> zzz;

    @SafeParcelable.Constructor
    public zzcav(@SafeParcelable.Param(id = 1) int i, @SafeParcelable.Param(id = 2) Bundle bundle, @SafeParcelable.Param(id = 3) zzbdg zzbdgVar, @SafeParcelable.Param(id = 4) zzbdl zzbdlVar, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) ApplicationInfo applicationInfo, @SafeParcelable.Param(id = 7) PackageInfo packageInfo, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) String str3, @SafeParcelable.Param(id = 10) String str4, @SafeParcelable.Param(id = 11) zzcgz zzcgzVar, @SafeParcelable.Param(id = 12) Bundle bundle2, @SafeParcelable.Param(id = 13) int i2, @SafeParcelable.Param(id = 14) List<String> list, @SafeParcelable.Param(id = 15) Bundle bundle3, @SafeParcelable.Param(id = 16) boolean z, @SafeParcelable.Param(id = 18) int i3, @SafeParcelable.Param(id = 19) int i4, @SafeParcelable.Param(id = 20) float f, @SafeParcelable.Param(id = 21) String str5, @SafeParcelable.Param(id = 25) long j, @SafeParcelable.Param(id = 26) String str6, @SafeParcelable.Param(id = 27) List<String> list2, @SafeParcelable.Param(id = 28) String str7, @SafeParcelable.Param(id = 29) zzblv zzblvVar, @SafeParcelable.Param(id = 30) List<String> list3, @SafeParcelable.Param(id = 31) long j2, @SafeParcelable.Param(id = 33) String str8, @SafeParcelable.Param(id = 34) float f2, @SafeParcelable.Param(id = 40) boolean z2, @SafeParcelable.Param(id = 35) int i5, @SafeParcelable.Param(id = 36) int i6, @SafeParcelable.Param(id = 37) boolean z3, @SafeParcelable.Param(id = 39) String str9, @SafeParcelable.Param(id = 41) String str10, @SafeParcelable.Param(id = 42) boolean z4, @SafeParcelable.Param(id = 43) int i7, @SafeParcelable.Param(id = 44) Bundle bundle4, @SafeParcelable.Param(id = 45) String str11, @SafeParcelable.Param(id = 46) zzbhg zzbhgVar, @SafeParcelable.Param(id = 47) boolean z5, @SafeParcelable.Param(id = 48) Bundle bundle5, @SafeParcelable.Param(id = 49) String str12, @SafeParcelable.Param(id = 50) String str13, @SafeParcelable.Param(id = 51) String str14, @SafeParcelable.Param(id = 52) boolean z6, @SafeParcelable.Param(id = 53) List<Integer> list4, @SafeParcelable.Param(id = 54) String str15, @SafeParcelable.Param(id = 55) List<String> list5, @SafeParcelable.Param(id = 56) int i8, @SafeParcelable.Param(id = 57) boolean z7, @SafeParcelable.Param(id = 58) boolean z8, @SafeParcelable.Param(id = 59) boolean z9, @SafeParcelable.Param(id = 60) ArrayList<String> arrayList, @SafeParcelable.Param(id = 61) String str16, @SafeParcelable.Param(id = 63) zzbrx zzbrxVar, @SafeParcelable.Param(id = 64) String str17, @SafeParcelable.Param(id = 65) Bundle bundle6) {
        this.zza = i;
        this.zzb = bundle;
        this.zzc = zzbdgVar;
        this.zzd = zzbdlVar;
        this.zze = str;
        this.zzf = applicationInfo;
        this.zzg = packageInfo;
        this.zzh = str2;
        this.zzi = str3;
        this.zzj = str4;
        this.zzk = zzcgzVar;
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
        this.zzy = zzblvVar;
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
        this.zzN = zzbhgVar;
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
        this.zzad = zzbrxVar;
        this.zzae = str17;
        this.zzaf = bundle6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m38841v = SafeParcelWriter.m38841v(parcel, 20293);
        int i2 = this.zza;
        parcel.writeInt(262145);
        parcel.writeInt(i2);
        SafeParcelWriter.m38860c(parcel, 2, this.zzb, false);
        SafeParcelWriter.m38847p(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.m38847p(parcel, 4, this.zzd, i, false);
        SafeParcelWriter.m38846q(parcel, 5, this.zze, false);
        SafeParcelWriter.m38847p(parcel, 6, this.zzf, i, false);
        SafeParcelWriter.m38847p(parcel, 7, this.zzg, i, false);
        SafeParcelWriter.m38846q(parcel, 8, this.zzh, false);
        SafeParcelWriter.m38846q(parcel, 9, this.zzi, false);
        SafeParcelWriter.m38846q(parcel, 10, this.zzj, false);
        SafeParcelWriter.m38847p(parcel, 11, this.zzk, i, false);
        SafeParcelWriter.m38860c(parcel, 12, this.zzl, false);
        int i3 = this.zzm;
        parcel.writeInt(262157);
        parcel.writeInt(i3);
        SafeParcelWriter.m38844s(parcel, 14, this.zzn, false);
        SafeParcelWriter.m38860c(parcel, 15, this.zzo, false);
        boolean z = this.zzp;
        parcel.writeInt(262160);
        parcel.writeInt(z ? 1 : 0);
        int i4 = this.zzq;
        parcel.writeInt(262162);
        parcel.writeInt(i4);
        int i5 = this.zzr;
        parcel.writeInt(262163);
        parcel.writeInt(i5);
        float f = this.zzs;
        parcel.writeInt(262164);
        parcel.writeFloat(f);
        SafeParcelWriter.m38846q(parcel, 21, this.zzt, false);
        long j = this.zzu;
        parcel.writeInt(524313);
        parcel.writeLong(j);
        SafeParcelWriter.m38846q(parcel, 26, this.zzv, false);
        SafeParcelWriter.m38844s(parcel, 27, this.zzw, false);
        SafeParcelWriter.m38846q(parcel, 28, this.zzx, false);
        SafeParcelWriter.m38847p(parcel, 29, this.zzy, i, false);
        SafeParcelWriter.m38844s(parcel, 30, this.zzz, false);
        long j2 = this.zzA;
        parcel.writeInt(524319);
        parcel.writeLong(j2);
        SafeParcelWriter.m38846q(parcel, 33, this.zzB, false);
        float f2 = this.zzC;
        parcel.writeInt(262178);
        parcel.writeFloat(f2);
        int i6 = this.zzD;
        parcel.writeInt(262179);
        parcel.writeInt(i6);
        int i7 = this.zzE;
        parcel.writeInt(262180);
        parcel.writeInt(i7);
        boolean z2 = this.zzF;
        parcel.writeInt(262181);
        parcel.writeInt(z2 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 39, this.zzG, false);
        boolean z3 = this.zzH;
        parcel.writeInt(262184);
        parcel.writeInt(z3 ? 1 : 0);
        SafeParcelWriter.m38846q(parcel, 41, this.zzI, false);
        boolean z4 = this.zzJ;
        parcel.writeInt(262186);
        parcel.writeInt(z4 ? 1 : 0);
        int i8 = this.zzK;
        parcel.writeInt(262187);
        parcel.writeInt(i8);
        SafeParcelWriter.m38860c(parcel, 44, this.zzL, false);
        SafeParcelWriter.m38846q(parcel, 45, this.zzM, false);
        SafeParcelWriter.m38847p(parcel, 46, this.zzN, i, false);
        boolean z5 = this.zzO;
        parcel.writeInt(262191);
        parcel.writeInt(z5 ? 1 : 0);
        SafeParcelWriter.m38860c(parcel, 48, this.zzP, false);
        SafeParcelWriter.m38846q(parcel, 49, this.zzQ, false);
        SafeParcelWriter.m38846q(parcel, 50, this.zzR, false);
        SafeParcelWriter.m38846q(parcel, 51, this.zzS, false);
        boolean z6 = this.zzT;
        parcel.writeInt(262196);
        parcel.writeInt(z6 ? 1 : 0);
        SafeParcelWriter.m38851l(parcel, 53, this.zzU, false);
        SafeParcelWriter.m38846q(parcel, 54, this.zzV, false);
        SafeParcelWriter.m38844s(parcel, 55, this.zzW, false);
        int i9 = this.zzX;
        parcel.writeInt(262200);
        parcel.writeInt(i9);
        boolean z7 = this.zzY;
        parcel.writeInt(262201);
        parcel.writeInt(z7 ? 1 : 0);
        boolean z8 = this.zzZ;
        parcel.writeInt(262202);
        parcel.writeInt(z8 ? 1 : 0);
        boolean z9 = this.zzaa;
        parcel.writeInt(262203);
        parcel.writeInt(z9 ? 1 : 0);
        SafeParcelWriter.m38844s(parcel, 60, this.zzab, false);
        SafeParcelWriter.m38846q(parcel, 61, this.zzac, false);
        SafeParcelWriter.m38847p(parcel, 63, this.zzad, i, false);
        SafeParcelWriter.m38846q(parcel, 64, this.zzae, false);
        SafeParcelWriter.m38860c(parcel, 65, this.zzaf, false);
        SafeParcelWriter.m38840w(parcel, m38841v);
    }
}
