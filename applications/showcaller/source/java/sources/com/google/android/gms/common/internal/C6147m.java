package com.google.android.gms.common.internal;

import androidx.annotation.RecentlyNonNull;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.m */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/m.class */
public final class C6147m {

    /* renamed from: com.google.android.gms.common.internal.m$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/m$a.class */
    public static final class C6148a {

        /* renamed from: a */
        private final List<String> f19570a = new ArrayList();

        /* renamed from: b */
        private final Object f19571b;

        /* synthetic */ C6148a(Object obj, C6188x0 c6188x0) {
            C6155o.m17018j(obj);
            this.f19571b = obj;
        }

        @RecentlyNonNull
        /* renamed from: a */
        public C6148a m17041a(@RecentlyNonNull String str, Object obj) {
            List<String> list = this.f19570a;
            C6155o.m17018j(str);
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(str.length() + 1 + valueOf.length());
            sb.append(str);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        @RecentlyNonNull
        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f19571b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f19570a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f19570a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: a */
    public static boolean m17044a(Object obj, Object obj2) {
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
    public static int m17043b(@RecentlyNonNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @RecentlyNonNull
    /* renamed from: c */
    public static C6148a m17042c(@RecentlyNonNull Object obj) {
        return new C6148a(obj, null);
    }
}
