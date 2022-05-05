package com.facebook.appevents.p038s;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import androidx.annotation.Nullable;
import com.facebook.ads.ExtraHints;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.appevents.s.g */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/s/g.class */
public class C2346g {

    /* renamed from: a */
    public static final HashMap<String, Method> f2858a = new HashMap<>();

    /* renamed from: b */
    public static final HashMap<String, Class<?>> f2859b = new HashMap<>();

    /* renamed from: c */
    public static final String f2860c = C6135n.m23746e().getPackageName();

    /* renamed from: d */
    public static final SharedPreferences f2861d = C6135n.m23746e().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);

    /* renamed from: e */
    public static final SharedPreferences f2862e = C6135n.m23746e().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    @Nullable
    /* renamed from: a */
    public static Class<?> m35103a(Context context, String str) {
        Class<?> cls = f2859b.get(str);
        if (cls != null) {
            return cls;
        }
        try {
            cls = context.getClassLoader().loadClass(str);
            cls = cls;
            f2859b.put(str, cls);
        } catch (ClassNotFoundException e) {
        }
        return cls;
    }

    @Nullable
    /* renamed from: a */
    public static Object m35106a(Context context, IBinder iBinder) {
        return m35102a(context, "com.android.vending.billing.IInAppBillingService$Stub", "asInterface", null, new Object[]{iBinder});
    }

    @Nullable
    /* renamed from: a */
    public static Object m35102a(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method a;
        Class<?> a2 = m35103a(context, str);
        if (a2 == null || (a = m35100a(a2, str2)) == null) {
            return null;
        }
        Object obj2 = obj;
        if (obj != null) {
            obj2 = a2.cast(obj);
        }
        try {
            return a.invoke(obj2, objArr);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    @Nullable
    /* renamed from: a */
    public static Method m35100a(Class<?> cls, String str) {
        Method method = f2858a.get(str);
        if (method != null) {
            return method;
        }
        Class<?>[] clsArr = null;
        char c = 65535;
        Method method2 = method;
        try {
            switch (str.hashCode()) {
                case -1801122596:
                    if (str.equals("getPurchases")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1450694211:
                    if (str.equals("isBillingSupported")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1123215065:
                    if (str.equals("asInterface")) {
                        c = 0;
                        break;
                    }
                    break;
                case -594356707:
                    if (str.equals("getPurchaseHistory")) {
                        c = 4;
                        break;
                    }
                    break;
                case -573310373:
                    if (str.equals("getSkuDetails")) {
                        c = 1;
                        break;
                    }
                    break;
            }
            if (c == 0) {
                clsArr = new Class[1];
                clsArr[0] = IBinder.class;
            } else if (c == 1) {
                clsArr = new Class[4];
                clsArr[0] = Integer.TYPE;
                clsArr[1] = String.class;
                clsArr[2] = String.class;
                clsArr[3] = Bundle.class;
            } else if (c == 2) {
                clsArr = new Class[3];
                clsArr[0] = Integer.TYPE;
                clsArr[1] = String.class;
                clsArr[2] = String.class;
            } else if (c == 3) {
                clsArr = new Class[4];
                clsArr[0] = Integer.TYPE;
                clsArr[1] = String.class;
                clsArr[2] = String.class;
                clsArr[3] = String.class;
            } else if (c == 4) {
                clsArr = new Class[5];
                clsArr[0] = Integer.TYPE;
                clsArr[1] = String.class;
                clsArr[2] = String.class;
                clsArr[3] = String.class;
                clsArr[4] = Bundle.class;
            }
            method2 = cls.getDeclaredMethod(str, clsArr);
            method2 = method2;
            f2858a.put(str, method2);
        } catch (NoSuchMethodException e) {
        }
        return method2;
    }

    /* renamed from: a */
    public static ArrayList<String> m35105a(Context context, Object obj) {
        Class<?> a;
        ArrayList<String> arrayList = new ArrayList<>();
        if (!(obj == null || (a = m35103a(context, "com.android.vending.billing.IInAppBillingService")) == null || m35100a(a, "getPurchaseHistory") == null)) {
            return m35098a(m35104a(context, obj, "inapp"));
        }
        return arrayList;
    }

    /* renamed from: a */
    public static ArrayList<String> m35104a(Context context, Object obj, String str) {
        boolean z;
        ArrayList<String> stringArrayList;
        ArrayList<String> arrayList = new ArrayList<>();
        if (m35091c(context, obj, str).booleanValue()) {
            String str2 = null;
            int i = 0;
            boolean z2 = false;
            do {
                Object a = m35102a(context, "com.android.vending.billing.IInAppBillingService", "getPurchaseHistory", obj, new Object[]{6, f2860c, str, str2, new Bundle()});
                if (a != null) {
                    long currentTimeMillis = System.currentTimeMillis() / 1000;
                    Bundle bundle = (Bundle) a;
                    if (bundle.getInt("RESPONSE_CODE") == 0 && (stringArrayList = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST")) != null) {
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
                        str2 = bundle.getString("INAPP_CONTINUATION_TOKEN");
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

    /* renamed from: a */
    public static ArrayList<String> m35098a(ArrayList<String> arrayList) {
        ArrayList<String> arrayList2 = new ArrayList<>();
        SharedPreferences.Editor edit = f2862e.edit();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            try {
                JSONObject jSONObject = new JSONObject(next);
                String string = jSONObject.getString("productId");
                long j = jSONObject.getLong("purchaseTime");
                String string2 = jSONObject.getString("purchaseToken");
                if (currentTimeMillis - (j / 1000) <= 86400 && !f2862e.getString(string, "").equals(string2)) {
                    edit.putString(string, string2);
                    arrayList2.add(next);
                }
            } catch (JSONException e) {
            }
        }
        edit.apply();
        return arrayList2;
    }

    /* renamed from: a */
    public static Map<String, String> m35101a(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        Map<String, String> b = m35093b(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (!b.containsKey(next)) {
                arrayList2.add(next);
            }
        }
        b.putAll(m35094b(context, arrayList2, obj, z));
        return b;
    }

    /* renamed from: a */
    public static void m35107a() {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        long j = f2861d.getLong("LAST_CLEARED_TIME", 0L);
        if (j == 0) {
            f2861d.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
        } else if (currentTimeMillis - j > 604800) {
            f2861d.edit().clear().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
        }
    }

    /* renamed from: a */
    public static void m35097a(Map<String, String> map) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        SharedPreferences.Editor edit = f2861d.edit();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            edit.putString(key, currentTimeMillis + ExtraHints.KEYWORD_SEPARATOR + entry.getValue());
        }
        edit.apply();
    }

    /* renamed from: a */
    public static boolean m35099a(String str) {
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
    public static ArrayList<String> m35096b(Context context, Object obj) {
        return m35098a(m35095b(context, obj, "inapp"));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0099 A[EDGE_INSN: B:25:0x0099->B:21:0x0099 ?: BREAK  , SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<java.lang.String> m35095b(android.content.Context r9, java.lang.Object r10, java.lang.String r11) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r12 = r0
            r0 = r10
            if (r0 != 0) goto L_0x000e
            r0 = r12
            return r0
        L_0x000e:
            r0 = r9
            r1 = r10
            r2 = r11
            java.lang.Boolean r0 = m35091c(r0, r1, r2)
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0099
            r0 = 0
            r13 = r0
            r0 = 0
            r14 = r0
        L_0x0020:
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
            java.lang.String r7 = com.facebook.appevents.p038s.C2346g.f2860c
            r5[r6] = r7
            r5 = r4
            r6 = 2
            r7 = r11
            r5[r6] = r7
            r5 = r4
            r6 = 3
            r7 = r13
            r5[r6] = r7
            java.lang.Object r0 = m35102a(r0, r1, r2, r3, r4)
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L_0x0086
            r0 = r15
            android.os.Bundle r0 = (android.os.Bundle) r0
            r13 = r0
            r0 = r13
            java.lang.String r1 = "RESPONSE_CODE"
            int r0 = r0.getInt(r1)
            if (r0 != 0) goto L_0x0086
            r0 = r13
            java.lang.String r1 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r0 = r0.getStringArrayList(r1)
            r15 = r0
            r0 = r15
            if (r0 == 0) goto L_0x0099
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
            goto L_0x0089
        L_0x0086:
            r0 = 0
            r15 = r0
        L_0x0089:
            r0 = r14
            r1 = 30
            if (r0 >= r1) goto L_0x0099
            r0 = r15
            r13 = r0
            r0 = r15
            if (r0 != 0) goto L_0x0020
        L_0x0099:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p038s.C2346g.m35095b(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    /* renamed from: b */
    public static Map<String, String> m35094b(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        HashMap hashMap = new HashMap();
        if (obj != null && !arrayList.isEmpty()) {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
            Object a = m35102a(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, new Object[]{3, f2860c, z ? "subs" : "inapp", bundle});
            if (a != null) {
                Bundle bundle2 = (Bundle) a;
                if (bundle2.getInt("RESPONSE_CODE") == 0) {
                    ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                    if (stringArrayList != null && arrayList.size() == stringArrayList.size()) {
                        for (int i = 0; i < arrayList.size(); i++) {
                            hashMap.put(arrayList.get(i), stringArrayList.get(i));
                        }
                    }
                    m35097a(hashMap);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    public static Map<String, String> m35093b(ArrayList<String> arrayList) {
        HashMap hashMap = new HashMap();
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        Iterator<String> it = arrayList.iterator();
        while (it.hasNext()) {
            String next = it.next();
            String string = f2861d.getString(next, null);
            if (string != null) {
                String[] split = string.split(ExtraHints.KEYWORD_SEPARATOR, 2);
                if (currentTimeMillis - Long.parseLong(split[0]) < 43200) {
                    hashMap.put(next, split[1]);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: c */
    public static Boolean m35091c(Context context, Object obj, String str) {
        if (obj == null) {
            return false;
        }
        Object a = m35102a(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f2860c, str});
        boolean z = false;
        if (a != null) {
            z = false;
            if (((Integer) a).intValue() == 0) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: c */
    public static ArrayList<String> m35092c(Context context, Object obj) {
        return m35098a(m35095b(context, obj, "subs"));
    }
}
