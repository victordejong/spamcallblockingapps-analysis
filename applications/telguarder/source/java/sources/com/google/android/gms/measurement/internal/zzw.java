package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzcc;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzcj;
import com.google.android.gms.internal.measurement.zzck;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzw.class */
public abstract class zzw {
    final String zzb;
    final int zzc;
    Boolean zzd;
    Boolean zze;
    Long zzf;
    Long zzg;

    public zzw(String str, int i) {
        this.zzb = str;
        this.zzc = i;
    }

    private static Boolean zzd(String str, zzcj zzcjVar, boolean z, String str2, List<String> list, String str3, zzei zzeiVar) {
        if (zzcjVar == zzcj.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = str;
            if (zzcjVar != zzcj.REGEXP) {
                str4 = str.toUpperCase(Locale.ENGLISH);
            }
        }
        zzcc zzccVar = zzcc.UNKNOWN_COMPARISON_TYPE;
        switch (zzcjVar.ordinal()) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z ? 66 : 0).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (zzeiVar == null) {
                        return null;
                    }
                    zzeiVar.zze().zzb("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                return Boolean.valueOf(str4.startsWith(str2));
            case 3:
                return Boolean.valueOf(str4.endsWith(str2));
            case 4:
                return Boolean.valueOf(str4.contains(str2));
            case 5:
                return Boolean.valueOf(str4.equals(str2));
            case 6:
                if (list != null) {
                    return Boolean.valueOf(list.contains(str4));
                }
                return null;
            default:
                return null;
        }
    }

    public static Boolean zze(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    public static Boolean zzf(String str, zzck zzckVar, zzei zzeiVar) {
        List<String> list;
        Preconditions.checkNotNull(zzckVar);
        if (str == null || !zzckVar.zza() || zzckVar.zzb() == zzcj.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (zzckVar.zzb() == zzcj.IN_LIST) {
            if (zzckVar.zzh() == 0) {
                return null;
            }
        } else if (!zzckVar.zzc()) {
            return null;
        }
        zzcj zzb = zzckVar.zzb();
        boolean zzf = zzckVar.zzf();
        String zzd = (zzf || zzb == zzcj.REGEXP || zzb == zzcj.IN_LIST) ? zzckVar.zzd() : zzckVar.zzd().toUpperCase(Locale.ENGLISH);
        if (zzckVar.zzh() == 0) {
            list = null;
        } else {
            List<String> zzg = zzckVar.zzg();
            list = zzg;
            if (!zzf) {
                ArrayList arrayList = new ArrayList(zzg.size());
                for (String str2 : zzg) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return zzd(str, zzb, zzf, zzd, list, zzb == zzcj.REGEXP ? zzd : null, zzeiVar);
    }

    public static Boolean zzg(long j, zzcd zzcdVar) {
        try {
            return zzj(new BigDecimal(j), zzcdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static Boolean zzh(double d, zzcd zzcdVar) {
        try {
            return zzj(new BigDecimal(d), zzcdVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static Boolean zzi(String str, zzcd zzcdVar) {
        if (!zzkf.zzl(str)) {
            return null;
        }
        try {
            return zzj(new BigDecimal(str), zzcdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00bd, code lost:
        if (r14 != null) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.Boolean zzj(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.zzcd r8, double r9) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzj(java.math.BigDecimal, com.google.android.gms.internal.measurement.zzcd, double):java.lang.Boolean");
    }

    public abstract int zza();

    public abstract boolean zzb();

    public abstract boolean zzc();
}
