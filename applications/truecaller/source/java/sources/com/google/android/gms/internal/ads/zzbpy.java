package com.google.android.gms.internal.ads;

import com.amazon.device.ads.MraidResizeCommand;
import com.amazon.device.ads.MraidUnloadCommand;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzt;
import java.util.Collections;
import java.util.Map;
import p1727n3.p1788g.C26174a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbpy.class */
public final class zzbpy implements zzbpr<zzcml> {
    public static final Map<String, Integer> zza;
    private final zzb zzb;
    private final zzbyj zzc;
    private final zzbyq zzd;

    static {
        C26174a c26174a = new C26174a(7);
        for (int i = 0; i < 7; i++) {
            c26174a.put(new String[]{MraidResizeCommand.NAME, "playVideo", "storePicture", "createCalendarEvent", "setOrientationProperties", "closeResizedAd", MraidUnloadCommand.NAME}[i], new Integer[]{1, 2, 3, 4, 5, 6, 7}[i]);
        }
        zza = Collections.unmodifiableMap(c26174a);
    }

    public zzbpy(zzb zzbVar, zzbyj zzbyjVar, zzbyq zzbyqVar) {
        this.zzb = zzbVar;
        this.zzc = zzbyjVar;
        this.zzd = zzbyqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpr
    public final /* bridge */ /* synthetic */ void zza(zzcml zzcmlVar, Map map) {
        zzcml zzcmlVar2 = zzcmlVar;
        int intValue = zza.get((String) map.get("a")).intValue();
        int i = 6;
        boolean z = true;
        if (intValue != 5) {
            if (intValue != 7) {
                if (!this.zzb.zzb()) {
                    this.zzb.zzc(null);
                    return;
                } else if (intValue == 1) {
                    this.zzc.zza(map);
                    return;
                } else if (intValue == 3) {
                    new zzbym(zzcmlVar2, map).zzb();
                    return;
                } else if (intValue == 4) {
                    new zzbyh(zzcmlVar2, map).zzb();
                    return;
                } else if (intValue != 5) {
                    if (intValue == 6) {
                        this.zzc.zzb(true);
                        return;
                    } else if (intValue != 7) {
                        zzcgt.zzh("Unknown MRAID command called.");
                        return;
                    }
                }
            }
            this.zzd.zzc();
            return;
        }
        String str = (String) map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            z = Boolean.parseBoolean((String) map.get("allowOrientationChange"));
        }
        if (zzcmlVar2 == null) {
            zzcgt.zzi("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(str)) {
            i = 7;
        } else if (!"landscape".equalsIgnoreCase(str)) {
            i = z ? -1 : zzt.zze().zzh();
        }
        zzcmlVar2.zzal(i);
    }
}
