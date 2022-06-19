package com.applovin.impl.sdk.utils;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.applovin.impl.sdk.C1479t;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/utils/BundleUtils.class */
public class BundleUtils {
    public static boolean containsAtLeastOneKey(Set<String> set, Bundle bundle) {
        if (set == null || set.isEmpty()) {
            return false;
        }
        for (String str : set) {
            if (bundle.containsKey(str)) {
                return true;
            }
        }
        return false;
    }

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
            } else if (obj instanceof String) {
                String str2 = (String) obj;
                if (str2.equalsIgnoreCase("true") || str2.equalsIgnoreCase("1")) {
                    return true;
                }
                if (!str2.equalsIgnoreCase("false") && !str2.equalsIgnoreCase("0")) {
                    return z;
                }
                return false;
            }
        }
        return z;
    }

    public static Bundle getBundle(String str, Bundle bundle) {
        return getBundle(str, null, bundle);
    }

    public static Bundle getBundle(String str, Bundle bundle, Bundle bundle2) {
        Bundle bundle3 = bundle;
        if (!TextUtils.isEmpty(str)) {
            if (bundle2 == null) {
                bundle3 = bundle;
            } else {
                Bundle bundle4 = bundle2.getBundle(str);
                bundle3 = bundle;
                if (bundle4 != null) {
                    bundle3 = bundle4;
                }
            }
        }
        return bundle3;
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

    public static long getLong(String str, Bundle bundle) {
        return getLong(str, 0L, bundle);
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

    public static void put(String str, Object obj, Bundle bundle) {
        String str2;
        if (obj == null) {
            str2 = "Skipped insertion into Bundle because value is null.";
        } else if (obj instanceof String) {
            putString(str, (String) obj, bundle);
            return;
        } else if (obj instanceof Boolean) {
            putBoolean(str, (Boolean) obj, bundle);
            return;
        } else if (obj instanceof Integer) {
            putInt(str, (Integer) obj, bundle);
            return;
        } else if (obj instanceof Long) {
            putLong(str, (Long) obj, bundle);
            return;
        } else if (obj instanceof Double) {
            putDouble(str, (Double) obj, bundle);
            return;
        } else if (obj instanceof Byte) {
            putByte(str, (Byte) obj, bundle);
            return;
        } else if (obj instanceof Character) {
            putChar(str, (Character) obj, bundle);
            return;
        } else if (obj instanceof Float) {
            putFloat(str, (Float) obj, bundle);
            return;
        } else if (obj instanceof Short) {
            putShort(str, (Short) obj, bundle);
            return;
        } else if (obj instanceof CharSequence) {
            putCharSequence(str, (CharSequence) obj, bundle);
            return;
        } else if (obj instanceof String[]) {
            putStringArray(str, (String[]) obj, bundle);
            return;
        } else if (obj instanceof boolean[]) {
            putBooleanArray(str, (boolean[]) obj, bundle);
            return;
        } else if (obj instanceof int[]) {
            putIntArray(str, (int[]) obj, bundle);
            return;
        } else if (obj instanceof long[]) {
            putLongArray(str, (long[]) obj, bundle);
            return;
        } else if (obj instanceof double[]) {
            putDoubleArray(str, (double[]) obj, bundle);
            return;
        } else if (obj instanceof byte[]) {
            putByteArray(str, (byte[]) obj, bundle);
            return;
        } else if (obj instanceof char[]) {
            putCharArray(str, (char[]) obj, bundle);
            return;
        } else if (obj instanceof float[]) {
            putFloatArray(str, (float[]) obj, bundle);
            return;
        } else if (obj instanceof short[]) {
            putShortArray(str, (short[]) obj, bundle);
            return;
        } else if (obj instanceof CharSequence[]) {
            putCharSequenceArray(str, (CharSequence[]) obj, bundle);
            return;
        } else {
            if (obj instanceof ArrayList) {
                ArrayList arrayList = (ArrayList) obj;
                if (arrayList.size() > 0) {
                    if (arrayList.get(0) instanceof String) {
                        putStringArrayList(str, arrayList, bundle);
                        return;
                    } else if (arrayList.get(0) instanceof Integer) {
                        putIntegerArrayList(str, arrayList, bundle);
                        return;
                    } else if (!(arrayList.get(0) instanceof CharSequence)) {
                        return;
                    } else {
                        putCharSequenceArrayList(str, arrayList, bundle);
                        return;
                    }
                }
            }
            str2 = "Skipped insertion of " + obj + " into Bundle";
        }
        C1479t.m5107i("AppLovinSdk", str2);
    }

    public static void putBoolean(String str, Boolean bool, Bundle bundle) {
        if (bool != null) {
            bundle.putBoolean(str, bool.booleanValue());
        }
    }

    public static void putBooleanArray(String str, boolean[] zArr, Bundle bundle) {
        if (zArr != null) {
            bundle.putBooleanArray(str, zArr);
        }
    }

    public static void putByte(String str, Byte b, Bundle bundle) {
        if (b != null) {
            bundle.putByte(str, b.byteValue());
        }
    }

    public static void putByteArray(String str, byte[] bArr, Bundle bundle) {
        if (bArr != null) {
            bundle.putByteArray(str, bArr);
        }
    }

    public static void putChar(String str, Character ch, Bundle bundle) {
        if (ch != null) {
            bundle.putChar(str, ch.charValue());
        }
    }

    public static void putCharArray(String str, char[] cArr, Bundle bundle) {
        if (cArr != null) {
            bundle.putCharArray(str, cArr);
        }
    }

    public static void putCharSequence(String str, CharSequence charSequence, Bundle bundle) {
        if (charSequence != null) {
            bundle.putCharSequence(str, charSequence);
        }
    }

    public static void putCharSequenceArray(String str, CharSequence[] charSequenceArr, Bundle bundle) {
        if (charSequenceArr != null) {
            bundle.putCharSequenceArray(str, charSequenceArr);
        }
    }

    public static void putCharSequenceArrayList(String str, ArrayList<CharSequence> arrayList, Bundle bundle) {
        if (arrayList != null) {
            bundle.putCharSequenceArrayList(str, arrayList);
        }
    }

    public static void putDouble(String str, Double d, Bundle bundle) {
        if (d != null) {
            bundle.putDouble(str, d.doubleValue());
        }
    }

    public static void putDoubleArray(String str, double[] dArr, Bundle bundle) {
        if (dArr != null) {
            bundle.putDoubleArray(str, dArr);
        }
    }

    public static void putFloat(String str, Float f, Bundle bundle) {
        if (f != null) {
            bundle.putFloat(str, f.floatValue());
        }
    }

    public static void putFloatArray(String str, float[] fArr, Bundle bundle) {
        if (fArr != null) {
            bundle.putFloatArray(str, fArr);
        }
    }

    public static void putInt(String str, Integer num, Bundle bundle) {
        if (num != null) {
            bundle.putInt(str, num.intValue());
        }
    }

    public static void putIntArray(String str, int[] iArr, Bundle bundle) {
        if (iArr != null) {
            bundle.putIntArray(str, iArr);
        }
    }

    public static void putIntegerArrayList(String str, ArrayList<Integer> arrayList, Bundle bundle) {
        if (arrayList != null) {
            bundle.putIntegerArrayList(str, arrayList);
        }
    }

    public static void putLong(String str, Long l, Bundle bundle) {
        if (l != null) {
            bundle.putLong(str, l.longValue());
        }
    }

    public static void putLongArray(String str, long[] jArr, Bundle bundle) {
        if (jArr != null) {
            bundle.putLongArray(str, jArr);
        }
    }

    public static void putShort(String str, Short sh, Bundle bundle) {
        if (sh != null) {
            bundle.putShort(str, sh.shortValue());
        }
    }

    public static void putShortArray(String str, short[] sArr, Bundle bundle) {
        if (sArr != null) {
            bundle.putShortArray(str, sArr);
        }
    }

    public static void putString(String str, String str2, Bundle bundle) {
        if (str2 != null) {
            bundle.putString(str, str2);
        }
    }

    public static void putStringArray(String str, String[] strArr, Bundle bundle) {
        if (strArr != null) {
            bundle.putStringArray(str, strArr);
        }
    }

    public static void putStringArrayList(String str, ArrayList<String> arrayList, Bundle bundle) {
        if (arrayList != null) {
            bundle.putStringArrayList(str, arrayList);
        }
    }

    public static void putStringIfValid(String str, String str2, Bundle bundle) {
        if (AppLovinSdkUtils.isValidString(str2)) {
            bundle.putString(str, str2);
        }
    }

    public static JSONObject toJSONObject(Bundle bundle) {
        JSONObject jSONObject;
        if (bundle == null) {
            return new JSONObject();
        }
        JSONObject jSONObject2 = new JSONObject();
        try {
            for (String str : bundle.keySet()) {
                Object obj = bundle.get(str);
                if (obj != null) {
                    if (obj instanceof Bundle) {
                        jSONObject = toJSONObject((Bundle) obj);
                    } else {
                        if (!(obj instanceof Collection)) {
                            jSONObject = obj;
                            if (obj instanceof Parcelable[]) {
                            }
                        }
                        List asList = obj instanceof Collection ? (Collection) obj : Arrays.asList((Parcelable[]) obj);
                        JSONArray jSONArray = new JSONArray();
                        for (Object obj2 : asList) {
                            JSONObject jSONObject3 = obj2;
                            if (obj2 instanceof Bundle) {
                                jSONObject3 = toJSONObject((Bundle) obj2);
                            }
                            jSONArray.put(jSONObject3);
                        }
                        jSONObject2.put(str, jSONArray);
                    }
                    jSONObject2.put(str, jSONObject);
                }
            }
        } catch (JSONException e) {
            C1479t.m5113c("AppLovinSdk", "Failed to convert Bundle to JSONObject", e);
        }
        return jSONObject2;
    }

    public static Map<String, Object> toMap(Bundle bundle) {
        Map<String, Object> map;
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
                    List asList = z ? (Collection) obj : Arrays.asList((Parcelable[]) obj);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : asList) {
                        Map<String, Object> map2 = obj2;
                        if (obj2 instanceof Bundle) {
                            map2 = toMap((Bundle) obj2);
                        }
                        arrayList.add(map2);
                    }
                    hashMap.put(str, arrayList);
                }
                hashMap.put(str, map);
            }
        }
        return hashMap;
    }

    public static Map<String, String> toStringMap(Bundle bundle) {
        if (bundle == null) {
            return new HashMap(0);
        }
        HashMap hashMap = new HashMap(bundle.size());
        for (String str : bundle.keySet()) {
            hashMap.put(str, String.valueOf(bundle.get(str)));
        }
        return hashMap;
    }
}
