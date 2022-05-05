package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzad.class */
public final class zzad {

    /* renamed from: c */
    public static final zzad f8841c = new zzad(null, null);

    /* renamed from: a */
    private final Boolean f8842a;

    /* renamed from: b */
    private final Boolean f8843b;

    public zzad(Boolean bool, Boolean bool2) {
        this.f8842a = bool;
        this.f8843b = bool2;
    }

    /* renamed from: a */
    private static int m11737a(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    /* renamed from: b */
    public static zzad m11736b(String str) {
        Boolean bool = null;
        Boolean bool2 = null;
        if (str != null) {
            bool = str.length() >= 3 ? m11735c(str.charAt(2)) : null;
            if (str.length() >= 4) {
                bool2 = m11735c(str.charAt(3));
            }
        } else {
            bool2 = null;
        }
        return new zzad(bool, bool2);
    }

    /* renamed from: c */
    private static Boolean m11735c(char c) {
        if (c == '0') {
            return Boolean.FALSE;
        }
        if (c != '1') {
            return null;
        }
        return Boolean.TRUE;
    }

    /* renamed from: d */
    private static Boolean m11734d(Boolean bool, Boolean bool2) {
        if (bool == null) {
            return bool2;
        }
        if (bool2 == null) {
            return bool;
        }
        return Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
    }

    /* renamed from: f */
    public static String m11732f(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string != null && m11725m(string) == null) {
            return string;
        }
        String string2 = bundle.getString("analytics_storage");
        if (string2 == null || m11725m(string2) != null) {
            return null;
        }
        return string2;
    }

    /* renamed from: g */
    public static boolean m11731g(int i, int i2) {
        return i <= i2;
    }

    /* renamed from: i */
    private static char m11729i(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    /* renamed from: j */
    public static zzad m11728j(Bundle bundle) {
        return bundle == null ? f8841c : new zzad(m11725m(bundle.getString("ad_storage")), m11725m(bundle.getString("analytics_storage")));
    }

    /* renamed from: m */
    private static Boolean m11725m(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    /* renamed from: e */
    public final String m11733e() {
        return "G1" + m11729i(this.f8842a) + m11729i(this.f8843b);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzad)) {
            return false;
        }
        zzad zzadVar = (zzad) obj;
        return m11737a(this.f8842a) == m11737a(zzadVar.f8842a) && m11737a(this.f8843b) == m11737a(zzadVar.f8843b);
    }

    /* renamed from: h */
    public final boolean m11730h(zzad zzadVar) {
        Boolean bool = this.f8842a;
        Boolean bool2 = Boolean.FALSE;
        if (bool == bool2 && zzadVar.f8842a != bool2) {
            return true;
        }
        Boolean bool3 = this.f8843b;
        Boolean bool4 = Boolean.FALSE;
        return bool3 == bool4 && zzadVar.f8843b != bool4;
    }

    public final int hashCode() {
        return ((m11737a(this.f8842a) + 527) * 31) + m11737a(this.f8843b);
    }

    /* renamed from: k */
    public final zzad m11727k(zzad zzadVar) {
        return new zzad(m11734d(this.f8842a, zzadVar.f8842a), m11734d(this.f8843b, zzadVar.f8843b));
    }

    /* renamed from: l */
    public final Boolean m11726l() {
        return this.f8842a;
    }

    /* renamed from: n */
    public final zzad m11724n(zzad zzadVar) {
        Boolean bool = this.f8842a;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = zzadVar.f8842a;
        }
        Boolean bool3 = this.f8843b;
        Boolean bool4 = bool3;
        if (bool3 == null) {
            bool4 = zzadVar.f8843b;
        }
        return new zzad(bool2, bool4);
    }

    /* renamed from: o */
    public final boolean m11723o() {
        Boolean bool = this.f8842a;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: p */
    public final Boolean m11722p() {
        return this.f8843b;
    }

    /* renamed from: q */
    public final boolean m11721q() {
        Boolean bool = this.f8843b;
        return bool == null || bool.booleanValue();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.f8842a;
        String str = "granted";
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(bool.booleanValue() ? "granted" : "denied");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.f8843b;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            if (!bool2.booleanValue()) {
                str = "denied";
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
