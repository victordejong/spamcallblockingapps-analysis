package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzarn.class */
public final class zzarn {
    public static final zzatw zza = new zzarm();
    private static final Pattern zzd = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");
    public int zzb = -1;
    public int zzc = -1;

    public final boolean zza() {
        return (this.zzb == -1 || this.zzc == -1) ? false : true;
    }

    public final boolean zzb(zzatr zzatrVar) {
        for (int i = 0; i < zzatrVar.zza(); i++) {
            zzatq zzb = zzatrVar.zzb(i);
            if (zzb instanceof zzatv) {
                zzatv zzatvVar = (zzatv) zzb;
                String str = zzatvVar.zzb;
                String str2 = zzatvVar.zzc;
                if (!"iTunSMPB".equals(str)) {
                    continue;
                } else {
                    Matcher matcher = zzd.matcher(str2);
                    if (matcher.find()) {
                        try {
                            int parseInt = Integer.parseInt(matcher.group(1), 16);
                            int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                            if (parseInt > 0 || parseInt2 > 0) {
                                this.zzb = parseInt;
                                this.zzc = parseInt2;
                                return true;
                            }
                        } catch (NumberFormatException e) {
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return false;
    }
}
