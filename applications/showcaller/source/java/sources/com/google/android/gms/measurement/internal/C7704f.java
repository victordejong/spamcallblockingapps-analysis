package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.f */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/f.class */
public final class C7704f {

    /* renamed from: a */
    public static final C7704f f35238a = new C7704f(null, null);

    /* renamed from: b */
    private final Boolean f35239b;

    /* renamed from: c */
    private final Boolean f35240c;

    public C7704f(Boolean bool, Boolean bool2) {
        this.f35239b = bool;
        this.f35240c = bool2;
    }

    /* renamed from: a */
    public static String m6450a(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string == null || m6436o(string) != null) {
            String string2 = bundle.getString("analytics_storage");
            if (string2 != null && m6436o(string2) == null) {
                return string2;
            }
            return null;
        }
        return string;
    }

    /* renamed from: b */
    public static C7704f m6449b(Bundle bundle) {
        return bundle == null ? f35238a : new C7704f(m6436o(bundle.getString("ad_storage")), m6436o(bundle.getString("analytics_storage")));
    }

    /* renamed from: c */
    public static C7704f m6448c(String str) {
        Boolean bool;
        Boolean bool2 = null;
        if (str != null) {
            Boolean m6435p = str.length() >= 3 ? m6435p(str.charAt(2)) : null;
            if (str.length() >= 4) {
                bool2 = m6435p(str.charAt(3));
            }
            bool = m6435p;
        } else {
            bool2 = null;
            bool = null;
        }
        return new C7704f(bool, bool2);
    }

    /* renamed from: j */
    static Boolean m6441j(Boolean bool, Boolean bool2) {
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

    /* renamed from: m */
    public static boolean m6438m(int i, int i2) {
        return i <= i2;
    }

    /* renamed from: n */
    static final int m6437n(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    /* renamed from: o */
    private static Boolean m6436o(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (!str.equals("denied")) {
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: p */
    private static Boolean m6435p(char c) {
        if (c != '0') {
            if (c == '1') {
                return Boolean.TRUE;
            }
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: q */
    private static final char m6434q(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    /* renamed from: d */
    public final String m6447d() {
        return "G1" + m6434q(this.f35239b) + m6434q(this.f35240c);
    }

    /* renamed from: e */
    public final Boolean m6446e() {
        return this.f35239b;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C7704f)) {
            return false;
        }
        C7704f c7704f = (C7704f) obj;
        return m6437n(this.f35239b) == m6437n(c7704f.f35239b) && m6437n(this.f35240c) == m6437n(c7704f.f35240c);
    }

    /* renamed from: f */
    public final boolean m6445f() {
        Boolean bool = this.f35239b;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: g */
    public final Boolean m6444g() {
        return this.f35240c;
    }

    /* renamed from: h */
    public final boolean m6443h() {
        Boolean bool = this.f35240c;
        return bool == null || bool.booleanValue();
    }

    public final int hashCode() {
        return ((m6437n(this.f35239b) + 527) * 31) + m6437n(this.f35240c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r4.f35239b == r0) goto L6;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6442i(com.google.android.gms.measurement.internal.C7704f r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Boolean r0 = r0.f35239b
            r5 = r0
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L1d
            r0 = r7
            r8 = r0
            r0 = r4
            java.lang.Boolean r0 = r0.f35239b
            r1 = r6
            if (r0 != r1) goto L39
        L1d:
            r0 = r3
            java.lang.Boolean r0 = r0.f35240c
            r1 = r6
            if (r0 != r1) goto L36
            r0 = r4
            java.lang.Boolean r0 = r0.f35240c
            r1 = r6
            if (r0 == r1) goto L34
            r0 = r7
            r8 = r0
            goto L39
        L34:
            r0 = 0
            return r0
        L36:
            r0 = 0
            r8 = r0
        L39:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C7704f.m6442i(com.google.android.gms.measurement.internal.f):boolean");
    }

    /* renamed from: k */
    public final C7704f m6440k(C7704f c7704f) {
        return new C7704f(m6441j(this.f35239b, c7704f.f35239b), m6441j(this.f35240c, c7704f.f35240c));
    }

    /* renamed from: l */
    public final C7704f m6439l(C7704f c7704f) {
        Boolean bool = this.f35239b;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = c7704f.f35239b;
        }
        Boolean bool3 = this.f35240c;
        Boolean bool4 = bool3;
        if (bool3 == null) {
            bool4 = c7704f.f35240c;
        }
        return new C7704f(bool2, bool4);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.f35239b;
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool.booleanValue() ? "denied" : "granted");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.f35240c;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool2.booleanValue() ? "denied" : "granted");
        }
        return sb.toString();
    }
}
