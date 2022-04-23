package com.facebook.appevents.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import com.facebook.g;
import com.facebook.internal.b.b.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/d/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final HashMap<String, Method> f19523a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<String, Class<?>> f19524b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static final String f19525c = g.i().getPackageName();

    /* renamed from: d  reason: collision with root package name */
    private static final SharedPreferences f19526d = g.i().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);
    private static final SharedPreferences e = g.i().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    private static Boolean a(Context context, Object obj, String str) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            if (obj == null) {
                return Boolean.FALSE;
            }
            Object a2 = a(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f19525c, str});
            boolean z = false;
            if (a2 != null) {
                z = false;
                if (((Integer) a2).intValue() == 0) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static Class<?> a(Context context, String str) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            HashMap<String, Class<?>> hashMap = f19524b;
            Class<?> cls = hashMap.get(str);
            if (cls != null) {
                return cls;
            }
            try {
                cls = context.getClassLoader().loadClass(str);
                cls = cls;
                hashMap.put(str, cls);
            } catch (ClassNotFoundException e2) {
            }
            return cls;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Object a(Context context, IBinder iBinder) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            return a(context, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static Object a(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method a2;
        if (a.a(b.class)) {
            return null;
        }
        try {
            Class<?> a3 = a(context, str);
            if (a3 == null || (a2 = a(a3, str2)) == null) {
                return null;
            }
            Object obj2 = obj;
            if (obj != null) {
                obj2 = a3.cast(obj);
            }
            try {
                return a2.invoke(obj2, objArr);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                return null;
            }
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static Method a(Class<?> cls, String str) {
        Class<?>[] clsArr;
        if (a.a(b.class)) {
            return null;
        }
        try {
            HashMap<String, Method> hashMap = f19523a;
            Method method = hashMap.get(str);
            if (method != null) {
                return method;
            }
            char c2 = 65535;
            Method method2 = method;
            try {
                switch (str.hashCode()) {
                    case -1801122596:
                        if (str.equals("getPurchases")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case -1450694211:
                        if (str.equals("isBillingSupported")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case -1123215065:
                        if (str.equals("asInterface")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -594356707:
                        if (str.equals("getPurchaseHistory")) {
                            c2 = 4;
                            break;
                        }
                        break;
                    case -573310373:
                        if (str.equals("getSkuDetails")) {
                            c2 = 1;
                            break;
                        }
                        break;
                }
                if (c2 == 0) {
                    clsArr = new Class[1];
                    clsArr[0] = IBinder.class;
                } else if (c2 == 1) {
                    clsArr = new Class[4];
                    clsArr[0] = Integer.TYPE;
                    clsArr[1] = String.class;
                    clsArr[2] = String.class;
                    clsArr[3] = Bundle.class;
                } else if (c2 == 2) {
                    clsArr = new Class[3];
                    clsArr[0] = Integer.TYPE;
                    clsArr[1] = String.class;
                    clsArr[2] = String.class;
                } else if (c2 == 3) {
                    clsArr = new Class[4];
                    clsArr[0] = Integer.TYPE;
                    clsArr[1] = String.class;
                    clsArr[2] = String.class;
                    clsArr[3] = String.class;
                } else if (c2 != 4) {
                    clsArr = null;
                } else {
                    clsArr = new Class[5];
                    clsArr[0] = Integer.TYPE;
                    clsArr[1] = String.class;
                    clsArr[2] = String.class;
                    clsArr[3] = String.class;
                    clsArr[4] = Bundle.class;
                }
                method2 = cls.getDeclaredMethod(str, clsArr);
                method2 = method2;
                hashMap.put(str, method2);
            } catch (NoSuchMethodException e2) {
            }
            return method2;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<String> a(Context context, Object obj) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            return b(b(context, obj, "inapp"));
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, String> a(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            Map<String, String> a2 = a(arrayList);
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (!a2.containsKey(next)) {
                    arrayList2.add(next);
                }
            }
            a2.putAll(b(context, arrayList2, obj, z));
            return a2;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static Map<String, String> a(ArrayList<String> arrayList) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                String string = f19526d.getString(next, null);
                if (string != null) {
                    String[] split = string.split(";", 2);
                    if (currentTimeMillis - Long.parseLong(split[0]) < 43200) {
                        hashMap.put(next, split[1]);
                    }
                }
            }
            return hashMap;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        if (!a.a(b.class)) {
            try {
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                SharedPreferences sharedPreferences = f19526d;
                long j = sharedPreferences.getLong("LAST_CLEARED_TIME", 0L);
                if (j == 0) {
                    sharedPreferences.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
                } else if (currentTimeMillis - j > 604800) {
                    sharedPreferences.edit().clear().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
                }
            } catch (Throwable th) {
                a.a(th, b.class);
            }
        }
    }

    private static void a(Map<String, String> map) {
        if (!a.a(b.class)) {
            try {
                long currentTimeMillis = System.currentTimeMillis() / 1000;
                SharedPreferences.Editor edit = f19526d.edit();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    edit.putString(key, currentTimeMillis + ";" + entry.getValue());
                }
                edit.apply();
            } catch (Throwable th) {
                a.a(th, b.class);
            }
        }
    }

    public static boolean a(String str) {
        if (a.a(b.class)) {
            return false;
        }
        try {
            String optString = new JSONObject(str).optString("freeTrialPeriod");
            if (optString != null) {
                return !optString.isEmpty();
            }
            return false;
        } catch (JSONException e2) {
            return false;
        } catch (Throwable th) {
            a.a(th, b.class);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<String> b(Context context, Object obj) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            return b(b(context, obj, "subs"));
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6 A[EDGE_INSN: B:34:0x00a6->B:25:0x00a6 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<java.lang.String> b(android.content.Context r9, java.lang.Object r10, java.lang.String r11) {
        /*
            java.lang.Class<com.facebook.appevents.d.b> r0 = com.facebook.appevents.d.b.class
            boolean r0 = com.facebook.internal.b.b.a.a(r0)
            if (r0 == 0) goto L_0x000a
            r0 = 0
            return r0
        L_0x000a:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: all -> 0x00a8
            r12 = r0
            r0 = r12
            r0.<init>()     // Catch: all -> 0x00a8
            r0 = r10
            if (r0 != 0) goto L_0x0018
            r0 = r12
            return r0
        L_0x0018:
            r0 = r9
            r1 = r10
            r2 = r11
            java.lang.Boolean r0 = a(r0, r1, r2)     // Catch: all -> 0x00a8
            boolean r0 = r0.booleanValue()     // Catch: all -> 0x00a8
            if (r0 == 0) goto L_0x00a6
            r0 = 0
            r13 = r0
            r0 = 0
            r14 = r0
        L_0x002a:
            r0 = r9
            java.lang.String r1 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r2 = "getPurchases"
            r3 = r10
            r4 = 4
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: all -> 0x00a8
            r5 = r4
            r6 = 0
            r7 = 3
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: all -> 0x00a8
            r5[r6] = r7     // Catch: all -> 0x00a8
            r5 = r4
            r6 = 1
            java.lang.String r7 = com.facebook.appevents.d.b.f19525c     // Catch: all -> 0x00a8
            r5[r6] = r7     // Catch: all -> 0x00a8
            r5 = r4
            r6 = 2
            r7 = r11
            r5[r6] = r7     // Catch: all -> 0x00a8
            r5 = r4
            r6 = 3
            r7 = r13
            r5[r6] = r7     // Catch: all -> 0x00a8
            java.lang.Object r0 = a(r0, r1, r2, r3, r4)     // Catch: all -> 0x00a8
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L_0x0093
            r0 = r15
            android.os.Bundle r0 = (android.os.Bundle) r0     // Catch: all -> 0x00a8
            r15 = r0
            r0 = r15
            java.lang.String r1 = "RESPONSE_CODE"
            int r0 = r0.getInt(r1)     // Catch: all -> 0x00a8
            if (r0 != 0) goto L_0x0093
            r0 = r15
            java.lang.String r1 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r0 = r0.getStringArrayList(r1)     // Catch: all -> 0x00a8
            r13 = r0
            r0 = r13
            if (r0 == 0) goto L_0x00a6
            r0 = r14
            r1 = r13
            int r1 = r1.size()     // Catch: all -> 0x00a8
            int r0 = r0 + r1
            r14 = r0
            r0 = r12
            r1 = r13
            boolean r0 = r0.addAll(r1)     // Catch: all -> 0x00a8
            r0 = r15
            java.lang.String r1 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r0 = r0.getString(r1)     // Catch: all -> 0x00a8
            r15 = r0
            goto L_0x0096
        L_0x0093:
            r0 = 0
            r15 = r0
        L_0x0096:
            r0 = r14
            r1 = 30
            if (r0 >= r1) goto L_0x00a6
            r0 = r15
            r13 = r0
            r0 = r15
            if (r0 != 0) goto L_0x002a
        L_0x00a6:
            r0 = r12
            return r0
        L_0x00a8:
            r9 = move-exception
            r0 = r9
            java.lang.Class<com.facebook.appevents.d.b> r1 = com.facebook.appevents.d.b.class
            com.facebook.internal.b.b.a.a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.d.b.b(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    private static ArrayList<String> b(ArrayList<String> arrayList) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList2 = new ArrayList<>();
            SharedPreferences.Editor edit = e.edit();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                try {
                    JSONObject jSONObject = new JSONObject(next);
                    String string = jSONObject.getString("productId");
                    long j = jSONObject.getLong("purchaseTime");
                    String string2 = jSONObject.getString("purchaseToken");
                    if (currentTimeMillis - (j / 1000) <= 86400 && !e.getString(string, "").equals(string2)) {
                        edit.putString(string, string2);
                        arrayList2.add(next);
                    }
                } catch (JSONException e2) {
                }
            }
            edit.apply();
            return arrayList2;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static Map<String, String> b(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        if (a.a(b.class)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            if (obj != null && !arrayList.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
                Object a2 = a(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, new Object[]{3, f19525c, z ? "subs" : "inapp", bundle});
                if (a2 != null) {
                    Bundle bundle2 = (Bundle) a2;
                    if (bundle2.getInt("RESPONSE_CODE") == 0) {
                        ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                            for (int i = 0; i < arrayList.size(); i++) {
                                hashMap.put(arrayList.get(i), stringArrayList.get(i));
                            }
                        }
                        a(hashMap);
                    }
                }
            }
            return hashMap;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<String> c(Context context, Object obj) {
        Class<?> a2;
        if (a.a(b.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (!(obj == null || (a2 = a(context, "com.android.vending.billing.IInAppBillingService")) == null || a(a2, "getPurchaseHistory") == null)) {
                return b(c(context, obj, "inapp"));
            }
            return arrayList;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }

    private static ArrayList<String> c(Context context, Object obj, String str) {
        ArrayList<String> stringArrayList;
        if (a.a(b.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (a(context, obj, str).booleanValue()) {
                String str2 = null;
                int i = 0;
                boolean z = false;
                do {
                    Object a2 = a(context, "com.android.vending.billing.IInAppBillingService", "getPurchaseHistory", obj, new Object[]{6, f19525c, str, str2, new Bundle()});
                    if (a2 != null) {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        Bundle bundle = (Bundle) a2;
                        if (bundle.getInt("RESPONSE_CODE") == 0 && (stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST")) != null) {
                            Iterator<String> it2 = stringArrayList.iterator();
                            while (true) {
                                z = z;
                                if (!it2.hasNext()) {
                                    break;
                                }
                                String next = it2.next();
                                if (currentTimeMillis - (new JSONObject(next).getLong("purchaseTime") / 1000) > 1200) {
                                    z = true;
                                    break;
                                }
                                arrayList.add(next);
                                i++;
                            }
                            str2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                            if (i < 30 || str2 == null) {
                                break;
                            }
                        }
                    }
                    str2 = null;
                    if (i < 30) {
                        break;
                        break;
                    }
                } while (!z);
            }
            return arrayList;
        } catch (Throwable th) {
            a.a(th, b.class);
            return null;
        }
    }
}
