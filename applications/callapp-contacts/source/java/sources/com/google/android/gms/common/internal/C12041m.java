package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.google.android.gms.common.internal.m */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/m.class */
public final class C12041m {

    /* renamed from: com.google.android.gms.common.internal.m$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/m$a.class */
    public static final class C12042a {

        /* renamed from: a */
        private final List<String> f39563a = new ArrayList();

        /* renamed from: b */
        private final Object f39564b;

        /* synthetic */ C12042a(Object obj, C11998ax c11998ax) {
            C12045o.m19162a(obj);
            this.f39564b = obj;
        }

        /* renamed from: a */
        public final C12042a m19166a(String str, Object obj) {
            List<String> list = this.f39563a;
            C12045o.m19162a(str);
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(valueOf).length());
            sb.append(str);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f39564b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f39563a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f39563a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    private C12041m() {
        throw new AssertionError("Uninstantiable");
    }

    /* renamed from: a */
    public static int m19167a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    /* renamed from: a */
    public static C12042a m19169a(Object obj) {
        return new C12042a(obj, null);
    }

    /* renamed from: a */
    public static boolean m19168a(Object obj, Object obj2) {
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
}
