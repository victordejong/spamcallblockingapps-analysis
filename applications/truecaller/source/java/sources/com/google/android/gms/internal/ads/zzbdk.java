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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdk.class */
public final class zzbdk {
    public static final zzbdk zza = new zzbdk();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r32v0 */
    /* JADX WARN: Type inference failed for: r32v1 */
    /* JADX WARN: Type inference failed for: r32v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    public final zzbdg zza(Context context, zzbhj zzbhjVar) {
        zzbcx zzbcxVar;
        String str;
        Date zza2 = zzbhjVar.zza();
        ?? time = zza2 != null ? zza2.getTime() : true;
        String zzb = zzbhjVar.zzb();
        int zzd = zzbhjVar.zzd();
        Set<String> zze = zzbhjVar.zze();
        List unmodifiableList = !zze.isEmpty() ? Collections.unmodifiableList(new ArrayList(zze)) : null;
        boolean zzm = zzbhjVar.zzm(context);
        Location zzf = zzbhjVar.zzf();
        Bundle zzh = zzbhjVar.zzh(AdMobAdapter.class);
        AdInfo zzt = zzbhjVar.zzt();
        if (zzt != null) {
            QueryInfo queryInfo = zzt.getQueryInfo();
            zzbcxVar = new zzbcx(zzbhjVar.zzt().getAdString(), queryInfo != null ? queryInfo.zza().zzd() : "");
        } else {
            zzbcxVar = null;
        }
        String zzj = zzbhjVar.zzj();
        SearchAdRequest zzl = zzbhjVar.zzl();
        zzbio zzbioVar = zzl != null ? new zzbio(zzl) : null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            String packageName = applicationContext.getPackageName();
            zzber.zza();
            str = zzcgm.zzl(Thread.currentThread().getStackTrace(), packageName);
        } else {
            str = null;
        }
        boolean zzs = zzbhjVar.zzs();
        RequestConfiguration zzr = zzbhs.zze().zzr();
        return new zzbdg(8, time == true ? 1L : 0L, zzh, zzd, unmodifiableList, zzm, Math.max(zzbhjVar.zzp(), zzr.getTagForChildDirectedTreatment()), false, zzj, zzbioVar, zzf, zzb, zzbhjVar.zzo(), zzbhjVar.zzq(), Collections.unmodifiableList(new ArrayList(zzbhjVar.zzr())), zzbhjVar.zzk(), str, zzs, zzbcxVar, Math.max(-1, zzr.getTagForUnderAgeOfConsent()), (String) Collections.max(Arrays.asList(null, zzr.getMaxAdContentRating()), zzbdj.zza), zzbhjVar.zzc(), zzbhjVar.zzv(), zzbhjVar.zzu());
    }
}
