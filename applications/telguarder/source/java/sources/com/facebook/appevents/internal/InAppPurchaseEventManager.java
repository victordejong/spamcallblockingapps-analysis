package com.facebook.appevents.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import com.facebook.FacebookSdk;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/internal/InAppPurchaseEventManager.class */
class InAppPurchaseEventManager {
    private static final String AS_INTERFACE = "asInterface";
    private static final int CACHE_CLEAR_TIME_LIMIT_SEC = 604800;
    private static final String DETAILS_LIST = "DETAILS_LIST";
    private static final String GET_PURCHASES = "getPurchases";
    private static final String GET_PURCHASE_HISTORY = "getPurchaseHistory";
    private static final String GET_SKU_DETAILS = "getSkuDetails";
    private static final String INAPP = "inapp";
    private static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    private static final String INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    private static final String IN_APP_BILLING_SERVICE = "com.android.vending.billing.IInAppBillingService";
    private static final String IN_APP_BILLING_SERVICE_STUB = "com.android.vending.billing.IInAppBillingService$Stub";
    private static final String IS_BILLING_SUPPORTED = "isBillingSupported";
    private static final String ITEM_ID_LIST = "ITEM_ID_LIST";
    private static final String LAST_CLEARED_TIME = "LAST_CLEARED_TIME";
    private static final int MAX_QUERY_PURCHASE_NUM = 30;
    private static final int PURCHASE_EXPIRE_TIME_SEC = 86400;
    private static final int PURCHASE_STOP_QUERY_TIME_SEC = 1200;
    private static final String RESPONSE_CODE = "RESPONSE_CODE";
    private static final int SKU_DETAIL_EXPIRE_TIME_SEC = 43200;
    private static final String SUBSCRIPTION = "subs";
    private static final String TAG = "com.facebook.appevents.internal.InAppPurchaseEventManager";
    private static final HashMap<String, Method> methodMap = new HashMap<>();
    private static final HashMap<String, Class<?>> classMap = new HashMap<>();
    private static final String PACKAGE_NAME = FacebookSdk.getApplicationContext().getPackageName();
    private static final String SKU_DETAILS_STORE = "com.facebook.internal.SKU_DETAILS";
    private static final SharedPreferences skuDetailSharedPrefs = FacebookSdk.getApplicationContext().getSharedPreferences(SKU_DETAILS_STORE, 0);
    private static final String PURCHASE_INAPP_STORE = "com.facebook.internal.PURCHASE";
    private static final SharedPreferences purchaseInappSharedPrefs = FacebookSdk.getApplicationContext().getSharedPreferences(PURCHASE_INAPP_STORE, 0);

    InAppPurchaseEventManager() {
    }

    public static Object asInterface(Context context, IBinder iBinder) {
        return invokeMethod(context, IN_APP_BILLING_SERVICE_STUB, AS_INTERFACE, null, new Object[]{iBinder});
    }

