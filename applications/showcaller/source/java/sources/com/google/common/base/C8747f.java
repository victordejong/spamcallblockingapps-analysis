package com.google.common.base;

import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.common.base.f */
/* loaded from: classes2-dex2jar.jar:com/google/common/base/f.class */
public final class C8747f {

    /* renamed from: com.google.common.base.f$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/base/f$b.class */
    public static final class C8749b {

        /* renamed from: a */
        private final String f38623a;

        /* renamed from: b */
        private final C8750a f38624b;

        /* renamed from: c */
        private C8750a f38625c;

        /* renamed from: d */
        private boolean f38626d;

        /* renamed from: com.google.common.base.f$b$a */
        /* loaded from: classes2-dex2jar.jar:com/google/common/base/f$b$a.class */
        public static final class C8750a {

            /* renamed from: a */
            String f38627a;

            /* renamed from: b */
            Object f38628b;

            /* renamed from: c */
            C8750a f38629c;

            private C8750a() {
            }
        }

        private C8749b(String str) {
            C8750a c8750a = new C8750a();
            this.f38624b = c8750a;
            this.f38625c = c8750a;
            this.f38626d = false;
            this.f38623a = (String) C8756j.m2789l(str);
        }

        /* renamed from: c */
        private C8750a m2808c() {
            C8750a c8750a = new C8750a();
            this.f38625c.f38629c = c8750a;
            this.f38625c = c8750a;
            return c8750a;
        }

        /* renamed from: d */
        private C8749b m2807d(Object obj) {
            m2808c().f38628b = obj;
            return this;
        }

        /* renamed from: e */
        private C8749b m2806e(String str, Object obj) {
            C8750a m2808c = m2808c();
            m2808c.f38628b = obj;
            m2808c.f38627a = (String) C8756j.m2789l(str);
            return this;
        }

        /* renamed from: a */
        public C8749b m2810a(String str, int i) {
            return m2806e(str, String.valueOf(i));
        }

        /* renamed from: b */
        public C8749b m2809b(String str, Object obj) {
            return m2806e(str, obj);
        }

        /* renamed from: f */
        public C8749b m2805f(Object obj) {
            return m2807d(obj);
        }

        public String toString() {
            String str;
            boolean z = this.f38626d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f38623a);
            sb.append('{');
            C8750a c8750a = this.f38624b.f38629c;
            String str2 = "";
            while (true) {
                String str3 = str2;
                if (c8750a == null) {
                    sb.append('}');
                    return sb.toString();
                }
                Object obj = c8750a.f38628b;
                if (z) {
                    str = str3;
                    if (obj == null) {
                        c8750a = c8750a.f38629c;
                        str2 = str;
                    }
                }
                sb.append(str3);
                String str4 = c8750a.f38627a;
                if (str4 != null) {
                    sb.append(str4);
                    sb.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                }
                str = ", ";
                c8750a = c8750a.f38629c;
                str2 = str;
            }
        }
    }

    /* renamed from: a */
    public static <T> T m2812a(T t, T t2) {
        if (t != null) {
            return t;
        }
        Objects.requireNonNull(t2, "Both parameters are null");
        return t2;
    }

    /* renamed from: b */
    public static C8749b m2811b(Object obj) {
        return new C8749b(obj.getClass().getSimpleName());
    }
}
