package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zze;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqy.class */
public final /* synthetic */ class zzbqy implements zzbrt {
    public static final /* synthetic */ zzbqy zza = new zzbqy();

    private /* synthetic */ zzbqy() {
    }

    @Override // com.google.android.gms.internal.ads.zzbrt
    public final void zza(Object obj, Map map) {
        zzcpq zzcpqVar = (zzcpq) obj;
        zzbrt<zzcop> zzbrtVar = zzbrs.zza;
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzfZ)).booleanValue()) {
            zzciz.zzj("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            zzciz.zzj("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap hashMap = new HashMap();
        Boolean valueOf = Boolean.valueOf(zzcpqVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null);
        hashMap.put(str, valueOf);
        String obj2 = valueOf.toString();
        StringBuilder sb = new StringBuilder(obj2.length() + String.valueOf(str).length() + 13);
        sb.append("/canOpenApp;");
        sb.append(str);
        sb.append(";");
        sb.append(obj2);
        zze.zza(sb.toString());
        ((zzbuk) zzcpqVar).zzd("openableApp", hashMap);
    }
}
