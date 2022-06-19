package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/g.class */
public final class C1579g {

    /* renamed from: com.google.android.gms.common.internal.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/g$a.class */
    public static final class C1580a {

        /* renamed from: a */
        private final List<String> f5858a = new ArrayList();

        /* renamed from: b */
        private final Object f5859b;

        /* synthetic */ C1580a(Object obj, C1590r c1590r) {
            C1581h.m8347h(obj);
            this.f5859b = obj;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C1580a m8355a(@RecentlyNonNull String str, Object obj) {
            List<String> list = this.f5858a;
            C1581h.m8347h(str);
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(valueOf).length());
            sb.append(str);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        @RecentlyNonNull
        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f5859b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f5858a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f5858a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static boolean m8358a(Object obj, Object obj2) {
        boolean z = false;
        if (obj != obj2) {
            if (obj != null) {
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: b */
    public static int m8357b(@RecentlyNonNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static C1580a m8356c(@RecentlyNonNull Object obj) {
        return new C1580a(obj, null);
    }
}
