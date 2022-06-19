package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacc.class */
public final class zzacc {
    private final Map<String, String> zzdbf;
    private zzacc zzdbg;
    private final List<zzaca> zzdbe = new LinkedList();
    private final Object lock = new Object();
    @VisibleForTesting
    public final boolean zzdbd = true;

    public zzacc(boolean z, String str, String str2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.zzdbf = linkedHashMap;
        linkedHashMap.put("action", str);
        linkedHashMap.put("ad_format", str2);
    }

    public final boolean zza(zzaca zzacaVar, long j, String... strArr) {
        synchronized (this.lock) {
            for (String str : strArr) {
                this.zzdbe.add(new zzaca(j, str, zzacaVar));
            }
        }
        return true;
    }

    public final void zzc(zzacc zzaccVar) {
        synchronized (this.lock) {
            this.zzdbg = zzaccVar;
        }
    }

    public final zzaca zzex(long j) {
        if (!this.zzdbd) {
            return null;
        }
        return new zzaca(j, null, null);
    }

    public final void zzg(String str, String str2) {
        zzabs zzxm;
        if (!this.zzdbd || TextUtils.isEmpty(str2) || (zzxm = zzr.zzkv().zzxm()) == null) {
            return;
        }
        synchronized (this.lock) {
            zzabw zzcq = zzxm.zzcq(str);
            Map<String, String> map = this.zzdbf;
            map.put(str, zzcq.zzf(map.get(str), str2));
        }
    }

    public final zzacf zzsn() {
        zzacf zzacfVar;
        boolean booleanValue = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcrm)).booleanValue();
        StringBuilder sb = new StringBuilder();
        HashMap hashMap = new HashMap();
        synchronized (this.lock) {
            for (zzaca zzacaVar : this.zzdbe) {
                long time = zzacaVar.getTime();
                String zzsl = zzacaVar.zzsl();
                zzaca zzsm = zzacaVar.zzsm();
                if (zzsm != null && time > 0) {
                    long time2 = zzsm.getTime();
                    sb.append(zzsl);
                    sb.append('.');
                    sb.append(time - time2);
                    sb.append(',');
                    if (booleanValue) {
                        if (!hashMap.containsKey(Long.valueOf(zzsm.getTime()))) {
                            hashMap.put(Long.valueOf(zzsm.getTime()), new StringBuilder(zzsl));
                        } else {
                            StringBuilder sb2 = (StringBuilder) hashMap.get(Long.valueOf(zzsm.getTime()));
                            sb2.append('+');
                            sb2.append(zzsl);
                        }
                    }
                }
            }
            this.zzdbe.clear();
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
                    sb3.append(zzr.zzky().currentTimeMillis() + (((Long) entry.getKey()).longValue() - zzr.zzky().elapsedRealtime()));
                    sb3.append(',');
                }
                if (sb3.length() > 0) {
                    sb3.setLength(sb3.length() - 1);
                }
                str = sb3.toString();
            }
            zzacfVar = new zzacf(sb.toString(), str);
        }
        return zzacfVar;
    }

    @VisibleForTesting
    public final Map<String, String> zzso() {
        zzacc zzaccVar;
        synchronized (this.lock) {
            zzabs zzxm = zzr.zzkv().zzxm();
            return (zzxm == null || (zzaccVar = this.zzdbg) == null) ? this.zzdbf : zzxm.zza(this.zzdbf, zzaccVar.zzso());
        }
    }
}
