package com.facebook.appevents.p029k0;

import android.content.SharedPreferences;
import com.facebook.appevents.p031m0.C1038i;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.huawei.hms.push.constant.RemoteMessageConst;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Metadata;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.f0.v;
import s1.u.i;
import s1.z.c.l;
@Metadata(d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0010\t\n��\n\u0002\u0010#\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\bÇ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J-\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\rH\u0001¢\u0006\u0002\b\u0017J\r\u0010\u0018\u001a\u00020\u0019H\u0001¢\u0006\u0002\b\u001aJC\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00142\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\u00142\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014H\u0001¢\u0006\u0002\b\u001dJ\b\u0010\u001e\u001a\u00020\u001fH\u0007J2\u0010 \u001a\u00020\u00192\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00150\r2\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0014H\u0007J\u001c\u0010!\u001a\u00020\u00192\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0014H\u0002J\b\u0010\"\u001a\u00020\u0019H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n��R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0010X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n��¨\u0006#"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseLoggerManager;", "", "()V", "CACHE_CLEAR_TIME_LIMIT_SEC", "", "LAST_CLEARED_TIME", "", "LAST_QUERY_PURCHASE_HISTORY_TIME", "PRODUCT_DETAILS_STORE", "PURCHASE_DETAILS_SET", "PURCHASE_IN_CACHE_INTERVAL", "PURCHASE_TIME", "cachedPurchaseMap", "", "", "cachedPurchaseSet", "", "sharedPreferences", "Landroid/content/SharedPreferences;", "cacheDeDupPurchase", "", "Lorg/json/JSONObject;", "purchaseDetailsMap", "cacheDeDupPurchase$facebook_core_release", "clearOutdatedProductInfoInCache", "", "clearOutdatedProductInfoInCache$facebook_core_release", "constructLoggingReadyMap", "skuDetailsMap", "constructLoggingReadyMap$facebook_core_release", "eligibleQueryPurchaseHistory", "", "filterPurchaseLogging", "logPurchases", "readPurchaseCache", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.l */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/l.class */
public final class C1021l {

    /* renamed from: b */
    public static SharedPreferences f2818b;

    /* renamed from: a */
    public static final C1021l f2817a = new C1021l();

    /* renamed from: c */
    public static final Set<String> f2819c = new CopyOnWriteArraySet();

    /* renamed from: d */
    public static final Map<String, Long> f2820d = new ConcurrentHashMap();

    /* renamed from: d */
    public static final boolean m41883d() {
        if (C1220a.m41623b(C1021l.class)) {
            return false;
        }
        try {
            f2817a.m41881f();
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences = f2818b;
            if (sharedPreferences == null) {
                l.l("sharedPreferences");
                throw null;
            }
            long j = sharedPreferences.getLong("LAST_QUERY_PURCHASE_HISTORY_TIME", 0L);
            if (j != 0 && currentTimeMillis - j < ((long) RemoteMessageConst.DEFAULT_TTL)) {
                return false;
            }
            SharedPreferences sharedPreferences2 = f2818b;
            if (sharedPreferences2 != null) {
                sharedPreferences2.edit().putLong("LAST_QUERY_PURCHASE_HISTORY_TIME", currentTimeMillis).apply();
                return true;
            }
            l.l("sharedPreferences");
            throw null;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1021l.class);
            return false;
        }
    }

    /* renamed from: e */
    public static final void m41882e(Map<String, JSONObject> map, Map<String, ? extends JSONObject> map2) {
        if (C1220a.m41623b(C1021l.class)) {
            return;
        }
        try {
            l.e(map, "purchaseDetailsMap");
            l.e(map2, "skuDetailsMap");
            C1021l c1021l = f2817a;
            c1021l.m41881f();
            Map<String, String> m41884c = c1021l.m41884c(c1021l.m41886a(map), map2);
            if (C1220a.m41623b(c1021l)) {
                return;
            }
            for (Map.Entry<String, String> entry : m41884c.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (key != null && value != null) {
                    C1038i c1038i = C1038i.f2863a;
                    C1038i.m41863b(key, value, false);
                }
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, C1021l.class);
        }
    }

    /* renamed from: a */
    public final Map<String, JSONObject> m41886a(Map<String, JSONObject> map) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            l.e(map, "purchaseDetailsMap");
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            for (Map.Entry entry : i.W0(map).entrySet()) {
                String str = (String) entry.getKey();
                JSONObject jSONObject = (JSONObject) entry.getValue();
                try {
                    if (jSONObject.has("purchaseToken")) {
                        String string = jSONObject.getString("purchaseToken");
                        if (f2820d.containsKey(string)) {
                            map.remove(str);
                        } else {
                            Set<String> set = f2819c;
                            StringBuilder sb = new StringBuilder();
                            sb.append((Object) string);
                            sb.append(';');
                            sb.append(currentTimeMillis);
                            set.add(sb.toString());
                        }
                    }
                } catch (Exception e) {
                }
            }
            SharedPreferences sharedPreferences = f2818b;
            if (sharedPreferences != null) {
                sharedPreferences.edit().putStringSet("PURCHASE_DETAILS_SET", f2819c).apply();
                return new HashMap(map);
            }
            l.l("sharedPreferences");
            throw null;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* renamed from: b */
    public final void m41885b() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            SharedPreferences sharedPreferences = f2818b;
            if (sharedPreferences == null) {
                l.l("sharedPreferences");
                throw null;
            }
            long j = sharedPreferences.getLong("LAST_CLEARED_TIME", 0L);
            if (j == 0) {
                SharedPreferences sharedPreferences2 = f2818b;
                if (sharedPreferences2 == null) {
                    l.l("sharedPreferences");
                    throw null;
                }
                sharedPreferences2.edit().putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
            } else if (currentTimeMillis - j > 604800) {
                for (Map.Entry entry : i.W0(f2820d).entrySet()) {
                    String str = (String) entry.getKey();
                    long longValue = ((Number) entry.getValue()).longValue();
                    if (currentTimeMillis - longValue > 86400) {
                        Set<String> set = f2819c;
                        set.remove(str + ';' + longValue);
                        f2820d.remove(str);
                    }
                }
                SharedPreferences sharedPreferences3 = f2818b;
                if (sharedPreferences3 == null) {
                    l.l("sharedPreferences");
                    throw null;
                }
                sharedPreferences3.edit().putStringSet("PURCHASE_DETAILS_SET", f2819c).putLong("LAST_CLEARED_TIME", currentTimeMillis).apply();
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: c */
    public final Map<String, String> m41884c(Map<String, ? extends JSONObject> map, Map<String, ? extends JSONObject> map2) {
        if (C1220a.m41623b(this)) {
            return null;
        }
        try {
            l.e(map, "purchaseDetailsMap");
            l.e(map2, "skuDetailsMap");
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ? extends JSONObject> entry : map.entrySet()) {
                String key = entry.getKey();
                JSONObject value = entry.getValue();
                JSONObject jSONObject = map2.get(key);
                if (value != null && value.has("purchaseTime")) {
                    try {
                        if (currentTimeMillis - (value.getLong("purchaseTime") / 1000) <= 86400 && jSONObject != null) {
                            String jSONObject2 = value.toString();
                            l.d(jSONObject2, "purchaseDetail.toString()");
                            String jSONObject3 = jSONObject.toString();
                            l.d(jSONObject3, "skuDetail.toString()");
                            linkedHashMap.put(jSONObject2, jSONObject3);
                        }
                    } catch (Exception e) {
                    }
                }
            }
            return linkedHashMap;
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: f */
    public final void m41881f() {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            C23228f0 c23228f0 = C23228f0.f64291a;
            SharedPreferences sharedPreferences = C23228f0.m7354a().getSharedPreferences("com.facebook.internal.SKU_DETAILS", 0);
            SharedPreferences sharedPreferences2 = C23228f0.m7354a().getSharedPreferences("com.facebook.internal.PURCHASE", 0);
            if (sharedPreferences.contains("LAST_CLEARED_TIME")) {
                sharedPreferences.edit().clear().apply();
                sharedPreferences2.edit().clear().apply();
            }
            SharedPreferences sharedPreferences3 = C23228f0.m7354a().getSharedPreferences("com.facebook.internal.iap.PRODUCT_DETAILS", 0);
            l.d(sharedPreferences3, "getApplicationContext().getSharedPreferences(PRODUCT_DETAILS_STORE, Context.MODE_PRIVATE)");
            f2818b = sharedPreferences3;
            Set<String> set = f2819c;
            if (sharedPreferences3 == null) {
                l.l("sharedPreferences");
                throw null;
            }
            Set<String> stringSet = sharedPreferences3.getStringSet("PURCHASE_DETAILS_SET", new HashSet());
            Set<String> set2 = stringSet;
            if (stringSet == null) {
                set2 = new HashSet<>();
            }
            set.addAll(set2);
            for (String str : set) {
                List U = v.U(str, new String[]{";"}, false, 2, 2);
                f2820d.put(U.get(0), Long.valueOf(Long.parseLong((String) U.get(1))));
            }
            m41885b();
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
