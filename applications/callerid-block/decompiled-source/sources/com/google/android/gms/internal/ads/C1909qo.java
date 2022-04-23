package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.common.internal.C1579g;
import java.lang.reflect.Array;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* renamed from: com.google.android.gms.internal.ads.qo */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qo.class */
public final class C1909qo {
    /* renamed from: a */
    public static boolean m6081a(Bundle bundle, Bundle bundle2) {
        if (bundle == null || bundle2 == null) {
            return bundle == null && bundle2 == null;
        }
        if (bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if (obj == null || obj2 == null) {
                return obj == null && obj2 == null;
            }
            if (obj instanceof Bundle) {
                if (!(obj2 instanceof Bundle) || !m6081a((Bundle) obj, (Bundle) obj2)) {
                    return false;
                }
            } else if (obj.getClass().isArray()) {
                int length = Array.getLength(obj);
                if (!obj2.getClass().isArray() || length != Array.getLength(obj2)) {
                    return false;
                }
                for (int i = 0; i < length; i++) {
                    if (!C1579g.m8358a(Array.get(obj, i), Array.get(obj2, i))) {
                        return false;
                    }
                }
                continue;
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }
}
