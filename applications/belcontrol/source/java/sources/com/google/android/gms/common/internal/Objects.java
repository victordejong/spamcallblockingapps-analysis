package com.google.android.gms.common.internal;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/Objects.class */
public final class Objects {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/Objects$ToStringHelper.class */
    public static final class ToStringHelper {
        private final List<String> zza = new ArrayList();
        private final Object zzb;

        public /* synthetic */ ToStringHelper(Object obj, zzag zzagVar) {
            Preconditions.checkNotNull(obj);
            this.zzb = obj;
        }

        @RecentlyNonNull
        @KeepForSdk
        public ToStringHelper add(@RecentlyNonNull String str, Object obj) {
            List<String> list = this.zza;
            Preconditions.checkNotNull(str);
            String valueOf = String.valueOf(obj);
            StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(valueOf).length());
            sb.append(str);
            sb.append("=");
            sb.append(valueOf);
            list.add(sb.toString());
            return this;
        }

        @RecentlyNonNull
        @KeepForSdk
        public String toString() {
            StringBuilder sb = new StringBuilder(100);
            sb.append(this.zzb.getClass().getSimpleName());
            sb.append('{');
            int size = this.zza.size();
            for (int i = 0; i < size; i++) {
                sb.append(this.zza.get(i));
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
    public static boolean checkBundlesEquality(@RecentlyNonNull Bundle bundle, @RecentlyNonNull Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return bundle == bundle2;
        } else if (bundle.size() != bundle2.size()) {
            return false;
        } else {
            Set<String> keySet = bundle.keySet();
            if (!keySet.containsAll(bundle2.keySet())) {
                return false;
            }
            for (String str : keySet) {
                if (!equal(bundle.get(str), bundle2.get(str))) {
                    return false;
                }
            }
            return true;
        }
    }

    @KeepForSdk
    public static boolean equal(Object obj, Object obj2) {
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

    @KeepForSdk
    public static int hashCode(@RecentlyNonNull Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    @RecentlyNonNull
    @KeepForSdk
    public static ToStringHelper toStringHelper(@RecentlyNonNull Object obj) {
        return new ToStringHelper(obj, null);
    }
}
