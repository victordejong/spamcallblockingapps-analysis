package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.ads.internal.util.zzs;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfar.class */
public final class zzfar {
    public final zzbis zza;
    public final zzbrx zzb;
    public final zzeli zzc;
    public final zzbdg zzd;
    public final zzbdl zze;
    public final String zzf;
    public final ArrayList<String> zzg;
    public final ArrayList<String> zzh;
    public final zzblv zzi;
    public final zzbdr zzj;
    public final int zzk;
    public final AdManagerAdViewOptions zzl;
    public final PublisherAdViewOptions zzm;
    public final zzbfu zzn;
    public final zzfah zzo;
    public final boolean zzp;
    public final zzbfy zzq;

    public /* synthetic */ zzfar(zzfap zzfapVar, zzfaq zzfaqVar) {
        zzbdl zzbdlVar;
        String str;
        zzbfy zzbfyVar;
        zzbdg zzbdgVar;
        zzbdg zzbdgVar2;
        zzbdg zzbdgVar3;
        zzbdg zzbdgVar4;
        zzbdg zzbdgVar5;
        zzbdg zzbdgVar6;
        zzbdg zzbdgVar7;
        zzbdg zzbdgVar8;
        zzbdg zzbdgVar9;
        zzbdg zzbdgVar10;
        zzbdg zzbdgVar11;
        zzbdg zzbdgVar12;
        zzbdg zzbdgVar13;
        zzbdg zzbdgVar14;
        zzbdg zzbdgVar15;
        zzbdg zzbdgVar16;
        zzbdg zzbdgVar17;
        zzbdg zzbdgVar18;
        zzbdg zzbdgVar19;
        zzbdg zzbdgVar20;
        zzbdg zzbdgVar21;
        zzbdg zzbdgVar22;
        zzbdg zzbdgVar23;
        zzbdg zzbdgVar24;
        zzbis zzbisVar;
        zzbis zzbisVar2;
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2;
        ArrayList arrayList3;
        zzblv zzblvVar;
        zzbdr zzbdrVar;
        int i;
        AdManagerAdViewOptions adManagerAdViewOptions;
        PublisherAdViewOptions publisherAdViewOptions;
        zzbfu zzbfuVar;
        zzbrx zzbrxVar;
        zzfaf zzfafVar;
        boolean z;
        zzeli zzeliVar;
        zzblv zzblvVar2;
        zzblv zzblvVar3;
        zzblv zzblvVar4;
        zzblv zzblvVar5;
        zzbis zzbisVar3;
        boolean z2;
        zzbdlVar = zzfapVar.zzb;
        this.zze = zzbdlVar;
        str = zzfapVar.zzc;
        this.zzf = str;
        zzbfyVar = zzfapVar.zzr;
        this.zzq = zzbfyVar;
        zzbdgVar = zzfapVar.zza;
        int i2 = zzbdgVar.zza;
        zzbdgVar2 = zzfapVar.zza;
        long j = zzbdgVar2.zzb;
        zzbdgVar3 = zzfapVar.zza;
        Bundle bundle = zzbdgVar3.zzc;
        zzbdgVar4 = zzfapVar.zza;
        int i3 = zzbdgVar4.zzd;
        zzbdgVar5 = zzfapVar.zza;
        List<String> list = zzbdgVar5.zze;
        zzbdgVar6 = zzfapVar.zza;
        boolean z3 = zzbdgVar6.zzf;
        zzbdgVar7 = zzfapVar.zza;
        int i4 = zzbdgVar7.zzg;
        zzbdgVar8 = zzfapVar.zza;
        boolean z4 = true;
        if (!zzbdgVar8.zzh) {
            z2 = zzfapVar.zze;
            z4 = z2;
        }
        zzbdgVar9 = zzfapVar.zza;
        String str2 = zzbdgVar9.zzi;
        zzbdgVar10 = zzfapVar.zza;
        zzbio zzbioVar = zzbdgVar10.zzj;
        zzbdgVar11 = zzfapVar.zza;
        Location location = zzbdgVar11.zzk;
        zzbdgVar12 = zzfapVar.zza;
        String str3 = zzbdgVar12.zzl;
        zzbdgVar13 = zzfapVar.zza;
        Bundle bundle2 = zzbdgVar13.zzm;
        zzbdgVar14 = zzfapVar.zza;
        Bundle bundle3 = zzbdgVar14.zzn;
        zzbdgVar15 = zzfapVar.zza;
        List<String> list2 = zzbdgVar15.zzo;
        zzbdgVar16 = zzfapVar.zza;
        String str4 = zzbdgVar16.zzp;
        zzbdgVar17 = zzfapVar.zza;
        String str5 = zzbdgVar17.zzq;
        zzbdgVar18 = zzfapVar.zza;
        boolean z5 = zzbdgVar18.zzr;
        zzbdgVar19 = zzfapVar.zza;
        zzbcx zzbcxVar = zzbdgVar19.zzs;
        zzbdgVar20 = zzfapVar.zza;
        int i5 = zzbdgVar20.zzt;
        zzbdgVar21 = zzfapVar.zza;
        String str6 = zzbdgVar21.zzu;
        zzbdgVar22 = zzfapVar.zza;
        List<String> list3 = zzbdgVar22.zzv;
        zzbdgVar23 = zzfapVar.zza;
        int zze = zzs.zze(zzbdgVar23.zzw);
        zzbdgVar24 = zzfapVar.zza;
        this.zzd = new zzbdg(i2, j, bundle, i3, list, z3, i4, z4, str2, zzbioVar, location, str3, bundle2, bundle3, list2, str4, str5, z5, zzbcxVar, i5, str6, list3, zze, zzbdgVar24.zzx);
        zzbisVar = zzfapVar.zzd;
        if (zzbisVar != null) {
            zzbisVar3 = zzfapVar.zzd;
            zzbisVar2 = zzbisVar3;
        } else {
            zzblvVar4 = zzfapVar.zzh;
            if (zzblvVar4 != null) {
                zzblvVar5 = zzfapVar.zzh;
                zzbisVar2 = zzblvVar5.zzf;
            } else {
                zzbisVar2 = null;
            }
        }
        this.zza = zzbisVar2;
        arrayList = zzfapVar.zzf;
        this.zzg = arrayList;
        arrayList2 = zzfapVar.zzg;
        this.zzh = arrayList2;
        arrayList3 = zzfapVar.zzf;
        if (arrayList3 == null) {
            zzblvVar = null;
        } else {
            zzblvVar2 = zzfapVar.zzh;
            if (zzblvVar2 == null) {
                zzblvVar = new zzblv(new NativeAdOptions.Builder().build());
            } else {
                zzblvVar3 = zzfapVar.zzh;
                zzblvVar = zzblvVar3;
            }
        }
        this.zzi = zzblvVar;
        zzbdrVar = zzfapVar.zzi;
        this.zzj = zzbdrVar;
        i = zzfapVar.zzm;
        this.zzk = i;
        adManagerAdViewOptions = zzfapVar.zzj;
        this.zzl = adManagerAdViewOptions;
        publisherAdViewOptions = zzfapVar.zzk;
        this.zzm = publisherAdViewOptions;
        zzbfuVar = zzfapVar.zzl;
        this.zzn = zzbfuVar;
        zzbrxVar = zzfapVar.zzn;
        this.zzb = zzbrxVar;
        zzfafVar = zzfapVar.zzo;
        this.zzo = new zzfah(zzfafVar, null);
        z = zzfapVar.zzp;
        this.zzp = z;
        zzeliVar = zzfapVar.zzq;
        this.zzc = zzeliVar;
    }

    public final zzbny zza() {
        PublisherAdViewOptions publisherAdViewOptions = this.zzm;
        if (publisherAdViewOptions == null && this.zzl == null) {
            return null;
        }
        return publisherAdViewOptions != null ? publisherAdViewOptions.zzc() : this.zzl.zza();
    }
}
