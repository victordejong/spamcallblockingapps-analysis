package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/m.class */
public final class m {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/m$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<String> f22897a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        private final Object f22898b;

        /* synthetic */ a(Object obj, ax axVar) {
            o.a(obj);
            this.f22898b = obj;
        }

        public final a a(String str, Object obj) {
            List<String> list = this.f22897a;
            o.a(str);
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
            sb.append(this.f22898b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f22897a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f22897a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    private m() {
        throw new AssertionError("Uninstantiable");
    }

    public static int a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static a a(Object obj) {
        return new a(obj, null);
    }

    public static boolean a(Object obj, Object obj2) {
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
