package com.huawei.hms.common.internal;

import com.huawei.hms.framework.common.ContainerUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/Objects.class */
public final class Objects {

    /* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/internal/Objects$ToStringHelper.class */
    public static final class ToStringHelper {

        /* renamed from: a */
        public final List<String> f7360a;

        /* renamed from: b */
        public final Object f7361b;

        public ToStringHelper(Object obj) {
            this.f7361b = Preconditions.checkNotNull(obj);
            this.f7360a = new ArrayList();
        }

        public final ToStringHelper add(String str, Object obj) {
            String str2 = (String) Preconditions.checkNotNull(str);
            String valueOf = String.valueOf(obj);
            this.f7360a.add(C22128a.m8610j(new StringBuilder(valueOf.length() + str2.length() + 1), str2, ContainerUtils.KEY_VALUE_DELIMITER, valueOf));
            return this;
        }

        public final String toString() {
            String simpleName = this.f7361b.getClass().getSimpleName();
            StringBuilder sb = new StringBuilder(100);
            sb.append(simpleName);
            sb.append('{');
            int size = this.f7360a.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.f7360a.get(i));
                if (i < size - 1) {
                    sb.append(", ");
                }
            }
            sb.append('}');
            return sb.toString();
        }
    }

    public Objects() {
        throw new AssertionError("Uninstantiable");
    }

    public static boolean equal(Object obj, Object obj2) {
        boolean z = true;
        if (obj == obj2) {
            return true;
        }
        if (obj == null || !obj.equals(obj2)) {
            z = false;
        }
        return z;
    }

    public static int hashCode(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static ToStringHelper toStringHelper(Object obj) {
        return new ToStringHelper(obj);
    }
}
