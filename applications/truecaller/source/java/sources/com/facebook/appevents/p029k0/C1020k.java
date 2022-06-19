package com.facebook.appevents.p029k0;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.f0.v;
import s1.z.c.l;
@Metadata(d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0003\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010&\u001a\u0004\u0018\u00010\u00012\u0006\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0007J\b\u0010+\u001a\u00020,H\u0007J0\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/2\u0016\u00100\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/H\u0002J\u001e\u00101\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u001f2\u0006\u0010'\u001a\u00020(2\u0006\u00102\u001a\u00020\u0004H\u0002J\u001e\u00103\u001a\u0004\u0018\u00010\"2\n\u00104\u001a\u0006\u0012\u0002\b\u00030\u001f2\u0006\u00105\u001a\u00020\u0004H\u0002J0\u00106\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/2\u0006\u0010'\u001a\u00020(2\u0006\u00107\u001a\u00020\u00012\u0006\u00108\u001a\u00020\u0004H\u0002J*\u00109\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/2\u0006\u0010'\u001a\u00020(2\b\u00107\u001a\u0004\u0018\u00010\u0001H\u0007J2\u0010:\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/2\u0006\u0010'\u001a\u00020(2\b\u00107\u001a\u0004\u0018\u00010\u00012\u0006\u00108\u001a\u00020\u0004H\u0002J*\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/2\u0006\u0010'\u001a\u00020(2\b\u00107\u001a\u0004\u0018\u00010\u0001H\u0007J*\u0010<\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/2\u0006\u0010'\u001a\u00020(2\b\u00107\u001a\u0004\u0018\u00010\u0001H\u0007JF\u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040>2\u0006\u0010'\u001a\u00020(2\u0016\u0010?\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/2\b\u00107\u001a\u0004\u0018\u00010\u00012\u0006\u0010@\u001a\u00020AH\u0007JF\u0010B\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040>2\u0006\u0010'\u001a\u00020(2\u0016\u0010?\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/2\b\u00107\u001a\u0004\u0018\u00010\u00012\u0006\u0010@\u001a\u00020AH\u0002J\u000e\u0010C\u001a\u00020A2\u0006\u0010D\u001a\u00020\u0004JA\u0010E\u001a\u0004\u0018\u00010\u00012\u0006\u0010'\u001a\u00020(2\u0006\u00102\u001a\u00020\u00042\u0006\u00105\u001a\u00020\u00042\b\u0010F\u001a\u0004\u0018\u00010\u00012\u000e\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010HH\u0002¢\u0006\u0002\u0010IJ\"\u0010J\u001a\u00020A2\u0006\u0010'\u001a\u00020(2\b\u00107\u001a\u0004\u0018\u00010\u00012\u0006\u00108\u001a\u00020\u0004H\u0002J,\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040L2\u0016\u0010?\u001a\u0012\u0012\u0004\u0012\u00020\u00040.j\b\u0012\u0004\u0012\u00020\u0004`/H\u0002J\u001c\u0010M\u001a\u00020,2\u0012\u0010N\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040>H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u0016\u0010\u0014\u001a\n \u0015*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R2\u0010\u001d\u001a&\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001f0\u001ej\u0012\u0012\u0004\u0012\u00020\u0004\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u001f` X\u0082\u0004¢\u0006\u0002\n��R*\u0010!\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\"0\u001ej\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\"` X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010#\u001a\n \u0015*\u0004\u0018\u00010$0$X\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010%\u001a\n \u0015*\u0004\u0018\u00010$0$X\u0082\u0004¢\u0006\u0002\n��¨\u0006O"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseEventManager;", "", "()V", "AS_INTERFACE", "", "CACHE_CLEAR_TIME_LIMIT_SEC", "", "DETAILS_LIST", "GET_PURCHASES", "GET_PURCHASE_HISTORY", "GET_SKU_DETAILS", "INAPP", "INAPP_CONTINUATION_TOKEN", "INAPP_PURCHASE_DATA_LIST", "IN_APP_BILLING_SERVICE", "IN_APP_BILLING_SERVICE_STUB", "IS_BILLING_SUPPORTED", "ITEM_ID_LIST", "LAST_CLEARED_TIME", "MAX_QUERY_PURCHASE_NUM", "PACKAGE_NAME", "kotlin.jvm.PlatformType", "PURCHASE_EXPIRE_TIME_SEC", "PURCHASE_INAPP_STORE", "PURCHASE_STOP_QUERY_TIME_SEC", "RESPONSE_CODE", "SKU_DETAILS_STORE", "SKU_DETAIL_EXPIRE_TIME_SEC", "SUBSCRIPTION", "classMap", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Lkotlin/collections/HashMap;", "methodMap", "Ljava/lang/reflect/Method;", "purchaseInappSharedPrefs", "Landroid/content/SharedPreferences;", "skuDetailSharedPrefs", "asInterface", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "service", "Landroid/os/IBinder;", "clearSkuDetailsCache", "", "filterPurchases", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "purchases", "getClass", "className", "getMethod", "classObj", "methodName", "getPurchaseHistory", "inAppBillingObj", "type", "getPurchaseHistoryInapp", "getPurchases", "getPurchasesInapp", "getPurchasesSubs", "getSkuDetails", "", "skuList", "isSubscription", "", "getSkuDetailsFromGoogle", "hasFreeTrialPeirod", "skuDetail", "invokeMethod", "obj", "args", "", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;", "isBillingSupported", "readSkuDetailsFromCache", "", "writeSkuDetailsToCache", "skuDetailsMap", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.k */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/k.class */
public final class C1020k {

    /* renamed from: a */
    public static final C1020k f2811a = new C1020k();

    /* renamed from: b */
    public static final HashMap<String, Method> f2812b = new HashMap<>();

    /* renamed from: c */
    public static final HashMap<String, Class<?>> f2813c = new HashMap<>();

    /* renamed from: d */
    public static final String f2814d = C23228f0.m7354a().getPackageName();

    /* renamed from: e */
    public static final SharedPreferences f2815e = C23228f0.m7354a().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);

    /* renamed from: f */
    public static final SharedPreferences f2816f = C23228f0.m7354a().getSharedPreferences("com.facebook.internal.PURCHASE", 0);

    static {
        C23228f0 c23228f0 = C23228f0.f64291a;
    }

    /* renamed from: f */
    public static final ArrayList<String> m41892f(Context context, Object obj) {
        if (C1220a.m41623b(C1020k.class)) {
            return null;
        }
        try {
            l.e(context, AnalyticsConstants.CONTEXT);
            C1020k c1020k = f2811a;
            return c1020k.m41897a(c1020k.m41893e(context, obj, "inapp"));
        } catch (Throwable th) {
            C1220a.m41624a(th, C1020k.class);
            return null;
        }
    }

    /* renamed from: a */
    public final ArrayList<String> m41897a(ArrayList<String> arrayList) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            ArrayList<String> arrayList2 = new ArrayList<>();
            SharedPreferences.Editor edit = f2816f.edit();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    JSONObject jSONObject = new JSONObject(next);
                    String string = jSONObject.getString("productId");
                    long j = jSONObject.getLong("purchaseTime");
                    String string2 = jSONObject.getString("purchaseToken");
                    if (currentTimeMillis - (j / 1000) <= 86400 && !l.a(f2816f.getString(string, ""), string2)) {
                        edit.putString(string, string2);
                        arrayList2.add(next);
                    }
                } catch (JSONException e) {
                }
            }
            edit.apply();
            return arrayList2;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: b */
    public final Class<?> m41896b(Context context, String str) {
        Class<?> cls;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            HashMap<String, Class<?>> hashMap = f2813c;
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
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: c */
    public final Method m41895c(Class<?> cls, String str) {
        Method method;
        Class[] clsArr;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            HashMap<String, Method> hashMap = f2812b;
            Method method2 = hashMap.get(str);
            if (method2 != null) {
                return method2;
            }
            Method method3 = method2;
            try {
                switch (str.hashCode()) {
                    case -1801122596:
                        if (str.equals("getPurchases")) {
                            clsArr = new Class[4];
                            Class cls2 = Integer.TYPE;
                            l.d(cls2, "TYPE");
                            clsArr[0] = cls2;
                            clsArr[1] = String.class;
                            clsArr[2] = String.class;
                            clsArr[3] = String.class;
                            break;
                        } else {
                            clsArr = null;
                            break;
                        }
                    case -1450694211:
                        if (str.equals("isBillingSupported")) {
                            clsArr = new Class[3];
                            Class cls3 = Integer.TYPE;
                            l.d(cls3, "TYPE");
                            clsArr[0] = cls3;
                            clsArr[1] = String.class;
                            clsArr[2] = String.class;
                            break;
                        } else {
                            clsArr = null;
                            break;
                        }
                    case -1123215065:
                        if (str.equals("asInterface")) {
                            clsArr = new Class[1];
                            clsArr[0] = IBinder.class;
                            break;
                        } else {
                            clsArr = null;
                            break;
                        }
                    case -594356707:
                        if (str.equals("getPurchaseHistory")) {
                            clsArr = new Class[5];
                            Class cls4 = Integer.TYPE;
                            l.d(cls4, "TYPE");
                            clsArr[0] = cls4;
                            clsArr[1] = String.class;
                            clsArr[2] = String.class;
                            clsArr[3] = String.class;
                            clsArr[4] = Bundle.class;
                            break;
                        } else {
                            clsArr = null;
                            break;
                        }
                    case -573310373:
                        if (str.equals("getSkuDetails")) {
                            clsArr = new Class[4];
                            Class cls5 = Integer.TYPE;
                            l.d(cls5, "TYPE");
                            clsArr[0] = cls5;
                            clsArr[1] = String.class;
                            clsArr[2] = String.class;
                            clsArr[3] = Bundle.class;
                            break;
                        } else {
                            clsArr = null;
                            break;
                        }
                    default:
                        clsArr = null;
                        break;
                }
                method = clsArr == null ? cls.getDeclaredMethod(str, null) : cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
                method3 = method;
                hashMap.put(str, method);
            } catch (NoSuchMethodException e) {
                method = method3;
            }
            return method;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: d */
    public final ArrayList<String> m41894d(Context context, Object obj, String str) {
        boolean z;
        ArrayList<String> stringArrayList;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            if (m41889i(context, obj, str)) {
                String str2 = null;
                int i = 0;
                boolean z2 = false;
                do {
                    Object m41890h = m41890h(context, "com.android.vending.billing.IInAppBillingService", "getPurchaseHistory", obj, new Object[]{6, f2814d, str, str2, new Bundle()});
                    if (m41890h != null) {
                        long currentTimeMillis = System.currentTimeMillis() / 1000;
                        Bundle bundle = (Bundle) m41890h;
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
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00aa A[EDGE_INSN: B:34:0x00aa->B:25:0x00aa ?: BREAK  , SYNTHETIC] */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.ArrayList<java.lang.String> m41893e(android.content.Context r11, java.lang.Object r12, java.lang.String r13) {
        /*
            r10 = this;
            r0 = r10
            boolean r0 = com.facebook.internal.p037u0.p040m.C1220a.m41623b(r0)
            if (r0 == 0) goto L9
            r0 = 0
            return r0
        L9:
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lad
            r14 = r0
            r0 = r14
            r0.<init>()     // Catch: java.lang.Throwable -> Lad
            r0 = r12
            if (r0 != 0) goto L1a
            r0 = r14
            return r0
        L1a:
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = r13
            boolean r0 = r0.m41889i(r1, r2, r3)     // Catch: java.lang.Throwable -> Lad
            if (r0 == 0) goto Laa
            r0 = 0
            r15 = r0
            r0 = 0
            r16 = r0
        L2a:
            r0 = r10
            r1 = r11
            java.lang.String r2 = "com.android.vending.billing.IInAppBillingService"
            java.lang.String r3 = "getPurchases"
            r4 = r12
            r5 = 4
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch: java.lang.Throwable -> Lad
            r6 = r5
            r7 = 0
            r8 = 3
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch: java.lang.Throwable -> Lad
            r6[r7] = r8     // Catch: java.lang.Throwable -> Lad
            r6 = r5
            r7 = 1
            java.lang.String r8 = com.facebook.appevents.p029k0.C1020k.f2814d     // Catch: java.lang.Throwable -> Lad
            r6[r7] = r8     // Catch: java.lang.Throwable -> Lad
            r6 = r5
            r7 = 2
            r8 = r13
            r6[r7] = r8     // Catch: java.lang.Throwable -> Lad
            r6 = r5
            r7 = 3
            r8 = r15
            r6[r7] = r8     // Catch: java.lang.Throwable -> Lad
            java.lang.Object r0 = r0.m41890h(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lad
            r17 = r0
            r0 = r17
            if (r0 == 0) goto L97
            r0 = r17
            android.os.Bundle r0 = (android.os.Bundle) r0     // Catch: java.lang.Throwable -> Lad
            r15 = r0
            r0 = r15
            java.lang.String r1 = "RESPONSE_CODE"
            int r0 = r0.getInt(r1)     // Catch: java.lang.Throwable -> Lad
            if (r0 != 0) goto L97
            r0 = r15
            java.lang.String r1 = "INAPP_PURCHASE_DATA_LIST"
            java.util.ArrayList r0 = r0.getStringArrayList(r1)     // Catch: java.lang.Throwable -> Lad
            r17 = r0
            r0 = r17
            if (r0 == 0) goto Laa
            r0 = r16
            r1 = r17
            int r1 = r1.size()     // Catch: java.lang.Throwable -> Lad
            int r0 = r0 + r1
            r16 = r0
            r0 = r14
            r1 = r17
            boolean r0 = r0.addAll(r1)     // Catch: java.lang.Throwable -> Lad
            r0 = r15
            java.lang.String r1 = "INAPP_CONTINUATION_TOKEN"
            java.lang.String r0 = r0.getString(r1)     // Catch: java.lang.Throwable -> Lad
            r17 = r0
            goto L9a
        L97:
            r0 = 0
            r17 = r0
        L9a:
            r0 = r16
            r1 = 30
            if (r0 >= r1) goto Laa
            r0 = r17
            r15 = r0
            r0 = r17
            if (r0 != 0) goto L2a
        Laa:
            r0 = r14
            return r0
        Lad:
            r11 = move-exception
            r0 = r11
            r1 = r10
            com.facebook.internal.p037u0.p040m.C1220a.m41624a(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p029k0.C1020k.m41893e(android.content.Context, java.lang.Object, java.lang.String):java.util.ArrayList");
    }

    /* renamed from: g */
    public final Map<String, String> m41891g(Context context, ArrayList<String> arrayList, Object obj, boolean z) {
        int size;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            Map<String, String> linkedHashMap = new LinkedHashMap<>();
            if (obj != null && !arrayList.isEmpty()) {
                Bundle bundle = new Bundle();
                bundle.putStringArrayList("ITEM_ID_LIST", arrayList);
                int i = 0;
                Object m41890h = m41890h(context, "com.android.vending.billing.IInAppBillingService", "getSkuDetails", obj, new Object[]{3, f2814d, z ? "subs" : "inapp", bundle});
                if (m41890h != null) {
                    Bundle bundle2 = (Bundle) m41890h;
                    if (bundle2.getInt("RESPONSE_CODE") == 0) {
                        ArrayList<String> stringArrayList = bundle2.getStringArrayList("DETAILS_LIST");
                        if (stringArrayList != null && arrayList.size() == stringArrayList.size() && (size = arrayList.size() - 1) >= 0) {
                            while (true) {
                                int i2 = i + 1;
                                String str = arrayList.get(i);
                                l.d(str, "skuList[i]");
                                String str2 = stringArrayList.get(i);
                                l.d(str2, "skuDetailsList[i]");
                                linkedHashMap.put(str, str2);
                                if (i2 > size) {
                                    break;
                                }
                                i = i2;
                            }
                        }
                        m41887k(linkedHashMap);
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: h */
    public final Object m41890h(Context context, String str, String str2, Object obj, Object[] objArr) {
        Method m41895c;
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            Class<?> m41896b = m41896b(context, str);
            if (m41896b == null || (m41895c = m41895c(m41896b, str2)) == null) {
                return null;
            }
            Object obj2 = obj;
            if (obj != null) {
                obj2 = m41896b.cast(obj);
            }
            try {
                return m41895c.invoke(obj2, Arrays.copyOf(objArr, objArr.length));
            } catch (IllegalAccessException | InvocationTargetException e) {
                return null;
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: i */
    public final boolean m41889i(Context context, Object obj, String str) {
        if (!C1220a.m41623b(this) && obj != null) {
            try {
                Object m41890h = m41890h(context, "com.android.vending.billing.IInAppBillingService", "isBillingSupported", obj, new Object[]{3, f2814d, str});
                boolean z = false;
                if (m41890h != null) {
                    z = false;
                    if (((Integer) m41890h).intValue() == 0) {
                        z = true;
                    }
                }
                return z;
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return false;
            }
        }
        return false;
    }

    /* renamed from: j */
    public final Map<String, String> m41888j(ArrayList<String> arrayList) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                String string = f2815e.getString(next, null);
                if (string != null) {
                    List U = v.U(string, new String[]{";"}, false, 2, 2);
                    if (currentTimeMillis - Long.parseLong((String) U.get(0)) < 43200) {
                        l.d(next, "sku");
                        linkedHashMap.put(next, U.get(1));
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: k */
    public final void m41887k(Map<String, String> map) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences.Editor edit = f2815e.edit();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                edit.putString(key, currentTimeMillis + ';' + value);
            }
            edit.apply();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
