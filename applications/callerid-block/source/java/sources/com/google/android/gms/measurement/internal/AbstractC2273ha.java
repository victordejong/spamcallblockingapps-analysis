package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.u0;
import com.google.android.gms.internal.measurement.z0;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzck;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* renamed from: com.google.android.gms.measurement.internal.ha */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ha.class */
abstract class AbstractC2273ha {

    /* renamed from: a */
    final String f10229a;

    /* renamed from: b */
    final int f10230b;

    /* renamed from: c */
    Boolean f10231c;

    /* renamed from: d */
    Boolean f10232d;

    /* renamed from: e */
    Long f10233e;

    /* renamed from: f */
    Long f10234f;

    AbstractC2273ha(String str, int i) {
        this.f10229a = str;
        this.f10230b = i;
    }

    /* renamed from: d */
    private static Boolean m3896d(String str, zzck zzckVar, boolean z, String str2, List<String> list, String str3, o3 o3Var) {
        boolean startsWith;
        if (zzckVar == zzck.h) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = str;
            if (zzckVar != zzck.c) {
                str4 = str.toUpperCase(Locale.ENGLISH);
            }
        }
        zzcd zzcdVar = zzcd.b;
        switch (zzckVar.ordinal()) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z ? 66 : 0).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (o3Var == null) {
                        return null;
                    }
                    o3Var.p().m3875b("Invalid regular expression in REGEXP audience filter. expression", str3);
                    return null;
                }
            case 2:
                startsWith = str4.startsWith(str2);
                break;
            case 3:
                startsWith = str4.endsWith(str2);
                break;
            case 4:
                startsWith = str4.contains(str2);
                break;
            case 5:
                startsWith = str4.equals(str2);
                break;
            case 6:
                if (list != null) {
                    startsWith = list.contains(str4);
                    break;
                } else {
                    return null;
                }
            default:
                return null;
        }
        return Boolean.valueOf(startsWith);
    }

    /* renamed from: e */
    static Boolean m3895e(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* renamed from: f */
    static Boolean m3894f(String str, z0 z0Var, o3 o3Var) {
        List list;
        C1581h.m8347h(z0Var);
        if (str == null || !z0Var.v() || z0Var.w() == zzck.b) {
            return null;
        }
        zzck w = z0Var.w();
        zzck zzckVar = zzck.h;
        if (w == zzckVar) {
            if (z0Var.D() == 0) {
                return null;
            }
        } else if (!z0Var.x()) {
            return null;
        }
        zzck w2 = z0Var.w();
        boolean A = z0Var.A();
        String y = (A || w2 == zzck.c || w2 == zzckVar) ? z0Var.y() : z0Var.y().toUpperCase(Locale.ENGLISH);
        if (z0Var.D() == 0) {
            list = null;
        } else {
            List<String> C = z0Var.C();
            list = C;
            if (!A) {
                ArrayList arrayList = new ArrayList(C.size());
                for (String str2 : C) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return m3896d(str, w2, A, y, list, w2 == zzck.c ? y : null, o3Var);
    }

    /* renamed from: g */
    static Boolean m3893g(long j, u0 u0Var) {
        try {
            return m3890j(new BigDecimal(j), u0Var, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: h */
    static Boolean m3892h(double d, u0 u0Var) {
        try {
            return m3890j(new BigDecimal(d), u0Var, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: i */
    static Boolean m3891i(String str, u0 u0Var) {
        if (!q9.B(str)) {
            return null;
        }
        try {
            return m3890j(new BigDecimal(str), u0Var, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c2, code lost:
        if (r13 != null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x011f, code lost:
        if (r7.compareTo(r8) <= 0) goto L53;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.Boolean m3890j(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.u0 r8, double r9) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AbstractC2273ha.m3890j(java.math.BigDecimal, com.google.android.gms.internal.measurement.u0, double):java.lang.Boolean");
    }

    /* renamed from: a */
    public abstract int m3899a();

    /* renamed from: b */
    public abstract boolean m3898b();

    /* renamed from: c */
    public abstract boolean m3897c();
}
