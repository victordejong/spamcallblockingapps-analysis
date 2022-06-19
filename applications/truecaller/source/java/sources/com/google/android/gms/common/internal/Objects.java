package com.google.android.gms.common.internal;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.List;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/Objects.class */
public final class Objects {

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/Objects$ToStringHelper.class */
    public static final class ToStringHelper {

        /* renamed from: a */
        public final List<String> f5990a = new ArrayList();

        /* renamed from: b */
        public final Object f5991b;

        public ToStringHelper(Object obj) {
            java.util.Objects.requireNonNull(obj, "null reference");
            this.f5991b = obj;
        }

        @KeepForSdk
        /* renamed from: a */
        public ToStringHelper m38909a(String str, Object obj) {
            List<String> list = this.f5990a;
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(str.length() + 1 + valueOf.length());
            sb.append(str);
            sb.append(ContainerUtils.KEY_VALUE_DELIMITER);
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        @KeepForSdk
        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.f5991b.getClass().getSimpleName());
            sb.append('{');
            int size = this.f5990a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f5990a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    private Objects() {
        throw new AssertionError("Uninstantiable");
    }

    @KeepForSdk
    /* renamed from: a */
    public static boolean m38910a(Object obj, Object obj2) {
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
