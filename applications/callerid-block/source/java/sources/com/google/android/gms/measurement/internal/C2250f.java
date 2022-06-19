package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f.class */
public final class C2250f {

    /* renamed from: c */
    public static final C2250f f10177c = new C2250f(null, null);

    /* renamed from: a */
    private final Boolean f10178a;

    /* renamed from: b */
    private final Boolean f10179b;

    public C2250f(Boolean bool, Boolean bool2) {
        this.f10178a = bool;
        this.f10179b = bool2;
    }

    /* renamed from: a */
    public static String m3937a(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string == null || m3923o(string) != null) {
            String string2 = bundle.getString("analytics_storage");
            if (string2 != null && m3923o(string2) == null) {
                return string2;
            }
            return null;
        }
        return string;
    }

    /* renamed from: b */
    public static C2250f m3936b(Bundle bundle) {
        return bundle == null ? f10177c : new C2250f(m3923o(bundle.getString("ad_storage")), m3923o(bundle.getString("analytics_storage")));
    }

    /* renamed from: c */
    public static C2250f m3935c(String str) {
        Boolean bool;
        Boolean bool2 = null;
        if (str != null) {
            Boolean m3922p = str.length() >= 3 ? m3922p(str.charAt(2)) : null;
            if (str.length() >= 4) {
                bool2 = m3922p(str.charAt(3));
            }
            bool = m3922p;
        } else {
            bool2 = null;
            bool = null;
        }
        return new C2250f(bool, bool2);
    }

    /* renamed from: j */
    static Boolean m3928j(Boolean bool, Boolean bool2) {
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
    public static boolean m3925m(int i, int i2) {
        return i <= i2;
    }

    /* renamed from: n */
    static final int m3924n(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    /* renamed from: o */
    private static Boolean m3923o(String str) {
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
    private static Boolean m3922p(char c) {
        if (c != '0') {
            if (c == '1') {
                return Boolean.TRUE;
            }
            return null;
        }
        return Boolean.FALSE;
    }

    /* renamed from: q */
    private static final char m3921q(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    /* renamed from: d */
    public final String m3934d() {
        return "G1" + m3921q(this.f10178a) + m3921q(this.f10179b);
    }

    /* renamed from: e */
    public final Boolean m3933e() {
        return this.f10178a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C2250f)) {
            return false;
        }
        C2250f c2250f = (C2250f) obj;
        return m3924n(this.f10178a) == m3924n(c2250f.f10178a) && m3924n(this.f10179b) == m3924n(c2250f.f10179b);
    }

    /* renamed from: f */
    public final boolean m3932f() {
        Boolean bool = this.f10178a;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: g */
    public final Boolean m3931g() {
        return this.f10179b;
    }

    /* renamed from: h */
    public final boolean m3930h() {
        Boolean bool = this.f10179b;
        return bool == null || bool.booleanValue();
    }

    public final int hashCode() {
        return ((m3924n(this.f10178a) + 527) * 31) + m3924n(this.f10179b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r4.f10178a == r0) goto L6;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m3929i(com.google.android.gms.measurement.internal.C2250f r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Boolean r0 = r0.f10178a
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
            java.lang.Boolean r0 = r0.f10178a
            r1 = r6
            if (r0 != r1) goto L39
        L1d:
            r0 = r3
            java.lang.Boolean r0 = r0.f10179b
            r1 = r6
            if (r0 != r1) goto L36
            r0 = r4
            java.lang.Boolean r0 = r0.f10179b
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2250f.m3929i(com.google.android.gms.measurement.internal.f):boolean");
    }

    /* renamed from: k */
    public final C2250f m3927k(C2250f c2250f) {
        return new C2250f(m3928j(this.f10178a, c2250f.f10178a), m3928j(this.f10179b, c2250f.f10179b));
    }

    /* renamed from: l */
    public final C2250f m3926l(C2250f c2250f) {
        Boolean bool = this.f10178a;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = c2250f.f10178a;
        }
        Boolean bool3 = this.f10179b;
        Boolean bool4 = bool3;
        if (bool3 == null) {
            bool4 = c2250f.f10179b;
        }
        return new C2250f(bool2, bool4);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.f10178a;
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool.booleanValue() ? "denied" : "granted");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.f10179b;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool2.booleanValue() ? "denied" : "granted");
        }
        return sb.toString();
    }
}
