package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbka.class */
public final class zzbka {
    private final Map<String, String> zzb;
    private final List<zzbjx> zza = new LinkedList();
    private final Object zzc = new Object();

    public zzbka(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzb = linkedHashMap;
        linkedHashMap.put("action", "make_wv");
        linkedHashMap.put("ad_format", str2);
    }

    public static final zzbjx zzf() {
        return new zzbjx(zzt.zzj().mo38789a(), null, null);
    }

    public final void zza(zzbka zzbkaVar) {
        synchronized (this.zzc) {
        }
    }

    public final boolean zzb(zzbjx zzbjxVar, long j, String... strArr) {
        synchronized (this.zzc) {
            for (int i = 0; i <= 0; i++) {
                this.zza.add(new zzbjx(j, strArr[i], zzbjxVar));
            }
        }
        return true;
    }

    public final zzbjz zzc() {
        zzbjz zzbjzVar;
        boolean booleanValue = ((Boolean) zzbet.zzc().zzc(zzbjl.zzbl)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.zzc) {
            for (zzbjx zzbjxVar : this.zza) {
                long zza = zzbjxVar.zza();
                String zzb = zzbjxVar.zzb();
                zzbjx zzc = zzbjxVar.zzc();
                if (zzc != null && zza > 0) {
                    long zza2 = zzc.zza();
                    sb.append(zzb);
                    sb.append('.');
                    sb.append(zza - zza2);
                    sb.append(',');
                    if (booleanValue) {
                        if (!hashMap.containsKey(Long.valueOf(zzc.zza()))) {
                            hashMap.put(Long.valueOf(zzc.zza()), new StringBuilder(zzb));
                        } else {
                            StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(zzc.zza()));
                            sb2.append('+');
                            sb2.append(zzb);
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
                    sb3.append((((Long) entry.getKey()).longValue() - zzt.zzj().mo38789a()) + zzt.zzj().mo38787c());
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                str = sb3.toString();
            }
            zzbjzVar = new zzbjz(sb.toString(), str);
        }
        return zzbjzVar;
    }

    public final void zzd(String str, String str2) {
        zzbjq zze;
        if (!TextUtils.isEmpty(str2) && (zze = zzt.zzg().zze()) != null) {
            synchronized (this.zzc) {
                zzbjw zzd = zze.zzd(str);
                Map<String, String> map = this.zzb;
                map.put(str, zzd.zza(map.get(str), str2));
            }
        }
    }

    @VisibleForTesting
    public final Map<String, String> zze() {
        Map<String, String> map;
        synchronized (this.zzc) {
            zzt.zzg().zze();
            map = this.zzb;
        }
        return map;
    }
}
