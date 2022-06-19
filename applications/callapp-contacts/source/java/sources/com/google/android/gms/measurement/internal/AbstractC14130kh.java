package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.measurement.AbstractC13533gs;
import com.google.android.gms.internal.measurement.C13376ax;
import com.google.android.gms.internal.measurement.C13384be;
import com.google.android.gms.internal.measurement.EnumC13375aw;
import com.google.android.gms.internal.measurement.EnumC13383bd;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* renamed from: com.google.android.gms.measurement.internal.kh */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/kh.class */
public abstract class AbstractC14130kh {

    /* renamed from: b */
    final String f52033b;

    /* renamed from: c */
    final int f52034c;

    /* renamed from: d */
    Boolean f52035d;

    /* renamed from: e */
    Boolean f52036e;

    /* renamed from: f */
    Long f52037f;

    /* renamed from: g */
    Long f52038g;

    public AbstractC14130kh(String str, int i) {
        this.f52033b = str;
        this.f52034c = i;
    }

    /* renamed from: a */
    public static Boolean m11542a(double d, C13376ax c13376ax) {
        try {
            return m11536a(new BigDecimal(d), c13376ax, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Boolean m11541a(long j, C13376ax c13376ax) {
        try {
            return m11536a(new BigDecimal(j), c13376ax, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static Boolean m11540a(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* renamed from: a */
    public static Boolean m11539a(String str, C13376ax c13376ax) {
        if (!C14112jq.m11629a(str)) {
            return null;
        }
        try {
            return m11536a(new BigDecimal(str), c13376ax, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: a */
    private static Boolean m11538a(String str, EnumC13383bd enumC13383bd, boolean z, String str2, List<String> list, String str3, C13947do c13947do) {
        if (enumC13383bd == EnumC13383bd.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = str;
            if (enumC13383bd != EnumC13383bd.REGEXP) {
                str4 = str.toUpperCase(Locale.ENGLISH);
            }
        }
        EnumC13375aw enumC13375aw = EnumC13375aw.UNKNOWN_COMPARISON_TYPE;
        switch (enumC13383bd.ordinal()) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z ? 66 : 0).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (c13947do == null) {
                        return null;
                    }
                    c13947do.f51398f.m12091a("Invalid regular expression in REGEXP audience filter. expression", str3);
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

    /* renamed from: a */
    public static Boolean m11537a(String str, C13384be c13384be, C13947do c13947do) {
        AbstractC13533gs<String> abstractC13533gs;
        C12045o.m19162a(c13384be);
        if (str == null || !c13384be.m13230a() || c13384be.m13229b() == EnumC13383bd.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        if (c13384be.m13229b() == EnumC13383bd.IN_LIST) {
            if (c13384be.m13227d() == 0) {
                return null;
            }
        } else if (!c13384be.m13228c()) {
            return null;
        }
        EnumC13383bd m13229b = c13384be.m13229b();
        boolean z = c13384be.zzg;
        String upperCase = (z || m13229b == EnumC13383bd.REGEXP || m13229b == EnumC13383bd.IN_LIST) ? c13384be.zzf : c13384be.zzf.toUpperCase(Locale.ENGLISH);
        if (c13384be.m13227d() == 0) {
            abstractC13533gs = null;
        } else {
            AbstractC13533gs<String> abstractC13533gs2 = c13384be.zzh;
            abstractC13533gs = abstractC13533gs2;
            if (!z) {
                ArrayList arrayList = new ArrayList(abstractC13533gs2.size());
                for (String str2 : abstractC13533gs2) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                abstractC13533gs = Collections.unmodifiableList(arrayList);
            }
        }
        return m11538a(str, m13229b, z, upperCase, abstractC13533gs, m13229b == EnumC13383bd.REGEXP ? upperCase : null, c13947do);
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x00c4, code lost:
        if (r15 != null) goto L38;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Boolean m11536a(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.C13376ax r8, double r9) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AbstractC14130kh.m11536a(java.math.BigDecimal, com.google.android.gms.internal.measurement.ax, double):java.lang.Boolean");
    }

    /* renamed from: a */
    public abstract int mo11535a();

    /* renamed from: b */
    public abstract boolean mo11533b();

    /* renamed from: c */
    public abstract boolean mo11532c();
}
