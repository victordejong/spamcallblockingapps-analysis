package com.google.api.client.util;

import com.google.common.base.C8751g;
/* renamed from: com.google.api.client.util.v */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/v.class */
public final class C8727v {

    /* renamed from: com.google.api.client.util.v$b */
    /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/v$b.class */
    public static final class C8729b {

        /* renamed from: a */
        private final String f38560a;

        /* renamed from: b */
        private C8730a f38561b;

        /* renamed from: c */
        private C8730a f38562c;

        /* renamed from: d */
        private boolean f38563d;

        /* renamed from: com.google.api.client.util.v$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/api/client/util/v$b$a.class */
        public static final class C8730a {

            /* renamed from: a */
            String f38564a;

            /* renamed from: b */
            Object f38565b;

            /* renamed from: c */
            C8730a f38566c;

            private C8730a() {
            }
        }

        C8729b(String str) {
            C8730a c8730a = new C8730a();
            this.f38561b = c8730a;
            this.f38562c = c8730a;
            this.f38560a = str;
        }

        /* renamed from: b */
        private C8730a m2841b() {
            C8730a c8730a = new C8730a();
            this.f38562c.f38566c = c8730a;
            this.f38562c = c8730a;
            return c8730a;
        }

        /* renamed from: c */
        private C8729b m2840c(String str, Object obj) {
            C8730a m2841b = m2841b();
            m2841b.f38565b = obj;
            m2841b.f38564a = (String) C8731w.m2836d(str);
            return this;
        }

        /* renamed from: a */
        public C8729b m2842a(String str, Object obj) {
            return m2840c(str, obj);
        }

        public String toString() {
            String str;
            boolean z = this.f38563d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f38560a);
            sb.append('{');
            C8730a c8730a = this.f38561b.f38566c;
            String str2 = "";
            while (true) {
                String str3 = str2;
                if (c8730a == null) {
                    sb.append('}');
                    return sb.toString();
                }
                if (z) {
                    str = str3;
                    if (c8730a.f38565b == null) {
                        c8730a = c8730a.f38566c;
                        str2 = str;
                    }
                }
                sb.append(str3);
                String str4 = c8730a.f38564a;
                if (str4 != null) {
                    sb.append(str4);
                    sb.append('=');
                }
                sb.append(c8730a.f38565b);
                str = ", ";
                c8730a = c8730a.f38566c;
                str2 = str;
            }
        }
    }

    /* renamed from: a */
    public static boolean m2844a(Object obj, Object obj2) {
        return C8751g.m2804a(obj, obj2);
    }

    /* renamed from: b */
    public static C8729b m2843b(Object obj) {
        return new C8729b(obj.getClass().getSimpleName());
    }
}
