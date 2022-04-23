package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.o;
import com.google.android.gms.internal.measurement.aw;
import com.google.android.gms.internal.measurement.ax;
import com.google.android.gms.internal.measurement.bd;
import com.google.android.gms.internal.measurement.be;
import com.google.android.gms.internal.measurement.gs;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/kh.class */
public abstract class kh {

    /* renamed from: b  reason: collision with root package name */
    final String f29943b;

    /* renamed from: c  reason: collision with root package name */
    final int f29944c;

    /* renamed from: d  reason: collision with root package name */
    Boolean f29945d;
    Boolean e;
    Long f;
    Long g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kh(String str, int i) {
        this.f29943b = str;
        this.f29944c = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean a(double d2, ax axVar) {
        try {
            return a(new BigDecimal(d2), axVar, Math.ulp(d2));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean a(long j, ax axVar) {
        try {
            return a(new BigDecimal(j), axVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean a(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean a(String str, ax axVar) {
        if (!jq.a(str)) {
            return null;
        }
        try {
            return a(new BigDecimal(str), axVar, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    private static Boolean a(String str, bd bdVar, boolean z, String str2, List<String> list, String str3, Cdo doVar) {
        if (bdVar == bd.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = str;
            if (bdVar != bd.REGEXP) {
                str4 = str.toUpperCase(Locale.ENGLISH);
            }
        }
        aw awVar = aw.UNKNOWN_COMPARISON_TYPE;
        switch (bdVar.ordinal()) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z ? 66 : 0).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (doVar == null) {
                        return null;
                    }
                    doVar.f.a("Invalid regular expression in REGEXP audience filter. expression", str3);
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
                if (list == null) {
                    return null;
                }
                return Boolean.valueOf(list.contains(str4));
            default:
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Boolean a(String str, be beVar, Cdo doVar) {
        List list;
        o.a(beVar);
        if (str == null || !beVar.a() || beVar.b() == bd.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (beVar.b() == bd.IN_LIST) {
            if (beVar.d() == 0) {
                return null;
            }
        } else if (!beVar.c()) {
            return null;
        }
        bd b2 = beVar.b();
        boolean z = beVar.zzg;
        String upperCase = (z || b2 == bd.REGEXP || b2 == bd.IN_LIST) ? beVar.zzf : beVar.zzf.toUpperCase(Locale.ENGLISH);
        if (beVar.d() == 0) {
            list = null;
        } else {
            gs<String> gsVar = beVar.zzh;
            list = gsVar;
            if (!z) {
                ArrayList arrayList = new ArrayList(gsVar.size());
                for (String str2 : gsVar) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return a(str, b2, z, upperCase, list, b2 == bd.REGEXP ? upperCase : null, doVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c4, code lost:
        if (r15 != null) goto L_0x00d5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Boolean a(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.ax r8, double r9) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.kh.a(java.math.BigDecimal, com.google.android.gms.internal.measurement.ax, double):java.lang.Boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean c();
}
