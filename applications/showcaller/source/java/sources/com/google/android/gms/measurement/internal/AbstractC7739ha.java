package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.internal.measurement.C7304b1;
import com.google.android.gms.internal.measurement.C7578v0;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ha.class */
public abstract class AbstractC7739ha {

    /* renamed from: a */
    final String f35313a;

    /* renamed from: b */
    final int f35314b;

    /* renamed from: c */
    Boolean f35315c;

    /* renamed from: d */
    Boolean f35316d;

    /* renamed from: e */
    Long f35317e;

    /* renamed from: f */
    Long f35318f;

    public AbstractC7739ha(String str, int i) {
        this.f35313a = str;
        this.f35314b = i;
    }

    /* renamed from: d */
    private static Boolean m6420d(String str, zzck zzckVar, boolean z, String str2, List<String> list, String str3, C7813o3 c7813o3) {
        if (zzckVar == zzck.IN_LIST) {
            if (list == null || list.size() == 0) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        String str4 = str;
        if (!z) {
            str4 = str;
            if (zzckVar != zzck.REGEXP) {
                str4 = str.toUpperCase(Locale.ENGLISH);
            }
        }
        zzcd zzcdVar = zzcd.UNKNOWN_COMPARISON_TYPE;
        switch (zzckVar.ordinal()) {
            case 1:
                if (str3 == null) {
                    return null;
                }
                try {
                    return Boolean.valueOf(Pattern.compile(str3, true != z ? 66 : 0).matcher(str4).matches());
                } catch (PatternSyntaxException e) {
                    if (c7813o3 == null) {
                        return null;
                    }
                    c7813o3.m6192p().m6215b("Invalid regular expression in REGEXP audience filter. expression", str3);
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

    /* renamed from: e */
    public static Boolean m6419e(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    /* renamed from: f */
    public static Boolean m6418f(String str, C7304b1 c7304b1, C7813o3 c7813o3) {
        List<String> list;
        C6155o.m17018j(c7304b1);
        if (str == null || !c7304b1.m7677A() || c7304b1.m7676B() == zzck.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        zzck m7676B = c7304b1.m7676B();
        zzck zzckVar = zzck.IN_LIST;
        if (m7676B == zzckVar) {
            if (c7304b1.m7670H() == 0) {
                return null;
            }
        } else if (!c7304b1.m7675C()) {
            return null;
        }
        zzck m7676B2 = c7304b1.m7676B();
        boolean m7672F = c7304b1.m7672F();
        String m7674D = (m7672F || m7676B2 == zzck.REGEXP || m7676B2 == zzckVar) ? c7304b1.m7674D() : c7304b1.m7674D().toUpperCase(Locale.ENGLISH);
        if (c7304b1.m7670H() == 0) {
            list = null;
        } else {
            List<String> m7671G = c7304b1.m7671G();
            list = m7671G;
            if (!m7672F) {
                ArrayList arrayList = new ArrayList(m7671G.size());
                for (String str2 : m7671G) {
                    arrayList.add(str2.toUpperCase(Locale.ENGLISH));
                }
                list = Collections.unmodifiableList(arrayList);
            }
        }
        return m6420d(str, m7676B2, m7672F, m7674D, list, m7676B2 == zzck.REGEXP ? m7674D : null, c7813o3);
    }

    /* renamed from: g */
    public static Boolean m6417g(long j, C7578v0 c7578v0) {
        try {
            return m6414j(new BigDecimal(j), c7578v0, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: h */
    public static Boolean m6416h(double d, C7578v0 c7578v0) {
        try {
            return m6414j(new BigDecimal(d), c7578v0, Math.ulp(d));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* renamed from: i */
    public static Boolean m6415i(String str, C7578v0 c7578v0) {
        if (!C7841q9.m6080A(str)) {
            return null;
        }
        try {
            return m6414j(new BigDecimal(str), c7578v0, 0.0d);
        } catch (NumberFormatException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c3, code lost:
        if (r16 != null) goto L37;
     */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static java.lang.Boolean m6414j(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.C7578v0 r8, double r9) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AbstractC7739ha.m6414j(java.math.BigDecimal, com.google.android.gms.internal.measurement.v0, double):java.lang.Boolean");
    }

    /* renamed from: a */
    public abstract int mo6352a();

    /* renamed from: b */
    public abstract boolean mo6351b();

    /* renamed from: c */
    public abstract boolean mo6350c();
}
