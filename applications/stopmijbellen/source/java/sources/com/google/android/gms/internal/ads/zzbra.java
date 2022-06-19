package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbra.class */
public final /* synthetic */ class zzbra implements zzbrt {
    public static final /* synthetic */ zzbra zza = new zzbra();

    private /* synthetic */ zzbra() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map map) {
        zzcpq zzcpqVar = (zzcpq) obj;
        zzbrt<zzcop> zzbrtVar = zzbrs.zza;
        String str = (String) map.get("urls");
        if (TextUtils.isEmpty(str)) {
            zzciz.zzj("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split = str.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = zzcpqVar.getContext().getPackageManager();
        for (String str2 : split) {
            String[] split2 = str2.split(";", 2);
            boolean z = true;
            if (packageManager.resolveActivity(new Intent(split2.length > 1 ? split2[1].trim() : "android.intent.action.VIEW", Uri.parse(split2[0].trim())), 65536) == null) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            hashMap.put(str2, valueOf);
            String obj2 = valueOf.toString();
            StringBuilder sb = new StringBuilder(obj2.length() + str2.length() + 14);
            sb.append("/canOpenURLs;");
            sb.append(str2);
            sb.append(";");
            sb.append(obj2);
            zze.zza(sb.toString());
        }
        ((zzbuk) zzcpqVar).zzd("openableURLs", hashMap);
    }
}
