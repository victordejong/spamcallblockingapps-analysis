package com.facebook.p094a.p099d;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import com.facebook.C2095j;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.facebook.a.d.h */
/* loaded from: classes-dex2jar.jar:com/facebook/a/d/h.class */
class C1875h {

    /* renamed from: a */
    private static final String f5676a = C1875h.class.getCanonicalName();

    /* renamed from: b */
    private static final HashMap<String, Method> f5677b = new HashMap<>();

    /* renamed from: c */
    private static final HashMap<String, Class<?>> f5678c = new HashMap<>();

    /* renamed from: d */
    private static final String f5679d = C2095j.m15360h().getPackageName();

    /* renamed from: e */
    private static final SharedPreferences f5680e = C2095j.m15360h().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);

    /* renamed from: f */
    private static final SharedPreferences f5681f = C2095j.m15360h().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    C1875h() {
    }

    /* renamed from: a */
    private static Boolean m16038a(Context context, Object obj, String str) {
        Boolean valueOf;
        if (obj == null) {
            valueOf = false;
        } else {
            Object m16036a = m16036a(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f5679d, str});
            valueOf = Boolean.valueOf(m16036a != null && ((Integer) m16036a).intValue() == 0);
        }
        return valueOf;
    }

    /* renamed from: a */
    private static Class<?> m16037a(Context context, String str) {
        Class<?> cls = f5678c.get(str);
        if (cls == null) {
            try {
                Class<?> loadClass = context.getClassLoader().loadClass(str);
                cls = loadClass;
                f5678c.put(str, loadClass);
                cls = loadClass;
            } catch (ClassNotFoundException e) {
            }
        }
        return cls;
    }

    /* renamed from: a */
    public static Object m16040a(Context context, IBinder iBinder) {
        return m16036a(context, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
    }

    /* renamed from: a */
    private static Object m16036a(Context context, String str, String str2, Object obj, Object[] objArr) {
        Object obj2;
        Class<?> m16037a = m16037a(context, str);
        if (m16037a == null) {
            obj2 = null;
        } else {
            Method m16034a = m16034a(m16037a, str2);
            obj2 = null;
            if (m16034a != null) {
                Object obj3 = obj;
                if (obj != null) {
                    obj3 = m16037a.cast(obj);
                }
                try {
                    obj2 = m16034a.invoke(obj3, objArr);
                } catch (IllegalAccessException e) {
                    obj2 = null;
                } catch (InvocationTargetException e2) {
                    obj2 = null;
                }
            }
        }
        return obj2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static Method m16034a(Class<?> cls, String str) {
        Method method;
        boolean z = false;
        Method method2 = f5677b.get(str);
        if (method2 != null) {
            method = method2;
        } else {
            Class<?>[] clsArr = null;
            method = method2;
            try {
                switch (str.hashCode()) {
                    case -1801122596:
                        if (str.equals("getPurchases")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -1450694211:
                        if (str.equals("isBillingSupported")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -1123215065:
                        if (str.equals("asInterface")) {
                            break;
                        }
                        z = true;
                        break;
                    case -594356707:
                        if (str.equals("getPurchaseHistory")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    case -573310373:
                        if (str.equals("getSkuDetails")) {
                            z = true;
                            break;
                        }
                        z = true;
                        break;
                    default:
                        z = true;
                        break;
                }
                switch (z) {
                    case false:
                        clsArr = new Class[1];
                        clsArr[0] = IBinder.class;
                        break;
                    case true:
                        clsArr = new Class[4];
                        clsArr[0] = Integer.TYPE;
                        clsArr[1] = String.class;
                        clsArr[2] = String.class;
                        clsArr[3] = Bundle.class;
                        break;
                    case true:
                        clsArr = new Class[3];
                        clsArr[0] = Integer.TYPE;
                        clsArr[1] = String.class;
                        clsArr[2] = String.class;
                        break;
                    case true:
                        clsArr = new Class[4];
                        clsArr[0] = Integer.TYPE;
                        clsArr[1] = String.class;
                        clsArr[2] = String.class;
                        clsArr[3] = String.class;
                        break;
                    case true:
                        clsArr = new Class[5];
                        clsArr[0] = Integer.TYPE;
                        clsArr[1] = String.class;
                        clsArr[2] = String.class;
                        clsArr[3] = String.class;
                        clsArr[4] = Bundle.class;
                        break;
                }
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                method = declaredMethod;
                f5677b.put(str, declaredMethod);
                method = declaredMethod;
            } catch (NoSuchMethodException e) {
            }
        }
        return method;
    }

    /* renamed from: a */
    public static ArrayList<String> m16039a(Context context, Object obj) {
        return m16027b(m16029b(context, obj, "inapp"));
    }

    /* renamed from: a */
    public static Map<String, String> m16035a(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        Map<String, String> m16032a = m16032a(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!m16032a.containsKey(next)) {
                arrayList2.add(next);
            }
        }
        m16032a.putAll(m16028b(context, arrayList2, obj, z));
        return m16032a;
    }

    /* renamed from: a */
    private static Map<String, String> m16032a(ArrayList<String> arrayList) {
        HashMap hashMap = new HashMap();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            String string = f5680e.getString(next, null);
            if (string != null) {
                String[] split = string.split(";", 2);
                if (currentTimeMillis - Long.parseLong(split[0]) < 43200) {
                    hashMap.put(next, split[1]);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public static void m16041a() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long j = f5680e.getLong("LAST_CLEARED_TIME", 0L);
        if (j == 0) {
            f5680e.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
        } else if (currentTimeMillis - j <= 604800) {
        } else {
            f5680e.edit().clear().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
        }
    }

    /* renamed from: a */
    private static void m16031a(Map<String, String> map) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        SharedPreferences.Editor edit = f5680e.edit();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            edit.putString(entry.getKey(), currentTimeMillis + ";" + entry.getValue());
        }
        edit.apply();
    }

    /* renamed from: a */
    public static boolean m16033a(String str) {
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

    /* renamed from: b */
    public static ArrayList<String> m16030b(Context context, Object obj) {
        return m16027b(m16029b(context, obj, "subs"));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x000c A[EDGE_INSN: B:23:0x000c->B:4:0x000c ?: BREAK  , SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.util.ArrayList<java.lang.String> m16029b(android.content.Context r9, java.lang.Object r10, java.lang.String r11) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r10
            if (r0 != 0) goto Le
        Lc:
            r0 = r12
            return r0
        Le:
            r0 = r9
            r1 = r10
            r2 = r11
            java.lang.Boolean r0 = m16038a(r0, r1, r2)
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L96
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
            java.lang.String r7 = com.facebook.p094a.p099d.C1875h.f5679d
            r5[r6] = r7
            r5 = r4
            r6 = 2
            r7 = r11
            r5[r6] = r7
            r5 = r4
            r6 = 3
            r7 = r14
            r5[r6] = r7
            java.lang.Object r0 = m16036a(r0, r1, r2, r3, r4)
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L99
            r0 = r14
            android.os.Bundle r0 = (android.os.Bundle) r0
            r15 = r0
            r0 = r15
            java.lang.String r1 = "RESPONSE_CODE"
            int r0 = r0.getInt(r1)
            if (r0 != 0) goto L99
            r0 = r15
            java.lang.String r1 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r0 = r0.getStringArrayList(r1)
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L96
            r0 = r14
            int r0 = r0.size()
            r16 = r0
            r0 = r12
            r1 = r14
            boolean r0 = r0.addAll(r1)
            r0 = r15
            java.lang.String r1 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r0 = r0.getString(r1)
            r14 = r0
            r0 = r13
            r1 = r16
            int r0 = r0 + r1
            r13 = r0
        L8a:
            r0 = r13
            r1 = 30
            if (r0 >= r1) goto L96
            r0 = r14
            if (r0 != 0) goto L9f
        L96:
            goto Lc
        L99:
            r0 = 0
            r14 = r0
            goto L8a
        L9f:
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.p094a.p099d.C1875h.m16029b(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    /* renamed from: b */
    private static ArrayList<String> m16027b(ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        SharedPreferences.Editor edit = f5681f.edit();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            try {
                JSONObject jSONObject = new JSONObject(next);
                String string = jSONObject.getString("productId");
                long j = jSONObject.getLong("purchaseTime");
                String string2 = jSONObject.getString("purchaseToken");
                if (currentTimeMillis - (j / 1000) <= 86400 && !f5681f.getString(string, "").equals(string2)) {
                    edit.putString(string, string2);
                    arrayList2.add(next);
                }
            } catch (JSONException e) {
            }
        }
        edit.apply();
        return arrayList2;
    }

    /* renamed from: b */
    private static Map<String, String> m16028b(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        HashMap hashMap = new HashMap();
        if (obj != null && !arrayList.isEmpty()) {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
            Object m16036a = m16036a(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, new Object[]{3, f5679d, z ? "subs" : "inapp", bundle});
            if (m16036a != null) {
                Bundle bundle2 = (Bundle) m16036a;
                if (bundle2.getInt("RESPONSE_CODE") == 0) {
                    ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                        for (int i = 0; i < arrayList.size(); i++) {
                            hashMap.put(arrayList.get(i), stringArrayList.get(i));
                        }
                    }
                    m16031a(hashMap);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    public static ArrayList<String> m16026c(Context context, Object obj) {
        ArrayList<String> arrayList;
        ArrayList<String> arrayList2 = new ArrayList<>();
        if (obj == null) {
            arrayList = arrayList2;
        } else {
            Class<?> m16037a = m16037a(context, "com.android.vending.billing.IInAppBillingService");
            arrayList = arrayList2;
            if (m16037a != null) {
                arrayList = arrayList2;
                if (m16034a(m16037a, "getPurchaseHistory") != null) {
                    arrayList = m16027b(m16025c(context, obj, "inapp"));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    private static ArrayList<String> m16025c(Context context, Object obj, String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (m16038a(context, obj, str).booleanValue()) {
            int i = 0;
            boolean z = false;
            String str2 = null;
            do {
                Object m16036a = m16036a(context, "com.android.vending.billing.IInAppBillingService", "getPurchaseHistory", obj, new Object[]{6, f5679d, str, str2, new Bundle()});
                if (m16036a != null) {
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    Bundle bundle = (Bundle) m16036a;
                    if (bundle.getInt("RESPONSE_CODE") == 0) {
                        ArrayList<String> stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
                        if (stringArrayList == null) {
                            str2 = null;
                        } else {
                            Iterator<String> it = stringArrayList.iterator();
                            while (true) {
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
                            str2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
                        }
                        if (i < 30 || str2 == null) {
                            break;
                            break;
                        }
                    }
                }
                str2 = null;
                if (i < 30) {
                    break;
                }
            } while (!z);
        }
        return arrayList;
    }
}
