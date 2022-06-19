package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbly.class */
public final class zzbly {
    private final Map<String, String> zzb;
    private final List<zzblv> zza = new LinkedList();
    private final Object zzc = new Object();

    public zzbly(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    public static final zzblv zzf() {
        return new zzblv(zzt.zzA().elapsedRealtime(), null, null);
    }

    public final zzblx zza() {
        zzblx zzblxVar;
        boolean booleanValue = ((Boolean) zzbgq.zzc().zzb(zzblj.zzbr)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.zzc) {
            for (zzblv zzblvVar : this.zza) {
                long zza = zzblvVar.zza();
                String zzc = zzblvVar.zzc();
                zzblv zzb = zzblvVar.zzb();
                if (zzb != null && zza > 0) {
                    long zza2 = zzb.zza();
                    sb.append(zzc);
                    sb.append('.');
                    sb.append(zza - zza2);
                    sb.append(',');
                    if (booleanValue) {
                        if (!hashMap.containsKey(Long.valueOf(zzb.zza()))) {
                            hashMap.put(Long.valueOf(zzb.zza()), new StringBuilder(zzc));
                        } else {
                            StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(zzb.zza()));
                            sb2.append('+');
                            sb2.append(zzc);
                        }
                    }
                }
            }
            this.zza.clear();
            String str = null;
            if (!TextUtils.isEmpty(null)) {
                sb.append((String) null);
            } else if (sb.length() > 0) {
                sb.setLength(sb.length() - 1);
            }
            StringBuilder sb3 = new StringBuilder();
            if (booleanValue) {
                for (Map.Entry entry : hashMap.entrySet()) {
                    sb3.append((CharSequence) entry.getValue());
                    sb3.append('.');
                    sb3.append((((Long) entry.getKey()).longValue() - zzt.zzA().elapsedRealtime()) + zzt.zzA().currentTimeMillis());
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                str = sb3.toString();
            }
            zzblxVar = new zzblx(sb.toString(), str);
        }
        return zzblxVar;
    }

    @VisibleForTesting
    public final Map<String, String> zzb() {
        Map<String, String> map;
        synchronized (this.zzc) {
            zzt.zzo().zzf();
            map = this.zzb;
        }
        return map;
    }

    public final void zzc(zzbly zzblyVar) {
        synchronized (this.zzc) {
        }
    }

    public final void zzd(String str, String str2) {
        zzblo zzf;
        if (!TextUtils.isEmpty(str2) && (zzf = zzt.zzo().zzf()) != null) {
            synchronized (this.zzc) {
                zzblu zza = zzf.zza(str);
                Map<String, String> map = this.zzb;
                map.put(str, zza.zza(map.get(str), str2));
            }
        }
    }

    public final boolean zze(zzblv zzblvVar, long j, String... strArr) {
        synchronized (this.zzc) {
            for (int i = 0; i <= 0; i++) {
                this.zza.add(new zzblv(j, strArr[i], zzblvVar));
            }
        }
        return true;
    }
}
