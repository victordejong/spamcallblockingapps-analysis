package com.google.api.client.a;

import com.google.common.base.m;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/y.class */
public final class y {

    /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/y$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f31669a;

        /* renamed from: b  reason: collision with root package name */
        private C0496a f31670b;

        /* renamed from: c  reason: collision with root package name */
        private C0496a f31671c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f31672d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.api.client.a.y$a$a  reason: collision with other inner class name */
        /* loaded from: classes4-dex2jar.jar:com/google/api/client/a/y$a$a.class */
        public static final class C0496a {

            /* renamed from: a  reason: collision with root package name */
            String f31673a;

            /* renamed from: b  reason: collision with root package name */
            Object f31674b;

            /* renamed from: c  reason: collision with root package name */
            C0496a f31675c;

            private C0496a() {
            }
        }

        a(String str) {
            C0496a aVar = new C0496a();
            this.f31670b = aVar;
            this.f31671c = aVar;
            this.f31669a = str;
        }

        private C0496a a() {
            C0496a aVar = new C0496a();
            this.f31671c.f31675c = aVar;
            this.f31671c = aVar;
            return aVar;
        }

        public final a a(String str, Object obj) {
            return b(str, obj);
        }

        public final a b(String str, Object obj) {
            C0496a a2 = a();
            a2.f31674b = obj;
            a2.f31673a = (String) m.a(str);
            return this;
        }

        public final String toString() {
            boolean z = this.f31672d;
            StringBuilder sb = new StringBuilder(32);
            sb.append(this.f31669a);
            sb.append('{');
            String str = "";
            for (C0496a aVar = this.f31670b.f31675c; aVar != null; aVar = aVar.f31675c) {
                if (z) {
                    str = str;
                    if (aVar.f31674b == null) {
                    }
                }
                sb.append(str);
                if (aVar.f31673a != null) {
                    sb.append(aVar.f31673a);
                    sb.append('=');
                }
                sb.append(aVar.f31674b);
                str = ", ";
            }
            sb.append('}');
            return sb.toString();
        }
    }

    private y() {
    }

    public static a a(Object obj) {
        return new a(obj.getClass().getSimpleName());
    }
}
