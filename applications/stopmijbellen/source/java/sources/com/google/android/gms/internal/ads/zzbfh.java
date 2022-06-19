package com.google.android.gms.internal.ads;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.query.AdInfo;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.search.SearchAdRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfh.class */
public final class zzbfh {
    public static final zzbfh zza = new zzbfh();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    public final zzbfd zza(Context context, zzbjg zzbjgVar) {
        zzbeu zzbeuVar;
        String str;
        Date zzp = zzbjgVar.zzp();
        ?? time = zzp != null ? zzp.getTime() : true;
        String zzm = zzbjgVar.zzm();
        int zza2 = zzbjgVar.zza();
        Set<String> zzt = zzbjgVar.zzt();
        List unmodifiableList = !zzt.isEmpty() ? Collections.unmodifiableList(new ArrayList(zzt)) : null;
        boolean zzv = zzbjgVar.zzv(context);
        Location zzd = zzbjgVar.zzd();
        Bundle zzg = zzbjgVar.zzg(AdMobAdapter.class);
        AdInfo zzj = zzbjgVar.zzj();
        if (zzj != null) {
            QueryInfo queryInfo = zzj.getQueryInfo();
            zzbeuVar = new zzbeu(zzbjgVar.zzj().getAdString(), queryInfo != null ? queryInfo.zza().zzc() : "");
        } else {
            zzbeuVar = null;
        }
        String zzn = zzbjgVar.zzn();
        SearchAdRequest zzk = zzbjgVar.zzk();
        zzbkm zzbkmVar = zzk != null ? new zzbkm(zzk) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzbgo.zzb();
            str = zzcis.zzl(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean zzu = zzbjgVar.zzu();
        RequestConfiguration zzc = zzbjq.zzf().zzc();
        return new zzbfd(8, time == true ? 1L : 0L, zzg, zza2, unmodifiableList, zzv, Math.max(zzbjgVar.zzc(), zzc.getTagForChildDirectedTreatment()), false, zzn, zzbkmVar, zzd, zzm, zzbjgVar.zzh(), zzbjgVar.zzf(), Collections.unmodifiableList(new ArrayList(zzbjgVar.zzs())), zzbjgVar.zzo(), str, zzu, zzbeuVar, Math.max(-1, zzc.getTagForUnderAgeOfConsent()), (String) Collections.max(Arrays.asList(null, zzc.getMaxAdContentRating()), zzbfg.zza), zzbjgVar.zzq(), zzbjgVar.zzb(), zzbjgVar.zzl());
    }
}
