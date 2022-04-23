package com.applovin.impl.sdk.utils;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/BundleUtils.class */
public class BundleUtils {
    public static boolean getBoolean(String str, Bundle bundle) {
        return getBoolean(str, false, bundle);
    }

    public static boolean getBoolean(String str, boolean z, Bundle bundle) {
        if (!TextUtils.isEmpty(str) && bundle != null && bundle.containsKey(str)) {
            Object obj = bundle.get(str);
            if (obj instanceof Boolean) {
                return ((Boolean) obj).booleanValue();
            }
            if (obj instanceof Number) {
                return ((Number) obj).intValue() != 0;
            }
            if (obj instanceof String) {
                String str2 = (String) obj;
                if (str2.equalsIgnoreCase("true") || str2.equalsIgnoreCase("1")) {
                    return true;
                }
                if (str2.equalsIgnoreCase("false") || str2.equalsIgnoreCase("0")) {
                    return false;
                }
                return z;
            }
        }
        return z;
    }

    public static int getInt(String str, int i, Bundle bundle) {
        if (!TextUtils.isEmpty(str) && bundle != null && bundle.containsKey(str)) {
            Object obj = bundle.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).intValue();
            }
            if (obj instanceof String) {
                try {
                    return Integer.parseInt((String) obj);
                } catch (NumberFormatException e) {
                }
            }
        }
        return i;
    }

    public static int getInt(String str, Bundle bundle) {
        return getInt(str, 0, bundle);
    }

    public static int getLong(String str, Bundle bundle) {
        return getInt(str, 0, bundle);
    }

    public static long getLong(String str, long j, Bundle bundle) {
        if (!TextUtils.isEmpty(str) && bundle != null && bundle.containsKey(str)) {
            Object obj = bundle.get(str);
            if (obj instanceof Number) {
                return ((Number) obj).longValue();
            }
            if (obj instanceof String) {
                try {
                    return Long.parseLong((String) obj);
                } catch (NumberFormatException e) {
                }
            }
        }
        return j;
    }

    public static String getString(String str, Bundle bundle) {
        return getString(str, null, bundle);
    }

    public static String getString(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str) || bundle == null || !bundle.containsKey(str)) {
            return str2;
        }
        Object obj = bundle.get(str);
        return obj instanceof String ? (String) obj : String.valueOf(obj);
    }

    public static Map<String, Object> toMap(Bundle bundle) {
        Object map;
        if (bundle == null) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap(bundle.size());
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null) {
                if (obj instanceof Bundle) {
                    map = toMap((Bundle) obj);
                } else {
                    boolean z = obj instanceof Collection;
                    if (!z) {
                        map = obj;
                        if (obj instanceof Parcelable[]) {
                        }
                    }
                    Collection asList = z ? (Collection) obj : Arrays.asList((Parcelable[]) obj);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : asList) {
                        Object obj3 = obj2;
                        if (obj2 instanceof Bundle) {
                            obj3 = toMap((Bundle) obj2);
                        }
                        arrayList.add(obj3);
                    }
                    hashMap.put(str, arrayList);
                }
                hashMap.put(str, map);
            }
        }
        return hashMap;
    }
}
