package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.asus.updatesdk.BuildConfig;
import com.google.android.gms.analytics.zzg;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/zzg.class */
public abstract class zzg<T extends zzg> {
    private static String a(Object obj, int i) {
        String obj2;
        if (i > 10) {
            obj2 = "ERROR: Recursive toString calls";
        } else if (obj == null) {
            obj2 = BuildConfig.FLAVOR;
        } else if (obj instanceof String) {
            obj2 = TextUtils.isEmpty((String) obj) ? BuildConfig.FLAVOR : obj.toString();
        } else if (obj instanceof Integer) {
            obj2 = ((Integer) obj).intValue() == 0 ? BuildConfig.FLAVOR : obj.toString();
        } else if (obj instanceof Long) {
            obj2 = ((Long) obj).longValue() == 0 ? BuildConfig.FLAVOR : obj.toString();
        } else if (obj instanceof Double) {
            obj2 = ((Double) obj).doubleValue() == 0.0d ? BuildConfig.FLAVOR : obj.toString();
        } else if (obj instanceof Boolean) {
            obj2 = !((Boolean) obj).booleanValue() ? BuildConfig.FLAVOR : obj.toString();
        } else if (obj instanceof List) {
            StringBuffer stringBuffer = new StringBuffer();
            if (i > 0) {
                stringBuffer.append("[");
            }
            int length = stringBuffer.length();
            for (Object obj3 : (List) obj) {
                if (stringBuffer.length() > length) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(a(obj3, i + 1));
            }
            if (i > 0) {
                stringBuffer.append("]");
            }
            obj2 = stringBuffer.toString();
        } else if (obj instanceof Map) {
            StringBuffer stringBuffer2 = new StringBuffer();
            int i2 = 0;
            boolean z = false;
            for (Map.Entry entry : new TreeMap((Map) obj).entrySet()) {
                String a2 = a(entry.getValue(), i + 1);
                if (!TextUtils.isEmpty(a2)) {
                    int i3 = i2;
                    z = z;
                    if (i > 0) {
                        i3 = i2;
                        z = z;
                        if (!z) {
                            stringBuffer2.append("{");
                            z = true;
                            i3 = stringBuffer2.length();
                        }
                    }
                    if (stringBuffer2.length() > i3) {
                        stringBuffer2.append(", ");
                    }
                    stringBuffer2.append((String) entry.getKey());
                    stringBuffer2.append('=');
                    stringBuffer2.append(a2);
                    i2 = i3;
                }
            }
            if (z) {
                stringBuffer2.append("}");
            }
            obj2 = stringBuffer2.toString();
        } else {
            obj2 = obj.toString();
        }
        return obj2;
    }

    public static String zzO(Map map) {
        return a(map, 1);
    }

    public static String zzj(Object obj) {
        return a(obj, 0);
    }

    public abstract void zzb(T t);
}
