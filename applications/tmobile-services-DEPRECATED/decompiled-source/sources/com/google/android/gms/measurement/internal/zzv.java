package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzbv;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzv.class */
public abstract class zzv {

    /* renamed from: a */
    String f9770a;

    /* renamed from: b */
    int f9771b;

    /* renamed from: c */
    Boolean f9772c;

    /* renamed from: d */
    Boolean f9773d;

    /* renamed from: e */
    Long f9774e;

    /* renamed from: f */
    Long f9775f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(String str, int i) {
        this.f9770a = str;
        this.f9771b = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static Boolean m10912b(double d, zzbv.zzd zzdVar) {
        try {
            return m10906h(new BigDecimal(d), zzdVar, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static Boolean m10911c(long j, zzbv.zzd zzdVar) {
        try {
            return m10906h(new BigDecimal(j), zzdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: d */
    public static Boolean m10910d(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static Boolean m10909e(String str, zzbv.zzd zzdVar) {
        if (!zzks.m11017R(str)) {
            return null;
        }
        try {
            return m10906h(new BigDecimal(str), zzdVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: f */
    private static Boolean m10908f(String str, zzbv.zzf.zzb zzbVar, boolean z, String str2, List<String> list, String str3, zzer zzerVar) {
        if (str == null) {
            return null;
        }
        if (zzbVar == zzbv.zzf.zzb.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = zzbVar == zzbv.zzf.zzb.REGEXP ? str : str.toUpperCase(Locale.ENGLISH);
        }
        switch (zzr.f9760a[zzbVar.ordinal()]) {
            case 1:
                try {
                    return Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (zzerVar == null) {
                        return null;
                    }
                    zzerVar.m11557G().m11539b("Invalid regular expression in REGEXP audience filter. expression", str3);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* renamed from: g */
    public static Boolean m10907g(String str, zzbv.zzf zzfVar, zzer zzerVar) {
        List<String> list;
        Preconditions.m14523k(zzfVar);
        if (str == null || !zzfVar.m13316A() || zzfVar.m13315C() == zzbv.zzf.zzb.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (zzfVar.m13315C() == zzbv.zzf.zzb.IN_LIST) {
            if (zzfVar.m13309J() == 0) {
                return null;
            }
        } else if (!zzfVar.m13314D()) {
            return null;
        }
        zzbv.zzf.zzb C = zzfVar.m13315C();
        boolean G = zzfVar.m13311G();
        String E = (G || C == zzbv.zzf.zzb.REGEXP || C == zzbv.zzf.zzb.IN_LIST) ? zzfVar.m13313E() : zzfVar.m13313E().toUpperCase(Locale.ENGLISH);
        if (zzfVar.m13309J() == 0) {
            list = null;
        } else {
            list = zzfVar.m13310H();
            if (!G) {
                ArrayList arrayList = new ArrayList(list.size());
                for (String str2 : list) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return m10908f(str, C, G, E, list, C == zzbv.zzf.zzb.REGEXP ? E : null, zzerVar);
    }

    @VisibleForTesting
    /* renamed from: h */
    private static Boolean m10906h(BigDecimal bigDecimal, zzbv.zzd zzdVar, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        Preconditions.m14523k(zzdVar);
        if (!zzdVar.m13341A() || zzdVar.m13340C() == zzbv.zzd.zza.UNKNOWN_COMPARISON_TYPE) {
            return null;
        }
        if (zzdVar.m13340C() == zzbv.zzd.zza.BETWEEN) {
            if (!zzdVar.m13335H() || !zzdVar.m13333K()) {
                return null;
            }
        } else if (!zzdVar.m13337F()) {
            return null;
        }
        zzbv.zzd.zza C = zzdVar.m13340C();
        if (zzdVar.m13340C() == zzbv.zzd.zza.BETWEEN) {
            if (!zzks.m11017R(zzdVar.m13334J()) || !zzks.m11017R(zzdVar.m13332L())) {
                return null;
            }
            try {
                bigDecimal3 = new BigDecimal(zzdVar.m13334J());
                bigDecimal4 = new BigDecimal(zzdVar.m13332L());
                bigDecimal2 = null;
            } catch (NumberFormatException e) {
                return null;
            }
        } else if (!zzks.m11017R(zzdVar.m13336G())) {
            return null;
        } else {
            try {
                bigDecimal2 = new BigDecimal(zzdVar.m13336G());
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException e2) {
                return null;
            }
        }
        if (C == zzbv.zzd.zza.BETWEEN) {
            if (bigDecimal3 == null) {
                return null;
            }
        } else if (bigDecimal2 == null) {
            return null;
        }
        int i = zzr.f9761b[C.ordinal()];
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        if (i == 1) {
            if (bigDecimal.compareTo(bigDecimal2) == -1) {
                z3 = true;
            }
            return Boolean.valueOf(z3);
        } else if (i == 2) {
            if (bigDecimal.compareTo(bigDecimal2) == 1) {
                z2 = true;
            }
            return Boolean.valueOf(z2);
        } else if (i != 3) {
            if (i != 4) {
                return null;
            }
            boolean z4 = false;
            if (bigDecimal.compareTo(bigDecimal3) != -1) {
                z4 = false;
                if (bigDecimal.compareTo(bigDecimal4) != 1) {
                    z4 = true;
                }
            }
            return Boolean.valueOf(z4);
        } else if (d != 0.0d) {
            boolean z5 = false;
            if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) == 1) {
                z5 = false;
                if (bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) == -1) {
                    z5 = true;
                }
            }
            return Boolean.valueOf(z5);
        } else {
            if (bigDecimal.compareTo(bigDecimal2) == 0) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract int mo10913a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public abstract boolean mo10905i();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public abstract boolean mo10904j();
}
