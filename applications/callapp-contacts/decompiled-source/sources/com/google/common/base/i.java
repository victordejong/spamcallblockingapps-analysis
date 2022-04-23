package com.google.common.base;

import java.util.Arrays;
import java.util.Objects;
/* loaded from: classes4-dex2jar.jar:com/google/common/base/i.class */
public final class i {

    /* loaded from: classes4-dex2jar.jar:com/google/common/base/i$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f31927a;

        /* renamed from: b  reason: collision with root package name */
        private final C0508a f31928b;

        /* renamed from: c  reason: collision with root package name */
        private C0508a f31929c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f31930d;

        /* renamed from: com.google.common.base.i$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/google/common/base/i$a$a.class */
        public static final class C0508a {

            /* renamed from: a  reason: collision with root package name */
            String f31931a;

            /* renamed from: b  reason: collision with root package name */
            public Object f31932b;

            /* renamed from: c  reason: collision with root package name */
            C0508a f31933c;

            private C0508a() {
            }
        }

        private a(String str) {
            C0508a aVar = new C0508a();
            this.f31928b = aVar;
            this.f31929c = aVar;
            this.f31930d = false;
            this.f31927a = (String) m.a(str);
        }

        public final C0508a a() {
            C0508a aVar = new C0508a();
            this.f31929c.f31933c = aVar;
            this.f31929c = aVar;
            return aVar;
        }

        public final a a(String str, int i) {
            return a(str, String.valueOf(i));
        }

        public final a a(String str, Object obj) {
            C0508a a2 = a();
            a2.f31932b = obj;
            a2.f31931a = (String) m.a(str);
            return this;
        }

        public final String toString() {
            boolean z = this.f31930d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f31927a);
            sb.append('{');
            String str = "";
            for (C0508a aVar = this.f31928b.f31933c; aVar != null; aVar = aVar.f31933c) {
                Object obj = aVar.f31932b;
                if (z) {
                    str = str;
                    if (obj == null) {
                    }
                }
                sb.append(str);
                if (aVar.f31931a != null) {
                    sb.append(aVar.f31931a);
                    sb.append('=');
                }
                if (obj == null || !obj.getClass().isArray()) {
                    sb.append(obj);
                } else {
                    String deepToString = Arrays.deepToString(new Object[]{obj});
                    sb.append((CharSequence) deepToString, 1, deepToString.length() - 1);
                }
                str = ", ";
            }
            sb.append('}');
            return sb.toString();
        }
    }

    private i() {
    }

    public static <T> T a(T t, T t2) {
        if (t != null) {
            return t;
        }
        Objects.requireNonNull(t2, "Both parameters are null");
        return t2;
    }
}
