package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzac.class */
public final class zzac {

    /* renamed from: c */
    public static final zzac f29791c = new zzac(null, null);

    /* renamed from: a */
    public final Boolean f29792a;

    /* renamed from: b */
    public final Boolean f29793b;

    public zzac(Boolean bool, Boolean bool2) {
        this.f29792a = bool;
        this.f29793b = bool2;
    }

    /* renamed from: a */
    public static int m9317a(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    /* renamed from: a */
    public static zzac m9315a(String str) {
        Boolean bool = null;
        Boolean bool2 = null;
        if (str != null) {
            bool = str.length() >= 3 ? m9321a(str.charAt(2)) : null;
            if (str.length() >= 4) {
                bool2 = m9321a(str.charAt(3));
            }
        } else {
            bool2 = null;
        }
        return new zzac(bool, bool2);
    }

    /* renamed from: a */
    public static Boolean m9321a(char c) {
        if (c == '0') {
            return Boolean.FALSE;
        }
        if (c != '1') {
            return null;
        }
        return Boolean.TRUE;
    }

    /* renamed from: a */
    public static Boolean m9316a(Boolean bool, Boolean bool2) {
        if (bool == null) {
            return bool2;
        }
        if (bool2 == null) {
            return bool;
        }
        return Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
    }

    /* renamed from: a */
    public static String m9319a(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string != null && m9310b(string) == null) {
            return string;
        }
        String string2 = bundle.getString("analytics_storage");
        if (string2 == null || m9310b(string2) != null) {
            return null;
        }
        return string2;
    }

    /* renamed from: a */
    public static boolean m9320a(int i, int i2) {
        return i <= i2;
    }

    /* renamed from: b */
    public static char m9311b(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    /* renamed from: b */
    public static zzac m9313b(Bundle bundle) {
        return bundle == null ? f29791c : new zzac(m9310b(bundle.getString("ad_storage")), m9310b(bundle.getString("analytics_storage")));
    }

    /* renamed from: b */
    public static Boolean m9310b(String str) {
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

    /* renamed from: a */
    public final String m9322a() {
        return "G1" + m9311b(this.f29792a) + m9311b(this.f29793b);
    }

    /* renamed from: a */
    public final boolean m9318a(zzac zzacVar) {
        Boolean bool = this.f29792a;
        Boolean bool2 = Boolean.FALSE;
        if (bool == bool2 && zzacVar.f29792a != bool2) {
            return true;
        }
        Boolean bool3 = this.f29793b;
        Boolean bool4 = Boolean.FALSE;
        return bool3 == bool4 && zzacVar.f29793b != bool4;
    }

    /* renamed from: b */
    public final zzac m9312b(zzac zzacVar) {
        return new zzac(m9316a(this.f29792a, zzacVar.f29792a), m9316a(this.f29793b, zzacVar.f29793b));
    }

    /* renamed from: b */
    public final Boolean m9314b() {
        return this.f29792a;
    }

    /* renamed from: c */
    public final zzac m9308c(zzac zzacVar) {
        Boolean bool = this.f29792a;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = zzacVar.f29792a;
        }
        Boolean bool3 = this.f29793b;
        Boolean bool4 = bool3;
        if (bool3 == null) {
            bool4 = zzacVar.f29793b;
        }
        return new zzac(bool2, bool4);
    }

    /* renamed from: c */
    public final boolean m9309c() {
        Boolean bool = this.f29792a;
        return bool == null || bool.booleanValue();
    }

    /* renamed from: d */
    public final Boolean m9307d() {
        return this.f29793b;
    }

    /* renamed from: e */
    public final boolean m9306e() {
        Boolean bool = this.f29793b;
        return bool == null || bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzac)) {
            return false;
        }
        zzac zzacVar = (zzac) obj;
        return m9317a(this.f29792a) == m9317a(zzacVar.f29792a) && m9317a(this.f29793b) == m9317a(zzacVar.f29793b);
    }

    public final int hashCode() {
        return ((m9317a(this.f29792a) + 527) * 31) + m9317a(this.f29793b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.f29792a;
        String str = "granted";
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(bool.booleanValue() ? "granted" : "denied");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.f29793b;
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
