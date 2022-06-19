package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxf.class */
public final class zzxf {
    private static final Pattern zzc = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zza = -1;
    public int zzb = -1;

    private final boolean zzc(String str) {
        Matcher matcher = zzc.matcher(str);
        if (matcher.find()) {
            try {
                String group = matcher.group(1);
                int i = zzfn.zza;
                int parseInt = Integer.parseInt(group, 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt <= 0 && parseInt2 <= 0) {
                    return false;
                }
                this.zza = parseInt;
                this.zzb = parseInt2;
                return true;
            } catch (NumberFormatException e) {
                return false;
            }
        }
        return false;
    }

    public final boolean zza() {
        return (this.zza == -1 || this.zzb == -1) ? false : true;
    }

    public final boolean zzb(zzdd zzddVar) {
        for (int i = 0; i < zzddVar.zza(); i++) {
            zzdc zzb = zzddVar.zzb(i);
            if (zzb instanceof zzzn) {
                zzzn zzznVar = (zzzn) zzb;
                if ("iTunSMPB".equals(zzznVar.zzb) && zzc(zzznVar.zzc)) {
                    return true;
                }
            } else if (zzb instanceof zzzw) {
                zzzw zzzwVar = (zzzw) zzb;
                if ("com.apple.iTunes".equals(zzzwVar.zza) && "iTunSMPB".equals(zzzwVar.zzb) && zzc(zzzwVar.zzc)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }
}
