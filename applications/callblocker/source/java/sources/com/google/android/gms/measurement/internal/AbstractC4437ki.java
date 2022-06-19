package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.C3748ag;
import java.math.BigDecimal;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* renamed from: com.google.android.gms.measurement.internal.ki */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ki.class */
public abstract class AbstractC4437ki {

    /* renamed from: a */
    String f19343a;

    /* renamed from: b */
    int f19344b;

    /* renamed from: c */
    Boolean f19345c;

    /* renamed from: d */
    Boolean f19346d;

    /* renamed from: e */
    Long f19347e;

    /* renamed from: f */
    Long f19348f;

    public AbstractC4437ki(String str, int i) {
        this.f19343a = str;
        this.f19344b = i;
    }

    /* renamed from: a */
    public static Boolean m4060a(double d, C3748ag.C3755d c3755d) {
        Boolean bool;
        try {
            bool = m4054a(new BigDecimal(d), c3755d, Math.ulp(d));
        } catch (NumberFormatException e) {
            bool = null;
        }
        return bool;
    }

    /* renamed from: a */
    public static Boolean m4059a(long j, C3748ag.C3755d c3755d) {
        Boolean bool;
        try {
            bool = m4054a(new BigDecimal(j), c3755d, 0.0d);
        } catch (NumberFormatException e) {
            bool = null;
        }
        return bool;
    }

    /* renamed from: a */
    public static Boolean m4058a(Boolean bool, boolean z) {
        Boolean valueOf;
        if (bool == null) {
            valueOf = null;
        } else {
            valueOf = Boolean.valueOf(bool.booleanValue() != z);
        }
        return valueOf;
    }

    /* renamed from: a */
    public static Boolean m4057a(String str, C3748ag.C3755d c3755d) {
        Boolean bool;
        if (!C4420js.m4170a(str)) {
            bool = null;
        } else {
            try {
                bool = m4054a(new BigDecimal(str), c3755d, 0.0d);
            } catch (NumberFormatException e) {
                bool = null;
            }
        }
        return bool;
    }

    /* renamed from: a */
    private static Boolean m4056a(String str, C3748ag.C3760f.EnumC3762b enumC3762b, boolean z, String str2, List<String> list, String str3, C4263dy c4263dy) {
        Boolean valueOf;
        if (str != null) {
            if (enumC3762b == C3748ag.C3760f.EnumC3762b.IN_LIST) {
                if (list == null || list.size() == 0) {
                    valueOf = null;
                }
            } else if (str2 == null) {
                valueOf = null;
            }
            String str4 = str;
            if (!z) {
                str4 = enumC3762b == C3748ag.C3760f.EnumC3762b.REGEXP ? str : str.toUpperCase(Locale.ENGLISH);
            }
            switch (C4433ke.f19324a[enumC3762b.ordinal()]) {
                case 1:
                    try {
                        valueOf = Boolean.valueOf(Pattern.compile(str3, z ? 0 : 66).matcher(str4).matches());
                        break;
                    } catch (PatternSyntaxException e) {
                        if (c4263dy != null) {
                            c4263dy.m4662e().m4653a("Invalid regular expression in REGEXP audience filter. expression", str3);
                        }
                        valueOf = null;
                        break;
                    }
                case 2:
                    valueOf = Boolean.valueOf(str4.startsWith(str2));
                    break;
                case 3:
                    valueOf = Boolean.valueOf(str4.endsWith(str2));
                    break;
                case 4:
                    valueOf = Boolean.valueOf(str4.contains(str2));
                    break;
                case 5:
                    valueOf = Boolean.valueOf(str4.equals(str2));
                    break;
                case 6:
                    valueOf = Boolean.valueOf(list.contains(str4));
                    break;
                default:
                    valueOf = null;
                    break;
            }
        } else {
            valueOf = null;
        }
        return valueOf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
        if (r9.m6412h() != 0) goto L15;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Boolean m4055a(java.lang.String r8, com.google.android.gms.internal.measurement.C3748ag.C3760f r9, com.google.android.gms.measurement.internal.C4263dy r10) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AbstractC4437ki.m4055a(java.lang.String, com.google.android.gms.internal.measurement.ag$f, com.google.android.gms.measurement.internal.dy):java.lang.Boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
        if (r8.m6438i() != false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00ab, code lost:
        if (r8 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0129, code lost:
        if (r19 != null) goto L27;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.Boolean m4054a(java.math.BigDecimal r7, com.google.android.gms.internal.measurement.C3748ag.C3755d r8, double r9) {
        /*
            Method dump skipped, instructions count: 509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AbstractC4437ki.m4054a(java.math.BigDecimal, com.google.android.gms.internal.measurement.ag$d, double):java.lang.Boolean");
    }

    /* renamed from: a */
    public abstract int mo4051a();

    /* renamed from: b */
    public abstract boolean mo4049b();

    /* renamed from: c */
    public abstract boolean mo4048c();
}
