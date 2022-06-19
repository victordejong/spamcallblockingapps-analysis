package com.google.common.base;

import java.util.Arrays;
import java.util.Objects;
/* renamed from: com.google.common.base.i */
/* loaded from: classes4-dex2jar.jar:com/google/common/base/i.class */
public final class C15382i {

    /* renamed from: com.google.common.base.i$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/base/i$a.class */
    public static final class C15384a {

        /* renamed from: a */
        private final String f55629a;

        /* renamed from: b */
        private final C15385a f55630b;

        /* renamed from: c */
        private C15385a f55631c;

        /* renamed from: d */
        private boolean f55632d;

        /* renamed from: com.google.common.base.i$a$a */
        /* loaded from: classes4-dex2jar.jar:com/google/common/base/i$a$a.class */
        public static final class C15385a {

            /* renamed from: a */
            String f55633a;

            /* renamed from: b */
            public Object f55634b;

            /* renamed from: c */
            C15385a f55635c;

            private C15385a() {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public C15384a(String str) {
            C15385a c15385a = new C15385a();
            this.f55630b = c15385a;
            this.f55631c = c15385a;
            this.f55632d = false;
            this.f55629a = (String) C15391m.m8946a(str);
        }

        /* renamed from: a */
        public final C15385a m8954a() {
            C15385a c15385a = new C15385a();
            this.f55631c.f55635c = c15385a;
            this.f55631c = c15385a;
            return c15385a;
        }

        /* renamed from: a */
        public final C15384a m8953a(String str, int i) {
            return m8952a(str, String.valueOf(i));
        }

        /* renamed from: a */
        public final C15384a m8952a(String str, Object obj) {
            C15385a m8954a = m8954a();
            m8954a.f55634b = obj;
            m8954a.f55633a = (String) C15391m.m8946a(str);
            return this;
        }

        public final String toString() {
            String str;
            boolean z = this.f55632d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f55629a);
            sb.append('{');
            C15385a c15385a = this.f55630b.f55635c;
            String str2 = "";
            while (true) {
                String str3 = str2;
                if (c15385a == null) {
                    sb.append('}');
                    return sb.toString();
                }
                Object obj = c15385a.f55634b;
                if (z) {
                    str = str3;
                    if (obj == null) {
                        c15385a = c15385a.f55635c;
                        str2 = str;
                    }
                }
                sb.append(str3);
                if (c15385a.f55633a != null) {
                    sb.append(c15385a.f55633a);
                    sb.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                }
                str = ", ";
                c15385a = c15385a.f55635c;
                str2 = str;
            }
        }
    }

    private C15382i() {
    }

    /* renamed from: a */
    public static <T> T m8955a(T t, T t2) {
        if (t != null) {
            return t;
        }
        Objects.requireNonNull(t2, "Both parameters are null");
        return t2;
    }
}
