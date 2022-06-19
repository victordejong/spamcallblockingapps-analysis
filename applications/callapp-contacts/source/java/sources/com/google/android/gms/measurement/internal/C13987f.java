package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.mopub.common.Constants;
/* renamed from: com.google.android.gms.measurement.internal.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/f.class */
public final class C13987f {

    /* renamed from: a */
    public static final C13987f f51572a = new C13987f(null, null);

    /* renamed from: b */
    final Boolean f51573b;

    /* renamed from: c */
    final Boolean f51574c;

    public C13987f(Boolean bool, Boolean bool2) {
        this.f51573b = bool;
        this.f51574c = bool2;
    }

    /* renamed from: a */
    private static int m11965a(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    /* renamed from: a */
    public static C13987f m11963a(String str) {
        Boolean bool;
        Boolean bool2 = null;
        if (str != null) {
            Boolean m11969a = str.length() >= 3 ? m11969a(str.charAt(2)) : null;
            if (str.length() >= 4) {
                bool2 = m11969a(str.charAt(3));
            }
            bool = m11969a;
        } else {
            bool2 = null;
            bool = null;
        }
        return new C13987f(bool, bool2);
    }

    /* renamed from: a */
    private static Boolean m11969a(char c) {
        if (c != '0') {
            if (c == '1') {
                return Boolean.TRUE;
            }
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: a */
    private static Boolean m11964a(Boolean bool, Boolean bool2) {
        if (bool == null) {
            return bool2;
        }
        if (bool2 == null) {
            return bool;
        }
        boolean z = false;
        if (bool.booleanValue()) {
            z = false;
            if (bool2.booleanValue()) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: a */
    public static String m11967a(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string == null || m11958b(string) != null) {
            String string2 = bundle.getString("analytics_storage");
            if (string2 != null && m11958b(string2) == null) {
                return string2;
            }
            return null;
        }
        return string;
    }

    /* renamed from: a */
    public static boolean m11968a(int i, int i2) {
        return i <= i2;
    }

    /* renamed from: b */
    private static final char m11959b(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    /* renamed from: b */
    public static C13987f m11961b(Bundle bundle) {
        return bundle == null ? f51572a : new C13987f(m11958b(bundle.getString("ad_storage")), m11958b(bundle.getString("analytics_storage")));
    }

    /* renamed from: b */
    private static Boolean m11958b(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (!str.equals(Constants.TAS_DENIED)) {
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: a */
    public final String m11970a() {
        return "G1" + m11959b(this.f51573b) + m11959b(this.f51574c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r4.f51573b == java.lang.Boolean.FALSE) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m11966a(com.google.android.gms.measurement.internal.C13987f r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Boolean r0 = r0.f51573b
            r5 = r0
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L1f
            r0 = r7
            r8 = r0
            r0 = r4
            java.lang.Boolean r0 = r0.f51573b
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 != r1) goto L3f
        L1f:
            r0 = r3
            java.lang.Boolean r0 = r0.f51574c
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 != r1) goto L3c
            r0 = r4
            java.lang.Boolean r0 = r0.f51574c
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 == r1) goto L3a
            r0 = r7
            r8 = r0
            goto L3f
        L3a:
            r0 = 0
            return r0
        L3c:
            r0 = 0
            r8 = r0
        L3f:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C13987f.m11966a(com.google.android.gms.measurement.internal.f):boolean");
    }

    /* renamed from: b */
    public final C13987f m11960b(C13987f c13987f) {
        return new C13987f(m11964a(this.f51573b, c13987f.f51573b), m11964a(this.f51574c, c13987f.f51574c));
    }

    /* renamed from: b */
    public final boolean m11962b() {
        Boolean bool = this.f51573b;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: c */
    public final C13987f m11956c(C13987f c13987f) {
        Boolean bool = this.f51573b;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = c13987f.f51573b;
        }
        Boolean bool3 = this.f51574c;
        Boolean bool4 = bool3;
        if (bool3 == null) {
            bool4 = c13987f.f51574c;
        }
        return new C13987f(bool2, bool4);
    }

    /* renamed from: c */
    public final boolean m11957c() {
        Boolean bool = this.f51574c;
        return bool == null || bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C13987f)) {
            return false;
        }
        C13987f c13987f = (C13987f) obj;
        return m11965a(this.f51573b) == m11965a(c13987f.f51573b) && m11965a(this.f51574c) == m11965a(c13987f.f51574c);
    }

    public final int hashCode() {
        return ((m11965a(this.f51573b) + 527) * 31) + m11965a(this.f51574c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.f51573b;
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool.booleanValue() ? Constants.TAS_DENIED : "granted");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.f51574c;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool2.booleanValue() ? Constants.TAS_DENIED : "granted");
        }
        return sb.toString();
    }
}
