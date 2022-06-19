package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoj.class */
public final class zzoj {
    private static final Pattern zzc = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zza = -1;
    public int zzb = -1;

    private final boolean zzc(String str) {
        Matcher matcher = zzc.matcher(str);
        if (matcher.find()) {
            try {
                String group = matcher.group(1);
                int i = zzamq.zza;
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

    public final boolean zza(zzaiv zzaivVar) {
        for (int i = 0; i < zzaivVar.zza(); i++) {
            zzaiu zzb = zzaivVar.zzb(i);
            if (zzb instanceof zzajq) {
                zzajq zzajqVar = (zzajq) zzb;
                if ("iTunSMPB".equals(zzajqVar.zzb) && zzc(zzajqVar.zzc)) {
                    return true;
                }
            } else if (zzb instanceof zzajz) {
                zzajz zzajzVar = (zzajz) zzb;
                if ("com.apple.iTunes".equals(zzajzVar.zza) && "iTunSMPB".equals(zzajzVar.zzb) && zzc(zzajzVar.zzc)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final boolean zzb() {
        return (this.zza == -1 || this.zzb == -1) ? false : true;
    }
}
