package com.facebook.appevents.p283d;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import com.facebook.C10181g;
import com.facebook.internal.p299b.p301b.C10249a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.appevents.d.b */
/* loaded from: classes3-dex2jar.jar:com/facebook/appevents/d/b.class */
public class C10014b {

    /* renamed from: a */
    private static final HashMap<String, Method> f33277a = new HashMap<>();

    /* renamed from: b */
    private static final HashMap<String, Class<?>> f33278b = new HashMap<>();

    /* renamed from: c */
    private static final String f33279c = C10181g.m23290i().getPackageName();

    /* renamed from: d */
    private static final SharedPreferences f33280d = C10181g.m23290i().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);

    /* renamed from: e */
    private static final SharedPreferences f33281e = C10181g.m23290i().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    /* renamed from: a */
    private static Boolean m23621a(Context context, Object obj, String str) {
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            if (obj == null) {
                return Boolean.FALSE;
            }
            Object m23619a = m23619a(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f33279c, str});
            boolean z = false;
            if (m23619a != null) {
                z = false;
                if (((Integer) m23619a).intValue() == 0) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: a */
    private static Class<?> m23620a(Context context, String str) {
        Class<?> cls;
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            HashMap<String, Class<?>> hashMap = f33278b;
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
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: a */
    public static Object m23623a(Context context, IBinder iBinder) {
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            return m23619a(context, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: a */
    private static Object m23619a(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method m23617a;
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            Class<?> m23620a = m23620a(context, str);
            if (m23620a == null || (m23617a = m23617a(m23620a, str2)) == null) {
                return null;
            }
            Object obj2 = obj;
            if (obj != null) {
                obj2 = m23620a.cast(obj);
            }
            try {
                return m23617a.invoke(obj2, objArr);
            } catch (IllegalAccessException | InvocationTargetException e) {
                return null;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: a */
    private static Method m23617a(Class<?> cls, String str) {
        Method method;
        Class<?>[] clsArr;
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            HashMap<String, Method> hashMap = f33277a;
            Method method2 = hashMap.get(str);
            if (method2 != null) {
                return method2;
            }
            boolean z = true;
            Method method3 = method2;
            try {
                switch (str.hashCode()) {
                    case -1801122596:
                        if (str.equals("getPurchases")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1450694211:
                        if (str.equals("isBillingSupported")) {
                            z = true;
                            break;
                        }
                        break;
                    case -1123215065:
                        if (str.equals("asInterface")) {
                            z = false;
                            break;
                        }
                        break;
                    case -594356707:
                        if (str.equals("getPurchaseHistory")) {
                            z = true;
                            break;
                        }
                        break;
                    case -573310373:
                        if (str.equals("getSkuDetails")) {
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
                } else if (!z) {
                    clsArr = null;
                } else {
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
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: a */
    public static ArrayList<String> m23622a(Context context, Object obj) {
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            return m23610b(m23612b(context, obj, "inapp"));
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: a */
    public static Map<String, String> m23618a(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            Map<String, String> m23615a = m23615a(arrayList);
            ArrayList arrayList2 = new ArrayList();
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                if (!m23615a.containsKey(next)) {
                    arrayList2.add(next);
                }
            }
            m23615a.putAll(m23611b(context, arrayList2, obj, z));
            return m23615a;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: a */
    private static Map<String, String> m23615a(ArrayList<String> arrayList) {
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                String string = f33280d.getString(next, null);
                if (string != null) {
                    String[] split = string.split(";", 2);
                    if (currentTimeMillis - Long.parseLong(split[0]) < 43200) {
                        hashMap.put(next, split[1]);
                    }
                }
            }
            return hashMap;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: a */
    public static void m23624a() {
        if (C10249a.m23108a(C10014b.class)) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences = f33280d;
            long j = sharedPreferences.getLong("LAST_CLEARED_TIME", 0L);
            if (j == 0) {
                sharedPreferences.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
            } else if (currentTimeMillis - j <= 604800) {
            } else {
                sharedPreferences.edit().clear().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
        }
    }

    /* renamed from: a */
    private static void m23614a(Map<String, String> map) {
        if (C10249a.m23108a(C10014b.class)) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences.Editor edit = f33280d.edit();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                edit.putString(key, currentTimeMillis + ";" + entry.getValue());
            }
            edit.apply();
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
        }
    }

    /* renamed from: a */
    public static boolean m23616a(String str) {
        if (C10249a.m23108a(C10014b.class)) {
            return false;
        }
        try {
            String optString = new JSONObject(str).optString("freeTrialPeriod");
            if (optString == null) {
                return false;
            }
            return !optString.isEmpty();
        } catch (JSONException e) {
            return false;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return false;
        }
    }

    /* renamed from: b */
    public static ArrayList<String> m23613b(Context context, Object obj) {
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            return m23610b(m23612b(context, obj, "subs"));
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6 A[EDGE_INSN: B:34:0x00a6->B:25:0x00a6 ?: BREAK  , SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<java.lang.String> m23612b(android.content.Context r9, java.lang.Object r10, java.lang.String r11) {
        /*
            java.lang.Class<com.facebook.appevents.d.b> r0 = com.facebook.appevents.p283d.C10014b.class
            boolean r0 = com.facebook.internal.p299b.p301b.C10249a.m23108a(r0)
            if (r0 == 0) goto La
            r0 = 0
            return r0
        La:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> La8
            r12 = r0
            r0 = r12
            r0.<init>()     // Catch: java.lang.Throwable -> La8
            r0 = r10
            if (r0 != 0) goto L18
            r0 = r12
            return r0
        L18:
            r0 = r9
            r1 = r10
            r2 = r11
            java.lang.Boolean r0 = m23621a(r0, r1, r2)     // Catch: java.lang.Throwable -> La8
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto La6
            r0 = 0
            r13 = r0
            r0 = 0
            r14 = r0
        L2a:
            r0 = r9
            java.lang.String r1 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r2 = "getPurchases"
            r3 = r10
            r4 = 4
            java.lang.Object[] r4 = new java.lang.Object[r4]     // Catch: java.lang.Throwable -> La8
            r5 = r4
            r6 = 0
            r7 = 3
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)     // Catch: java.lang.Throwable -> La8
            r5[r6] = r7     // Catch: java.lang.Throwable -> La8
            r5 = r4
            r6 = 1
            java.lang.String r7 = com.facebook.appevents.p283d.C10014b.f33279c     // Catch: java.lang.Throwable -> La8
            r5[r6] = r7     // Catch: java.lang.Throwable -> La8
            r5 = r4
            r6 = 2
            r7 = r11
            r5[r6] = r7     // Catch: java.lang.Throwable -> La8
            r5 = r4
            r6 = 3
            r7 = r13
            r5[r6] = r7     // Catch: java.lang.Throwable -> La8
            java.lang.Object r0 = m23619a(r0, r1, r2, r3, r4)     // Catch: java.lang.Throwable -> La8
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L93
            r0 = r15
            android.os.Bundle r0 = (android.os.Bundle) r0     // Catch: java.lang.Throwable -> La8
            r15 = r0
            r0 = r15
            java.lang.String r1 = "RESPONSE_CODE"
            int r0 = r0.getInt(r1)     // Catch: java.lang.Throwable -> La8
            if (r0 != 0) goto L93
            r0 = r15
            java.lang.String r1 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r0 = r0.getStringArrayList(r1)     // Catch: java.lang.Throwable -> La8
            r13 = r0
            r0 = r13
            if (r0 == 0) goto La6
            r0 = r14
            r1 = r13
            int r1 = r1.size()     // Catch: java.lang.Throwable -> La8
            int r0 = r0 + r1
            r14 = r0
            r0 = r12
            r1 = r13
            boolean r0 = r0.addAll(r1)     // Catch: java.lang.Throwable -> La8
            r0 = r15
            java.lang.String r1 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> La8
            r15 = r0
            goto L96
        L93:
            r0 = 0
            r15 = r0
        L96:
            r0 = r14
            r1 = 30
            if (r0 >= r1) goto La6
            r0 = r15
            r13 = r0
            r0 = r15
            if (r0 != 0) goto L2a
        La6:
            r0 = r12
            return r0
        La8:
            r9 = move-exception
            r0 = r9
            java.lang.Class<com.facebook.appevents.d.b> r1 = com.facebook.appevents.p283d.C10014b.class
            com.facebook.internal.p299b.p301b.C10249a.m23106a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p283d.C10014b.m23612b(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    /* renamed from: b */
    private static ArrayList<String> m23610b(ArrayList<String> arrayList) {
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList2 = new ArrayList<>();
            SharedPreferences.Editor edit = f33281e.edit();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String next = it2.next();
                try {
                    JSONObject jSONObject = new JSONObject(next);
                    String string = jSONObject.getString("productId");
                    long j = jSONObject.getLong("purchaseTime");
                    String string2 = jSONObject.getString("purchaseToken");
                    if (currentTimeMillis - (j / 1000) <= 86400 && !f33281e.getString(string, "").equals(string2)) {
                        edit.putString(string, string2);
                        arrayList2.add(next);
                    }
                } catch (JSONException e) {
                }
            }
            edit.apply();
            return arrayList2;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: b */
    private static Map<String, String> m23611b(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            if (obj != null && !arrayList.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
                Object m23619a = m23619a(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, new Object[]{3, f33279c, z ? "subs" : "inapp", bundle});
                if (m23619a != null) {
                    Bundle bundle2 = (Bundle) m23619a;
                    if (bundle2.getInt("RESPONSE_CODE") == 0) {
                        ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                            for (int i = 0; i < arrayList.size(); i++) {
                                hashMap.put(arrayList.get(i), stringArrayList.get(i));
                            }
                        }
                        m23614a(hashMap);
                    }
                }
            }
            return hashMap;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: c */
    public static ArrayList<String> m23609c(Context context, Object obj) {
        Class<?> m23620a;
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (obj != null && (m23620a = m23620a(context, "com.android.vending.billing.IInAppBillingService")) != null && m23617a(m23620a, "getPurchaseHistory") != null) {
                return m23610b(m23608c(context, obj, "inapp"));
            }
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }

    /* renamed from: c */
    private static ArrayList<String> m23608c(Context context, Object obj, String str) {
        ArrayList<String> stringArrayList;
        boolean z;
        if (C10249a.m23108a(C10014b.class)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (m23621a(context, obj, str).booleanValue()) {
                String str2 = null;
                int i = 0;
                boolean z2 = false;
                do {
                    Object m23619a = m23619a(context, "com.android.vending.billing.IInAppBillingService", "getPurchaseHistory", obj, new Object[]{6, f33279c, str, str2, new Bundle()});
                    if (m23619a != null) {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        Bundle bundle = (Bundle) m23619a;
                        if (bundle.getInt("RESPONSE_CODE") == 0 && (stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST")) != null) {
                            Iterator<String> it2 = stringArrayList.iterator();
                            while (true) {
                                z = z2;
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
                            z2 = z;
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
                } while (!z2);
            }
            return arrayList;
        } catch (Throwable th) {
            C10249a.m23106a(th, C10014b.class);
            return null;
        }
    }
}