    public static void clearSkuDetailsCache() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        SharedPreferences sharedPreferences = skuDetailSharedPrefs;
        long j = sharedPreferences.getLong(LAST_CLEARED_TIME, 0L);
        if (j == 0) {
            sharedPreferences.edit().putLong(LAST_CLEARED_TIME, currentTimeMillis).apply();
        } else if (currentTimeMillis - j <= 604800) {
        } else {
            sharedPreferences.edit().clear().putLong(LAST_CLEARED_TIME, currentTimeMillis).apply();
        }
    }

    private static ArrayList<String> filterPurchases(ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        SharedPreferences.Editor edit = purchaseInappSharedPrefs.edit();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            try {
                JSONObject jSONObject = new JSONObject(next);
                String string = jSONObject.getString("productId");
                long j = jSONObject.getLong("purchaseTime");
                String string2 = jSONObject.getString("purchaseToken");
                if (currentTimeMillis - (j / 1000) <= 86400 && !purchaseInappSharedPrefs.getString(string, "").equals(string2)) {
                    edit.putString(string, string2);
                    arrayList2.add(next);
                }
            } catch (JSONException e) {
            }
        }
        edit.apply();
        return arrayList2;
    }

    private static Class<?> getClass(Context context, String str) {
        Class<?> cls;
        HashMap<String, Class<?>> hashMap = classMap;
        Class<?> cls2 = hashMap.get(str);
        if (cls2 != null) {
            return cls2;
        }
        try {
            cls = context.getClassLoader().loadClass(str);
            cls2 = cls;
            hashMap.put(str, cls);
        } catch (ClassNotFoundException e) {
            cls = cls2;
        }
        return cls;
    }

    private static Method getMethod(Class<?> cls, String str) {
        Method method;
        HashMap<String, Method> hashMap = methodMap;
        Method method2 = hashMap.get(str);
        if (method2 != null) {
            return method2;
        }
        Class<?>[] clsArr = null;
        boolean z = true;
        Method method3 = method2;
        try {
            switch (str.hashCode()) {
                case -1801122596:
                    if (str.equals(GET_PURCHASES)) {
                        z = true;
                        break;
                    }
                    break;
                case -1450694211:
                    if (str.equals(IS_BILLING_SUPPORTED)) {
                        z = true;
                        break;
                    }
                    break;
                case -1123215065:
                    if (str.equals(AS_INTERFACE)) {
                        z = false;
                        break;
                    }
                    break;
                case -594356707:
                    if (str.equals(GET_PURCHASE_HISTORY)) {
                        z = true;
                        break;
                    }
                    break;
                case -573310373:
                    if (str.equals(GET_SKU_DETAILS)) {
                        z = true;
                        break;
                    }
                    break;
            }
            if (!z) {
                clsArr = new Class[1];
                clsArr[0] = IBinder.class;
            } else if (z) {
                clsArr = new Class[4];
                clsArr[0] = Integer.TYPE;
                clsArr[1] = String.class;
                clsArr[2] = String.class;
                clsArr[3] = Bundle.class;
            } else if (z) {
                clsArr = new Class[3];
                clsArr[0] = Integer.TYPE;
                clsArr[1] = String.class;
                clsArr[2] = String.class;
            } else if (z) {
                clsArr = new Class[4];
                clsArr[0] = Integer.TYPE;
                clsArr[1] = String.class;
                clsArr[2] = String.class;
                clsArr[3] = String.class;
            } else if (z) {
                clsArr = new Class[5];
                clsArr[0] = Integer.TYPE;
                clsArr[1] = String.class;
                clsArr[2] = String.class;
                clsArr[3] = String.class;
                clsArr[4] = Bundle.class;
            }
            method = cls.getDeclaredMethod(str, clsArr);
            method3 = method;
            hashMap.put(str, method);
        } catch (NoSuchMethodException e) {
            method = method3;
        }
        return method;
    }

    private static ArrayList<String> getPurchaseHistory(Context context, Object obj, String str) {
        boolean z;
        ArrayList<String> stringArrayList;
        ArrayList<String> arrayList = new ArrayList<>();
        if (isBillingSupported(context, obj, str).booleanValue()) {
            String str2 = null;
            int i = 0;
            boolean z2 = false;
            do {
                Object invokeMethod = invokeMethod(context, IN_APP_BILLING_SERVICE, GET_PURCHASE_HISTORY, obj, new Object[]{6, PACKAGE_NAME, str, str2, new Bundle()});
                if (invokeMethod != null) {
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    Bundle bundle = (Bundle) invokeMethod;
                    if (bundle.getInt(RESPONSE_CODE) == 0 && (stringArrayList = bundle.getStringArrayList(INAPP_PURCHASE_DATA_LIST)) != null) {
                        Iterator<String> it = stringArrayList.iterator();
                        while (true) {
                            z = z2;
                            if (!it.hasNext()) {
                                break;
                            }
                            String next = it.next();
                            if (currentTimeMillis - (new JSONObject(next).getLong("purchaseTime") / 1000) > 1200) {
                                z = true;
                                break;
                            }
                            arrayList.add(next);
                            i++;
                        }
                        str2 = bundle.getString(INAPP_CONTINUATION_TOKEN);
                        if (i < 30 || str2 == null) {
                            break;
                            break;
                        }
                        z2 = z;
                    }
                }
                str2 = null;
                z = z2;
                if (i < 30) {
                    break;
                }
                z2 = z;
            } while (!z);
        }
        return arrayList;
    }

    public static ArrayList<String> getPurchaseHistoryInapp(Context context, Object obj) {
        Class<?> cls;
        ArrayList<String> arrayList = new ArrayList<>();
        if (obj != null && (cls = getClass(context, IN_APP_BILLING_SERVICE)) != null && getMethod(cls, GET_PURCHASE_HISTORY) != null) {
            return filterPurchases(getPurchaseHistory(context, obj, INAPP));
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0099 A[EDGE_INSN: B:25:0x0099->B:21:0x0099 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<java.lang.String> getPurchases(android.content.Context r9, java.lang.Object r10, java.lang.String r11) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r10
            if (r0 != 0) goto Le
            r0 = r12
            return r0
        Le:
            r0 = r9
            r1 = r10
            r2 = r11
            java.lang.Boolean r0 = isBillingSupported(r0, r1, r2)
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L99
            r0 = 0
            r13 = r0
            r0 = 0
            r14 = r0
        L20:
            r0 = r9
            java.lang.String r1 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r2 = "getPurchases"
            r3 = r10
            r4 = 4
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r5 = r4
            r6 = 0
            r7 = 3
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            r5[r6] = r7
            r5 = r4
            r6 = 1
            java.lang.String r7 = com.facebook.appevents.internal.InAppPurchaseEventManager.PACKAGE_NAME
            r5[r6] = r7
            r5 = r4
            r6 = 2
            r7 = r11
            r5[r6] = r7
            r5 = r4
            r6 = 3
            r7 = r13
            r5[r6] = r7
            java.lang.Object r0 = invokeMethod(r0, r1, r2, r3, r4)
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L86
            r0 = r15
            android.os.Bundle r0 = (android.os.Bundle) r0
            r13 = r0
            r0 = r13
            java.lang.String r1 = "RESPONSE_CODE"
            int r0 = r0.getInt(r1)
            if (r0 != 0) goto L86
            r0 = r13
            java.lang.String r1 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r0 = r0.getStringArrayList(r1)
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L99
            r0 = r14
            r1 = r15
            int r1 = r1.size()
            int r0 = r0 + r1
            r14 = r0
            r0 = r12
            r1 = r15
            boolean r0 = r0.addAll(r1)
            r0 = r13
            java.lang.String r1 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r0 = r0.getString(r1)
            r15 = r0
            goto L89
        L86:
            r0 = 0
            r15 = r0
        L89:
            r0 = r14
            r1 = 30
            if (r0 >= r1) goto L99
            r0 = r15
            r13 = r0
            r0 = r15
            if (r0 != 0) goto L20
        L99:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.internal.InAppPurchaseEventManager.getPurchases(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    public static ArrayList<String> getPurchasesInapp(Context context, Object obj) {
        return filterPurchases(getPurchases(context, obj, INAPP));
    }

    public static ArrayList<String> getPurchasesSubs(Context context, Object obj) {
        return filterPurchases(getPurchases(context, obj, SUBSCRIPTION));
    }

    public static Map<String, String> getSkuDetails(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        Map<String, String> readSkuDetailsFromCache = readSkuDetailsFromCache(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!readSkuDetailsFromCache.containsKey(next)) {
                arrayList2.add(next);
            }
        }
        readSkuDetailsFromCache.putAll(getSkuDetailsFromGoogle(context, arrayList2, obj, z));
        return readSkuDetailsFromCache;
    }

    private static Map<String, String> getSkuDetailsFromGoogle(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        HashMap hashMap = new HashMap();
        if (obj != null && !arrayList.isEmpty()) {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(ITEM_ID_LIST, arrayList);
            Object invokeMethod = invokeMethod(context, IN_APP_BILLING_SERVICE, GET_SKU_DETAILS, obj, new Object[]{3, PACKAGE_NAME, z ? SUBSCRIPTION : INAPP, bundle});
            if (invokeMethod != null) {
                Bundle bundle2 = (Bundle) invokeMethod;
                if (bundle2.getInt(RESPONSE_CODE) == 0) {
                    ArrayList<String> stringArrayList = bundle2.getStringArrayList(DETAILS_LIST);
                    if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                        for (int i = 0; i < arrayList.size(); i++) {
                            hashMap.put(arrayList.get(i), stringArrayList.get(i));
                        }
                    }
                    writeSkuDetailsToCache(hashMap);
                }
            }
        }
        return hashMap;
    }

    public static boolean hasFreeTrialPeirod(String str) {
        boolean z;
        try {
            String optString = new JSONObject(str).optString("freeTrialPeriod");
            z = false;
            if (optString != null) {
                z = false;
                if (!optString.isEmpty()) {
                    z = true;
                }
            }
        } catch (JSONException e) {
            z = false;
        }
        return z;
    }

    private static Object invokeMethod(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method method;
        Class<?> cls = getClass(context, str);
        if (cls == null || (method = getMethod(cls, str2)) == null) {
            return null;
        }
        Object obj2 = obj;
        if (obj != null) {
            obj2 = cls.cast(obj);
        }
        try {
            return method.invoke(obj2, objArr);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    private static Boolean isBillingSupported(Context context, Object obj, String str) {
        if (obj == null) {
            return false;
        }
        Object invokeMethod = invokeMethod(context, IN_APP_BILLING_SERVICE, IS_BILLING_SUPPORTED, obj, new Object[]{3, PACKAGE_NAME, str});
        boolean z = false;
        if (invokeMethod != null) {
            z = false;
            if (((Integer) invokeMethod).intValue() == 0) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    private static Map<String, String> readSkuDetailsFromCache(ArrayList<String> arrayList) {
        HashMap hashMap = new HashMap();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            String string = skuDetailSharedPrefs.getString(next, null);
            if (string != null) {
                String[] split = string.split(";", 2);
                if (currentTimeMillis - Long.parseLong(split[0]) < 43200) {
                    hashMap.put(next, split[1]);
                }
            }
        }
        return hashMap;
    }

    private static void writeSkuDetailsToCache(Map<String, String> map) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        SharedPreferences.Editor edit = skuDetailSharedPrefs.edit();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            edit.putString(key, currentTimeMillis + ";" + entry.getValue());
        }
        edit.apply();
    }
}
