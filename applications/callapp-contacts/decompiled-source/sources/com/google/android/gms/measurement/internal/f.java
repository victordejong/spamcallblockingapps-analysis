package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.mopub.common.Constants;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final f f29611a = new f(null, null);

    /* renamed from: b  reason: collision with root package name */
    final Boolean f29612b;

    /* renamed from: c  reason: collision with root package name */
    final Boolean f29613c;

    public f(Boolean bool, Boolean bool2) {
        this.f29612b = bool;
        this.f29613c = bool2;
    }

    private static int a(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    public static f a(String str) {
        Boolean bool = null;
        Boolean bool2 = null;
        if (str != null) {
            bool = str.length() >= 3 ? a(str.charAt(2)) : null;
            if (str.length() >= 4) {
                bool2 = a(str.charAt(3));
            }
        } else {
            bool2 = null;
        }
        return new f(bool, bool2);
    }

    private static Boolean a(char c2) {
        if (c2 == '0') {
            return Boolean.FALSE;
        }
        if (c2 != '1') {
            return null;
        }
        return Boolean.TRUE;
    }

    private static Boolean a(Boolean bool, Boolean bool2) {
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

    public static String a(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string != null && b(string) == null) {
            return string;
        }
        String string2 = bundle.getString("analytics_storage");
        if (string2 == null || b(string2) != null) {
            return null;
        }
        return string2;
    }

    public static boolean a(int i, int i2) {
        return i <= i2;
    }

    private static final char b(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    public static f b(Bundle bundle) {
        return bundle == null ? f29611a : new f(b(bundle.getString("ad_storage")), b(bundle.getString("analytics_storage")));
    }

    private static Boolean b(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals(Constants.TAS_DENIED)) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final String a() {
        return "G1" + b(this.f29612b) + b(this.f29613c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
        if (r4.f29612b == java.lang.Boolean.FALSE) goto L_0x001f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a(com.google.android.gms.measurement.internal.f r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Boolean r0 = r0.f29612b
            r5 = r0
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L_0x001f
            r0 = r7
            r8 = r0
            r0 = r4
            java.lang.Boolean r0 = r0.f29612b
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 != r1) goto L_0x003f
        L_0x001f:
            r0 = r3
            java.lang.Boolean r0 = r0.f29613c
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 != r1) goto L_0x003c
            r0 = r4
            java.lang.Boolean r0 = r0.f29613c
            java.lang.Boolean r1 = java.lang.Boolean.FALSE
            if (r0 == r1) goto L_0x003a
            r0 = r7
            r8 = r0
            goto L_0x003f
        L_0x003a:
            r0 = 0
            return r0
        L_0x003c:
            r0 = 0
            r8 = r0
        L_0x003f:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.f.a(com.google.android.gms.measurement.internal.f):boolean");
    }

    public final f b(f fVar) {
        return new f(a(this.f29612b, fVar.f29612b), a(this.f29613c, fVar.f29613c));
    }

    public final boolean b() {
        Boolean bool = this.f29612b;
        return bool == null || bool.booleanValue();
    }

    public final f c(f fVar) {
        Boolean bool = this.f29612b;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = fVar.f29612b;
        }
        Boolean bool3 = this.f29613c;
        Boolean bool4 = bool3;
        if (bool3 == null) {
            bool4 = fVar.f29613c;
        }
        return new f(bool2, bool4);
    }

    public final boolean c() {
        Boolean bool = this.f29613c;
        return bool == null || bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return a(this.f29612b) == a(fVar.f29612b) && a(this.f29613c) == a(fVar.f29613c);
    }

    public final int hashCode() {
        return ((a(this.f29612b) + 527) * 31) + a(this.f29613c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.f29612b;
        String str = Constants.TAS_DENIED;
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool.booleanValue() ? Constants.TAS_DENIED : "granted");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.f29613c;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            if (true == bool2.booleanValue()) {
                str = "granted";
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
