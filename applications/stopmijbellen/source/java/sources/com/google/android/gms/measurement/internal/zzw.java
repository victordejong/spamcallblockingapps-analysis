package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzep;
import com.google.android.gms.internal.measurement.zzeq;
import com.google.android.gms.internal.measurement.zzew;
import com.google.android.gms.internal.measurement.zzex;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzw.class */
public abstract class zzw {
    public final String zzb;
    public final int zzc;
    public Boolean zzd;
    public Boolean zze;
    public Long zzf;
    public Long zzg;

    public zzw(String str, int i) {
        this.zzb = str;
        this.zzc = i;
    }

    private static Boolean zzd(String str, zzew zzewVar, boolean z, String str2, List<String> list, String str3, zzem zzemVar) {
        if (zzewVar == zzew.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = str;
            if (zzewVar != zzew.REGEXP) {
                str4 = str.toUpperCase(Locale.ENGLISH);
            }
        }
        zzep zzepVar = zzep.UNKNOWN_COMPARISON_TYPE;
        switch (zzewVar.ordinal()) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z ? 66 : 0).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (zzemVar == null) {
                        return null;
                    }
                    zzemVar.zze().zzb("Invalid regular expression in REGEXP audience filter. expression", str3);
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

    @VisibleForTesting
    public static Boolean zze(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    @VisibleForTesting
    public static Boolean zzf(String str, zzex zzexVar, zzem zzemVar) {
        List<String> list;
        Preconditions.checkNotNull(zzexVar);
        if (str == null || !zzexVar.zza() || zzexVar.zzb() == zzew.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        zzew zzb = zzexVar.zzb();
        zzew zzewVar = zzew.IN_LIST;
        if (zzb == zzewVar) {
            if (zzexVar.zzh() == 0) {
                return null;
            }
        } else if (!zzexVar.zzc()) {
            return null;
        }
        zzew zzb2 = zzexVar.zzb();
        boolean zzf = zzexVar.zzf();
        String zzd = (zzf || zzb2 == zzew.REGEXP || zzb2 == zzewVar) ? zzexVar.zzd() : zzexVar.zzd().toUpperCase(Locale.ENGLISH);
        if (zzexVar.zzh() == 0) {
            list = null;
        } else {
            List<String> zzg = zzexVar.zzg();
            list = zzg;
            if (!zzf) {
                ArrayList arrayList = new ArrayList(zzg.size());
                for (String str2 : zzg) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return zzd(str, zzb2, zzf, zzd, list, zzb2 == zzew.REGEXP ? zzd : null, zzemVar);
    }

    public static Boolean zzg(long j, zzeq zzeqVar) {
        try {
            return zzj(new BigDecimal(j), zzeqVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static Boolean zzh(double d, zzeq zzeqVar) {
        try {
            return zzj(new BigDecimal(d), zzeqVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static Boolean zzi(String str, zzeq zzeqVar) {
        if (!zzkp.zzl(str)) {
            return null;
        }
        try {
            return zzj(new BigDecimal(str), zzeqVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c3, code lost:
        if (r16 != null) goto L37;
     */
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean zzj(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.zzeq r8, double r9) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzw.zzj(java.math.BigDecimal, com.google.android.gms.internal.measurement.zzeq, double):java.lang.Boolean");
    }

    public abstract int zza();

    public abstract boolean zzb();

    public abstract boolean zzc();
}
