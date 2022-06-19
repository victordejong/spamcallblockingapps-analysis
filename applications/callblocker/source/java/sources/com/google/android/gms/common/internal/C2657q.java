package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q.class */
public final class C2657q {

    /* renamed from: com.google.android.gms.common.internal.q$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/q$a.class */
    public static final class C2658a {

        /* renamed from: a */
        private final List<String> f7416a;

        /* renamed from: b */
        private final Object f7417b;

        private C2658a(Object obj) {
            this.f7417b = C2662s.m13981a(obj);
            this.f7416a = new ArrayList();
        }

        /* renamed from: a */
        public final C2658a m13990a(String str, Object obj) {
            List<String> list = this.f7416a;
            String str2 = (String) C2662s.m13981a(str);
            String valueOf = String.valueOf(obj);
            list.add(new StringBuilder(String.valueOf(str2).length() + 1 + String.valueOf(valueOf).length()).append(str2).append("=").append(valueOf).toString());
            return this;
        }

        public final String toString() {
            StringBuilder append = new StringBuilder(100).append(this.f7417b.getClass().getSimpleName()).append('{');
            int size = this.f7416a.size();
            for (int i = 0; i < size; i++) {
                append.append(this.f7416a.get(i));
                if (i < size - 1) {
                    append.append(", ");
                }
            }
            return append.append('}').toString();
        }
    }

    /* renamed from: a */
    public static int m13991a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static C2658a m13993a(Object obj) {
        return new C2658a(obj);
    }

    /* renamed from: a */
    public static boolean m13992a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
