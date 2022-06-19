package com.huawei.secure.android.common.util;

import android.text.TextUtils;
import java.util.regex.Pattern;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/LogsUtil.class */
public class LogsUtil {

    /* renamed from: a */
    private static final Pattern f8125a = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    /* renamed from: b */
    private static final char f8126b = '*';

    /* renamed from: c */
    private static final int f8127c = 2;

    /* renamed from: com.huawei.secure.android.common.util.LogsUtil$a */
    /* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/LogsUtil$a.class */
    public static class C2497a extends Throwable {

        /* renamed from: d */
        private static final long f8128d = 7129050843360571879L;

        /* renamed from: a */
        private String f8129a;

        /* renamed from: b */
        private Throwable f8130b;

        /* renamed from: c */
        private Throwable f8131c;

        public C2497a(Throwable th) {
            this.f8131c = th;
        }

        /* renamed from: a */
        public void m36903a(String str) {
            this.f8129a = str;
        }

        /* renamed from: a */
        public void m36902a(Throwable th) {
            this.f8130b = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            Throwable th = this.f8130b;
            Throwable th2 = th;
            if (th == this) {
                th2 = null;
            }
            return th2;
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            return this.f8129a;
        }

        @Override // java.lang.Throwable
        public String toString() {
            Throwable th = this.f8131c;
            if (th == null) {
                return "";
            }
            String name = th.getClass().getName();
            String str = name;
            if (this.f8129a != null) {
                String m8543z2 = C22128a.m8543z2(name, ": ");
                if (this.f8129a.startsWith(m8543z2)) {
                    return this.f8129a;
                }
                StringBuilder m8728C = C22128a.m8728C(m8543z2);
                m8728C.append(this.f8129a);
                str = m8728C.toString();
            }
            return str;
        }
    }

    /* renamed from: a */
    private static String m36932a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 1;
        if (1 == length) {
            return String.valueOf('*');
        }
        StringBuilder sb = new StringBuilder(length);
        int i2 = 0;
        while (i2 < length) {
            char charAt = str.charAt(i2);
            int i3 = i;
            char c = charAt;
            if (f8125a.matcher(String.valueOf(charAt)).matches()) {
                char c2 = charAt;
                if (i % 2 == 0) {
                    c2 = '*';
                }
                c = c2;
                i3 = i + 1;
            }
            sb.append(c);
            i2++;
            i = i3;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m36931a(String str, String str2) {
        StringBuilder sb = new StringBuilder(512);
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append(m36932a(str2));
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static String m36930a(String str, boolean z) {
        StringBuilder sb = new StringBuilder(512);
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                sb.append(m36932a(str));
            } else {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static Throwable m36929a(Throwable th) {
        if (th == null) {
            return null;
        }
        C2497a c2497a = new C2497a(th);
        c2497a.setStackTrace(th.getStackTrace());
        c2497a.m36903a(m36928b(th.getMessage()));
        Throwable cause = th.getCause();
        C2497a c2497a2 = c2497a;
        while (true) {
            C2497a c2497a3 = c2497a2;
            if (cause == null) {
                return c2497a;
            }
            C2497a c2497a4 = new C2497a(cause);
            c2497a4.setStackTrace(cause.getStackTrace());
            c2497a4.m36903a(m36928b(cause.getMessage()));
            c2497a3.m36902a(c2497a4);
            cause = cause.getCause();
            c2497a2 = c2497a4;
        }
    }

    /* renamed from: b */
    private static String m36928b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (i % 2 == 0) {
                charArray[i] = (char) 42;
            }
        }
        return new String(charArray);
    }

    /* renamed from: d */
    public static void m36927d(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, false);
    }

    /* renamed from: d */
    public static void m36926d(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            m36931a(str2, str3);
        }
    }

    /* renamed from: d */
    public static void m36925d(String str, String str2, String str3, Throwable th) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            m36931a(str2, str3);
            m36929a(th);
        }
    }

    /* renamed from: d */
    public static void m36924d(String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2) || th != null) {
            m36930a(str2, false);
            m36929a(th);
        }
    }

    /* renamed from: d */
    public static void m36923d(String str, String str2, Throwable th, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, z);
        m36929a(th);
    }

    /* renamed from: d */
    public static void m36922d(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, z);
    }

    /* renamed from: e */
    public static void m36921e(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, false);
    }

    /* renamed from: e */
    public static void m36920e(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            m36931a(str2, str3);
        }
    }

    /* renamed from: e */
    public static void m36919e(String str, String str2, String str3, Throwable th) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            m36931a(str2, str3);
            m36929a(th);
        }
    }

    /* renamed from: e */
    public static void m36918e(String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2) || th != null) {
            m36930a(str2, false);
            m36929a(th);
        }
    }

    /* renamed from: e */
    public static void m36917e(String str, String str2, Throwable th, boolean z) {
        if (!TextUtils.isEmpty(str2) || th != null) {
            m36930a(str2, z);
            m36929a(th);
        }
    }

    /* renamed from: e */
    public static void m36916e(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, z);
    }

    /* renamed from: i */
    public static void m36915i(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, false);
    }

    /* renamed from: i */
    public static void m36914i(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            m36931a(str2, str3);
        }
    }

    /* renamed from: i */
    public static void m36913i(String str, String str2, String str3, Throwable th) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            m36931a(str2, str3);
            m36929a(th);
        }
    }

    /* renamed from: i */
    public static void m36912i(String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2) || th != null) {
            m36930a(str2, false);
            m36929a(th);
        }
    }

    /* renamed from: i */
    public static void m36911i(String str, String str2, Throwable th, boolean z) {
        if (!TextUtils.isEmpty(str2) || th != null) {
            m36930a(str2, z);
            m36929a(th);
        }
    }

    /* renamed from: i */
    public static void m36910i(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, z);
    }

    /* renamed from: w */
    public static void m36909w(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, false);
    }

    /* renamed from: w */
    public static void m36908w(String str, String str2, String str3) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            m36931a(str2, str3);
        }
    }

    /* renamed from: w */
    public static void m36907w(String str, String str2, String str3, Throwable th) {
        if (!TextUtils.isEmpty(str2) || !TextUtils.isEmpty(str3)) {
            m36931a(str2, str3);
            m36929a(th);
        }
    }

    /* renamed from: w */
    public static void m36906w(String str, String str2, Throwable th) {
        if (!TextUtils.isEmpty(str2) || th != null) {
            m36930a(str2, false);
            m36929a(th);
        }
    }

    /* renamed from: w */
    public static void m36905w(String str, String str2, Throwable th, boolean z) {
        if (!TextUtils.isEmpty(str2) || th != null) {
            m36930a(str2, z);
            m36929a(th);
        }
    }

    /* renamed from: w */
    public static void m36904w(String str, String str2, boolean z) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        m36930a(str2, z);
    }
}
