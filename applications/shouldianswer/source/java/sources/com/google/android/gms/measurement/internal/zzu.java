package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzbj;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzu.class */
public abstract class zzu {
    String zza;
    int zzb;
    Boolean zzc;
    Boolean zzd;
    Long zze;
    Long zzf;

    public zzu(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public static Boolean zza(double d, zzbj.zzd zzdVar) {
        try {
            return zza(new BigDecimal(d), zzdVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static Boolean zza(long j, zzbj.zzd zzdVar) {
        try {
            return zza(new BigDecimal(j), zzdVar, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static Boolean zza(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    public static Boolean zza(String str, zzbj.zzd zzdVar) {
        if (!zzki.zza(str)) {
            return null;
        }
        try {
            return zza(new BigDecimal(str), zzdVar, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static Boolean zza(String str, zzbj.zzf.zzb zzbVar, boolean z, String str2, List<String> list, String str3, zzew zzewVar) {
        if (str == null) {
            return null;
        }
        if (zzbVar == zzbj.zzf.zzb.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = zzbVar == zzbj.zzf.zzb.REGEXP ? str : str.toUpperCase(Locale.ENGLISH);
        }
        switch (zzq.zza[zzbVar.ordinal()]) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (zzewVar == null) {
                        return null;
                    }
                    zzewVar.zzi().zza("Invalid regular expression in REGEXP audience filter. expression", str3);
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
                return Boolean.valueOf(list.contains(str4));
            default:
                return null;
        }
    }

    public static Boolean zza(String str, zzbj.zzf zzfVar, zzew zzewVar) {
        List<String> list;
        Preconditions.checkNotNull(zzfVar);
        if (str == null || !zzfVar.zza() || zzfVar.zzb() == zzbj.zzf.zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (zzfVar.zzb() == zzbj.zzf.zzb.IN_LIST) {
            if (zzfVar.zzh() == 0) {
                return null;
            }
        } else if (!zzfVar.zzc()) {
            return null;
        }
        zzbj.zzf.zzb zzb = zzfVar.zzb();
        boolean zzf = zzfVar.zzf();
        String zzd = (zzf || zzb == zzbj.zzf.zzb.REGEXP || zzb == zzbj.zzf.zzb.IN_LIST) ? zzfVar.zzd() : zzfVar.zzd().toUpperCase(Locale.ENGLISH);
        if (zzfVar.zzh() == 0) {
            list = null;
        } else {
            list = zzfVar.zzg();
            if (!zzf) {
                ArrayList arrayList = new ArrayList(list.size());
                for (String str2 : list) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return zza(str, zzb, zzf, zzd, list, zzb == zzbj.zzf.zzb.REGEXP ? zzd : null, zzewVar);
    }

    private static Boolean zza(BigDecimal bigDecimal, zzbj.zzd zzdVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.checkNotNull(zzdVar);
        if (!zzdVar.zza() || zzdVar.zzb() == zzbj.zzd.zza.UNKNOWN_COMPARISON_TYPE) {
            return null;
        }
        if (zzdVar.zzb() == zzbj.zzd.zza.BETWEEN) {
            if (!zzdVar.zzg() || !zzdVar.zzi()) {
                return null;
            }
        } else if (!zzdVar.zze()) {
            return null;
        }
        zzbj.zzd.zza zzb = zzdVar.zzb();
        if (zzdVar.zzb() == zzbj.zzd.zza.BETWEEN) {
            if (!zzki.zza(zzdVar.zzh()) || !zzki.zza(zzdVar.zzj())) {
                return null;
            }
            try {
                bigDecimal3 = new BigDecimal(zzdVar.zzh());
                bigDecimal2 = new BigDecimal(zzdVar.zzj());
                bigDecimal4 = null;
            } catch (NumberFormatException e) {
                return null;
            }
        } else if (!zzki.zza(zzdVar.zzf())) {
            return null;
        } else {
            try {
                bigDecimal4 = new BigDecimal(zzdVar.zzf());
                bigDecimal3 = null;
                bigDecimal2 = null;
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (zzb == zzbj.zzd.zza.BETWEEN) {
            if (bigDecimal3 == null) {
                return null;
            }
        } else if (bigDecimal4 == null) {
            return null;
        }
        int i = zzq.zzb[zzb.ordinal()];
        boolean z = false;
        if (i == 1) {
            boolean z2 = false;
            if (bigDecimal.compareTo(bigDecimal4) == -1) {
                z2 = true;
            }
            return Boolean.valueOf(z2);
        } else if (i == 2) {
            boolean z3 = false;
            if (bigDecimal.compareTo(bigDecimal4) == 1) {
                z3 = true;
            }
            return Boolean.valueOf(z3);
        } else if (i != 3) {
            if (i != 4) {
                return null;
            }
            boolean z4 = false;
            if (bigDecimal.compareTo(bigDecimal3) != -1) {
                z4 = false;
                if (bigDecimal.compareTo(bigDecimal2) != 1) {
                    z4 = true;
                }
            }
            return Boolean.valueOf(z4);
        } else if (d == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            if (bigDecimal.compareTo(bigDecimal4) == 0) {
                z = true;
            }
            return Boolean.valueOf(z);
        } else {
            boolean z5 = false;
            if (bigDecimal.compareTo(bigDecimal4.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1) {
                z5 = false;
                if (bigDecimal.compareTo(bigDecimal4.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                    z5 = true;
                }
            }
            return Boolean.valueOf(z5);
        }
    }

    public abstract int zza();

    public abstract boolean zzb();
}
