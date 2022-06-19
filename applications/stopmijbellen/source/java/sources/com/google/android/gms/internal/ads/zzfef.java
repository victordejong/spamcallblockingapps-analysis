package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.util.zzt;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfef.class */
public final class zzfef {
    public final zzbkq zza;
    public final zzbtz zzb;
    public final zzeox zzc;
    public final zzbfd zzd;
    public final zzbfi zze;
    public final String zzf;
    public final ArrayList<String> zzg;
    public final ArrayList<String> zzh;
    public final zzbnw zzi;
    public final zzbfo zzj;
    public final int zzk;
    public final AdManagerAdViewOptions zzl;
    public final PublisherAdViewOptions zzm;
    public final zzbhr zzn;
    public final zzfdv zzo;
    public final boolean zzp;
    public final zzbhv zzq;

    public /* synthetic */ zzfef(zzfed zzfedVar, zzfee zzfeeVar) {
        zzbfi zzbfiVar;
        String str;
        zzbhv zzbhvVar;
        zzbfd zzbfdVar;
        zzbfd zzbfdVar2;
        zzbfd zzbfdVar3;
        zzbfd zzbfdVar4;
        zzbfd zzbfdVar5;
        zzbfd zzbfdVar6;
        zzbfd zzbfdVar7;
        zzbfd zzbfdVar8;
        zzbfd zzbfdVar9;
        zzbfd zzbfdVar10;
        zzbfd zzbfdVar11;
        zzbfd zzbfdVar12;
        zzbfd zzbfdVar13;
        zzbfd zzbfdVar14;
        zzbfd zzbfdVar15;
        zzbfd zzbfdVar16;
        zzbfd zzbfdVar17;
        zzbfd zzbfdVar18;
        zzbfd zzbfdVar19;
        zzbfd zzbfdVar20;
        zzbfd zzbfdVar21;
        zzbfd zzbfdVar22;
        zzbfd zzbfdVar23;
        zzbfd zzbfdVar24;
        zzbkq zzbkqVar;
        zzbkq zzbkqVar2;
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2;
        ArrayList arrayList3;
        zzbnw zzbnwVar;
        zzbfo zzbfoVar;
        int i;
        AdManagerAdViewOptions adManagerAdViewOptions;
        PublisherAdViewOptions publisherAdViewOptions;
        zzbhr zzbhrVar;
        zzbtz zzbtzVar;
        zzfdt zzfdtVar;
        boolean z;
        zzeox zzeoxVar;
        zzbnw zzbnwVar2;
        zzbnw zzbnwVar3;
        zzbnw zzbnwVar4;
        zzbnw zzbnwVar5;
        zzbkq zzbkqVar3;
        boolean z2;
        zzbfiVar = zzfedVar.zzb;
        this.zze = zzbfiVar;
        str = zzfedVar.zzc;
        this.zzf = str;
        zzbhvVar = zzfedVar.zzr;
        this.zzq = zzbhvVar;
        zzbfdVar = zzfedVar.zza;
        int i2 = zzbfdVar.zza;
        zzbfdVar2 = zzfedVar.zza;
        long j = zzbfdVar2.zzb;
        zzbfdVar3 = zzfedVar.zza;
        Bundle bundle = zzbfdVar3.zzc;
        zzbfdVar4 = zzfedVar.zza;
        int i3 = zzbfdVar4.zzd;
        zzbfdVar5 = zzfedVar.zza;
        List<String> list = zzbfdVar5.zze;
        zzbfdVar6 = zzfedVar.zza;
        boolean z3 = zzbfdVar6.zzf;
        zzbfdVar7 = zzfedVar.zza;
        int i4 = zzbfdVar7.zzg;
        zzbfdVar8 = zzfedVar.zza;
        boolean z4 = true;
        if (!zzbfdVar8.zzh) {
            z2 = zzfedVar.zze;
            z4 = z2;
        }
        zzbfdVar9 = zzfedVar.zza;
        String str2 = zzbfdVar9.zzi;
        zzbfdVar10 = zzfedVar.zza;
        zzbkm zzbkmVar = zzbfdVar10.zzj;
        zzbfdVar11 = zzfedVar.zza;
        Location location = zzbfdVar11.zzk;
        zzbfdVar12 = zzfedVar.zza;
        String str3 = zzbfdVar12.zzl;
        zzbfdVar13 = zzfedVar.zza;
        Bundle bundle2 = zzbfdVar13.zzm;
        zzbfdVar14 = zzfedVar.zza;
        Bundle bundle3 = zzbfdVar14.zzn;
        zzbfdVar15 = zzfedVar.zza;
        List<String> list2 = zzbfdVar15.zzo;
        zzbfdVar16 = zzfedVar.zza;
        String str4 = zzbfdVar16.zzp;
        zzbfdVar17 = zzfedVar.zza;
        String str5 = zzbfdVar17.zzq;
        zzbfdVar18 = zzfedVar.zza;
        boolean z5 = zzbfdVar18.zzr;
        zzbfdVar19 = zzfedVar.zza;
        zzbeu zzbeuVar = zzbfdVar19.zzs;
        zzbfdVar20 = zzfedVar.zza;
        int i5 = zzbfdVar20.zzt;
        zzbfdVar21 = zzfedVar.zza;
        String str6 = zzbfdVar21.zzu;
        zzbfdVar22 = zzfedVar.zza;
        List<String> list3 = zzbfdVar22.zzv;
        zzbfdVar23 = zzfedVar.zza;
        int zza = zzt.zza(zzbfdVar23.zzw);
        zzbfdVar24 = zzfedVar.zza;
        this.zzd = new zzbfd(i2, j, bundle, i3, list, z3, i4, z4, str2, zzbkmVar, location, str3, bundle2, bundle3, list2, str4, str5, z5, zzbeuVar, i5, str6, list3, zza, zzbfdVar24.zzx);
        zzbkqVar = zzfedVar.zzd;
        if (zzbkqVar != null) {
            zzbkqVar3 = zzfedVar.zzd;
            zzbkqVar2 = zzbkqVar3;
        } else {
            zzbnwVar4 = zzfedVar.zzh;
            if (zzbnwVar4 != null) {
                zzbnwVar5 = zzfedVar.zzh;
                zzbkqVar2 = zzbnwVar5.zzf;
            } else {
                zzbkqVar2 = null;
            }
        }
        this.zza = zzbkqVar2;
        arrayList = zzfedVar.zzf;
        this.zzg = arrayList;
        arrayList2 = zzfedVar.zzg;
        this.zzh = arrayList2;
        arrayList3 = zzfedVar.zzf;
        if (arrayList3 == null) {
            zzbnwVar = null;
        } else {
            zzbnwVar2 = zzfedVar.zzh;
            if (zzbnwVar2 == null) {
                zzbnwVar = new zzbnw(new NativeAdOptions.Builder().build());
            } else {
                zzbnwVar3 = zzfedVar.zzh;
                zzbnwVar = zzbnwVar3;
            }
        }
        this.zzi = zzbnwVar;
        zzbfoVar = zzfedVar.zzi;
        this.zzj = zzbfoVar;
        i = zzfedVar.zzm;
        this.zzk = i;
        adManagerAdViewOptions = zzfedVar.zzj;
        this.zzl = adManagerAdViewOptions;
        publisherAdViewOptions = zzfedVar.zzk;
        this.zzm = publisherAdViewOptions;
        zzbhrVar = zzfedVar.zzl;
        this.zzn = zzbhrVar;
        zzbtzVar = zzfedVar.zzn;
        this.zzb = zzbtzVar;
        zzfdtVar = zzfedVar.zzo;
        this.zzo = new zzfdv(zzfdtVar, null);
        z = zzfedVar.zzp;
        this.zzp = z;
        zzeoxVar = zzfedVar.zzq;
        this.zzc = zzeoxVar;
    }

    public final zzbpz zza() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzm;
        if (publisherAdViewOptions == null && this.zzl == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.zzb() : this.zzl.zza();
    }
}
