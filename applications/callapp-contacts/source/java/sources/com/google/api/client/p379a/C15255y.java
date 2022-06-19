package com.google.api.client.p379a;

import com.google.common.base.C15391m;
/* renamed from: com.google.api.client.a.y */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/y.class */
public final class C15255y {

    /* renamed from: com.google.api.client.a.y$a */
    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/y$a.class */
    public static final class C15257a {

        /* renamed from: a */
        private final String f55136a;

        /* renamed from: b */
        private C15258a f55137b;

        /* renamed from: c */
        private C15258a f55138c;

        /* renamed from: d */
        private boolean f55139d;

        /* renamed from: com.google.api.client.a.y$a$a */
        /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/y$a$a.class */
        public static final class C15258a {

            /* renamed from: a */
            String f55140a;

            /* renamed from: b */
            Object f55141b;

            /* renamed from: c */
            C15258a f55142c;

            private C15258a() {
            }
        }

        C15257a(String str) {
            C15258a c15258a = new C15258a();
            this.f55137b = c15258a;
            this.f55138c = c15258a;
            this.f55136a = str;
        }

        /* renamed from: a */
        private C15258a m9205a() {
            C15258a c15258a = new C15258a();
            this.f55138c.f55142c = c15258a;
            this.f55138c = c15258a;
            return c15258a;
        }

        /* renamed from: a */
        public final C15257a m9204a(String str, Object obj) {
            return m9203b(str, obj);
        }

        /* renamed from: b */
        public final C15257a m9203b(String str, Object obj) {
            C15258a m9205a = m9205a();
            m9205a.f55141b = obj;
            m9205a.f55140a = (String) C15391m.m8946a(str);
            return this;
        }

        public final String toString() {
            String str;
            boolean z = this.f55139d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f55136a);
            sb.append('{');
            C15258a c15258a = this.f55137b.f55142c;
            String str2 = "";
            while (true) {
                String str3 = str2;
                if (c15258a == null) {
                    sb.append('}');
                    return sb.toString();
                }
                if (z) {
                    str = str3;
                    if (c15258a.f55141b == null) {
                        c15258a = c15258a.f55142c;
                        str2 = str;
                    }
                }
                sb.append(str3);
                if (c15258a.f55140a != null) {
                    sb.append(c15258a.f55140a);
                    sb.append('=');
                }
                sb.append(c15258a.f55141b);
                str = ", ";
                c15258a = c15258a.f55142c;
                str2 = str;
            }
        }
    }

    private C15255y() {
    }

    /* renamed from: a */
    public static C15257a m9206a(Object obj) {
        return new C15257a(obj.getClass().getSimpleName());
    }
}
