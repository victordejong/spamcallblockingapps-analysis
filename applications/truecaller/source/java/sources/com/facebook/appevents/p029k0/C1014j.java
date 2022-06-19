package com.facebook.appevents.p029k0;

import android.content.Context;
import com.facebook.internal.p037u0.p040m.C1220a;
import com.razorpay.AnalyticsConstants;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import org.json.JSONException;
import org.json.JSONObject;
import s1.f0.r;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0007\b\u0007\u0018�� )2\u00020\u0001:\u0005()*+,B«\u0001\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\n\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\n\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\n\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0006\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u0012\u0006\u0010\u0012\u001a\u00020\u000e\u0012\u0006\u0010\u0013\u001a\u00020\u000e\u0012\u0006\u0010\u0014\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017J\u0016\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0016\u0010 \u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010!\u001a\u00020\u001fJ\u0018\u0010\"\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\u001fH\u0002J(\u0010$\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001a2\u000e\u0010%\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0&2\u0006\u0010#\u001a\u00020\u001fH\u0002J\b\u0010'\u001a\u00020\u001cH\u0002R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0005\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0016\u0010\u0018\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u0019X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\b\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\t\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0012\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006-"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;", "", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "billingClient", "billingClientClazz", "Ljava/lang/Class;", "purchaseResultClazz", "purchaseClazz", "skuDetailsClazz", "purchaseHistoryRecordClazz", "skuDetailsResponseListenerClazz", "purchaseHistoryResponseListenerClazz", "queryPurchasesMethod", "Ljava/lang/reflect/Method;", "getPurchaseListMethod", "getOriginalJsonMethod", "getOriginalJsonSkuMethod", "getOriginalJsonPurchaseHistoryMethod", "querySkuDetailsAsyncMethod", "queryPurchaseHistoryAsyncMethod", "inAppPurchaseSkuDetailsWrapper", "Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;", "(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/facebook/appevents/iap/InAppPurchaseSkuDetailsWrapper;)V", "historyPurchaseSet", "", "", "queryPurchase", "", "skuType", "querySkuRunnable", "Ljava/lang/Runnable;", "queryPurchaseHistory", "queryPurchaseHistoryRunnable", "queryPurchaseHistoryAsync", "runnable", "querySkuDetailsAsync", "skuIDs", "", "startConnection", "BillingClientStateListenerWrapper", "Companion", "PurchaseHistoryResponseListenerWrapper", "PurchasesUpdatedListenerWrapper", "SkuDetailsResponseListenerWrapper", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.appevents.k0.j */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/j.class */
public final class C1014j {

    /* renamed from: u */
    public static C1014j f2785u;

    /* renamed from: a */
    public final Context f2789a;

    /* renamed from: b */
    public final Object f2790b;

    /* renamed from: c */
    public final Class<?> f2791c;

    /* renamed from: d */
    public final Class<?> f2792d;

    /* renamed from: e */
    public final Class<?> f2793e;

    /* renamed from: f */
    public final Class<?> f2794f;

    /* renamed from: g */
    public final Class<?> f2795g;

    /* renamed from: h */
    public final Class<?> f2796h;

    /* renamed from: i */
    public final Class<?> f2797i;

    /* renamed from: j */
    public final Method f2798j;

    /* renamed from: k */
    public final Method f2799k;

    /* renamed from: l */
    public final Method f2800l;

    /* renamed from: m */
    public final Method f2801m;

    /* renamed from: n */
    public final Method f2802n;

    /* renamed from: o */
    public final Method f2803o;

    /* renamed from: p */
    public final Method f2804p;

    /* renamed from: q */
    public final C1023n f2805q;

    /* renamed from: r */
    public final Set<String> f2806r = new CopyOnWriteArraySet();

    /* renamed from: s */
    public static final C1016b f2783s = new C1016b(null);

    /* renamed from: t */
    public static final AtomicBoolean f2784t = new AtomicBoolean(false);

    /* renamed from: v */
    public static final AtomicBoolean f2786v = new AtomicBoolean(false);

    /* renamed from: w */
    public static final Map<String, JSONObject> f2787w = new ConcurrentHashMap();

    /* renamed from: x */
    public static final Map<String, JSONObject> f2788x = new ConcurrentHashMap();

    @Metadata(d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0001\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$BillingClientStateListenerWrapper;", "Ljava/lang/reflect/InvocationHandler;", "()V", "invoke", "", "proxy", "m", "Ljava/lang/reflect/Method;", "args", "", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.k0.j$a */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/j$a.class */
    public static final class C1015a implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (C1220a.m41623b(this)) {
                return null;
            }
            try {
                l.e(obj, "proxy");
                l.e(method, "m");
                if (l.a(method.getName(), "onBillingSetupFinished")) {
                    C1014j.f2783s.m41900d().set(true);
                    return null;
                }
                String name = method.getName();
                l.d(name, "m.name");
                if (!r.m(name, "onBillingServiceDisconnected", false, 2)) {
                    return null;
                }
                C1014j.f2783s.m41900d().set(false);
                return null;
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return null;
            }
        }
    }

    @Metadata(d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010,\u001a\u0004\u0018\u00010\u00012\b\u0010-\u001a\u0004\u0018\u00010.2\n\u0010/\u001a\u0006\u0012\u0002\b\u000300H\u0002J\u0010\u00101\u001a\u0002022\u0006\u0010-\u001a\u00020.H\u0002J\u0012\u00103\u001a\u0004\u0018\u00010\"2\u0006\u0010-\u001a\u00020.H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0019\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010!\u001a\u0004\u0018\u00010\"X\u0082\u000e¢\u0006\u0002\n��R\u0011\u0010#\u001a\u00020 ¢\u0006\b\n��\u001a\u0004\b#\u0010$R\u001d\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020'0&¢\u0006\b\n��\u001a\u0004\b(\u0010)R\u001d\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020'0&¢\u0006\b\n��\u001a\u0004\b+\u0010)¨\u00064"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$Companion;", "", "()V", "CLASSNAME_BILLING_CLIENT", "", "CLASSNAME_BILLING_CLIENT_BUILDER", "CLASSNAME_BILLING_CLIENT_STATE_LISTENER", "CLASSNAME_PURCHASE", "CLASSNAME_PURCHASES_RESULT", "CLASSNAME_PURCHASE_HISTORY_RECORD", "CLASSNAME_PURCHASE_HISTORY_RESPONSE_LISTENER", "CLASSNAME_PURCHASE_UPDATED_LISTENER", "CLASSNAME_SKU_DETAILS", "CLASSNAME_SKU_DETAILS_RESPONSE_LISTENER", "IN_APP", "METHOD_BUILD", "METHOD_ENABLE_PENDING_PURCHASES", "METHOD_GET_ORIGINAL_JSON", "METHOD_GET_PURCHASE_LIST", "METHOD_NEW_BUILDER", "METHOD_ON_BILLING_SERVICE_DISCONNECTED", "METHOD_ON_BILLING_SETUP_FINISHED", "METHOD_ON_PURCHASE_HISTORY_RESPONSE", "METHOD_ON_SKU_DETAILS_RESPONSE", "METHOD_QUERY_PURCHASES", "METHOD_QUERY_PURCHASE_HISTORY_ASYNC", "METHOD_QUERY_SKU_DETAILS_ASYNC", "METHOD_SET_LISTENER", "METHOD_START_CONNECTION", "PACKAGE_NAME", "PRODUCT_ID", "initialized", "Ljava/util/concurrent/atomic/AtomicBoolean;", "instance", "Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;", "isServiceConnected", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "purchaseDetailsMap", "", "Lorg/json/JSONObject;", "getPurchaseDetailsMap", "()Ljava/util/Map;", "skuDetailsMap", "getSkuDetailsMap", "createBillingClient", AnalyticsConstants.CONTEXT, "Landroid/content/Context;", "billingClientClazz", "Ljava/lang/Class;", "createInstance", "", "getOrCreateInstance", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.k0.j$b */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/j$b.class */
    public static final class C1016b {
        public C1016b(f fVar) {
        }

        /* JADX WARN: Removed duplicated region for block: B:83:0x02c4 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:84:0x02c5  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m41903a(android.content.Context r22) {
            /*
                Method dump skipped, instructions count: 811
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p029k0.C1014j.C1016b.m41903a(android.content.Context):void");
        }

        /* renamed from: b */
        public final Map<String, JSONObject> m41902b() {
            Map<String, JSONObject> map = null;
            if (!C1220a.m41623b(C1014j.class)) {
                try {
                    map = C1014j.f2787w;
                } catch (Throwable th) {
                    C1220a.m41624a(th, C1014j.class);
                }
            }
            return map;
        }

        /* renamed from: c */
        public final Map<String, JSONObject> m41901c() {
            Map<String, JSONObject> map = null;
            if (!C1220a.m41623b(C1014j.class)) {
                try {
                    map = C1014j.f2788x;
                } catch (Throwable th) {
                    C1220a.m41624a(th, C1014j.class);
                }
            }
            return map;
        }

        /* renamed from: d */
        public final AtomicBoolean m41900d() {
            AtomicBoolean atomicBoolean = null;
            if (!C1220a.m41623b(C1014j.class)) {
                try {
                    atomicBoolean = C1014j.f2786v;
                } catch (Throwable th) {
                    C1220a.m41624a(th, C1014j.class);
                }
            }
            return atomicBoolean;
        }
    }

    @Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0081\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\t\u001a\u00020\n2\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\fH\u0002J0\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0013H\u0096\u0002¢\u0006\u0002\u0010\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchaseHistoryResponseListenerWrapper;", "Ljava/lang/reflect/InvocationHandler;", "runnable", "Ljava/lang/Runnable;", "(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V", "getRunnable", "()Ljava/lang/Runnable;", "setRunnable", "(Ljava/lang/Runnable;)V", "getPurchaseHistoryRecord", "", "purchaseHistoryRecordList", "", "invoke", "", "proxy", AnalyticsConstants.METHOD, "Ljava/lang/reflect/Method;", "args", "", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.k0.j$c */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/j$c.class */
    public final class C1017c implements InvocationHandler {

        /* renamed from: a */
        public Runnable f2807a;

        /* renamed from: b */
        public final /* synthetic */ C1014j f2808b;

        public C1017c(C1014j c1014j, Runnable runnable) {
            l.e(c1014j, "this$0");
            l.e(runnable, "runnable");
            this.f2808b = c1014j;
            this.f2807a = runnable;
        }

        /* JADX WARN: Removed duplicated region for block: B:28:0x0085 A[Catch: all -> 0x0139, Exception -> 0x0140, TRY_LEAVE, TryCatch #0 {Exception -> 0x0140, blocks: (B:11:0x0020, B:16:0x003f, B:19:0x0047, B:23:0x0068, B:26:0x0072, B:28:0x0085, B:32:0x0096, B:36:0x00be, B:39:0x00c6, B:41:0x00dc, B:46:0x0104, B:48:0x010d), top: B:55:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x008d  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x005c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0096 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:69:0x00dc A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x000f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x000f A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m41899a(java.util.List<?> r6) {
            /*
                Method dump skipped, instructions count: 324
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p029k0.C1014j.C1017c.m41899a(java.util.List):void");
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (C1220a.m41623b(this)) {
                return null;
            }
            try {
                l.e(obj, "proxy");
                l.e(method, AnalyticsConstants.METHOD);
                if (!l.a(method.getName(), "onPurchaseHistoryResponse")) {
                    return null;
                }
                Object obj2 = objArr == null ? null : objArr[1];
                if (obj2 == null || !(obj2 instanceof List)) {
                    return null;
                }
                m41899a((List) obj2);
                return null;
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return null;
            }
        }
    }

    @Metadata(d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0001\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0002\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$PurchasesUpdatedListenerWrapper;", "Ljava/lang/reflect/InvocationHandler;", "()V", "invoke", "", "proxy", "m", "Ljava/lang/reflect/Method;", "args", "", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.k0.j$d */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/j$d.class */
    public static final class C1018d implements InvocationHandler {
        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (C1220a.m41623b(this)) {
                return null;
            }
            try {
                l.e(obj, "proxy");
                l.e(method, "m");
                return null;
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return null;
            }
        }
    }

    @Metadata(d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0010 \n��\b\u0081\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J0\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\r2\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u000fH\u0096\u0002¢\u0006\u0002\u0010\u0010J\u0012\u0010\u0011\u001a\u00020\u00122\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\u0014R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper$SkuDetailsResponseListenerWrapper;", "Ljava/lang/reflect/InvocationHandler;", "runnable", "Ljava/lang/Runnable;", "(Lcom/facebook/appevents/iap/InAppPurchaseBillingClientWrapper;Ljava/lang/Runnable;)V", "getRunnable", "()Ljava/lang/Runnable;", "setRunnable", "(Ljava/lang/Runnable;)V", "invoke", "", "proxy", "m", "Ljava/lang/reflect/Method;", "args", "", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "parseSkuDetails", "", "skuDetailsObjectList", "", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* renamed from: com.facebook.appevents.k0.j$e */
    /* loaded from: classes2-dex2jar.jar:com/facebook/appevents/k0/j$e.class */
    public final class C1019e implements InvocationHandler {

        /* renamed from: a */
        public Runnable f2809a;

        /* renamed from: b */
        public final /* synthetic */ C1014j f2810b;

        public C1019e(C1014j c1014j, Runnable runnable) {
            l.e(c1014j, "this$0");
            l.e(runnable, "runnable");
            this.f2810b = c1014j;
            this.f2809a = runnable;
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x0090 A[Catch: all -> 0x00e1, Exception -> 0x00e8, TryCatch #0 {all -> 0x00e1, blocks: (B:5:0x0008, B:7:0x0016, B:9:0x001e, B:11:0x0026, B:16:0x0045, B:19:0x004d, B:23:0x006e, B:26:0x0078, B:28:0x0088, B:30:0x0090, B:33:0x009d, B:35:0x00b2, B:36:0x00d7), top: B:42:0x0008 }] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x009d A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0015 A[SYNTHETIC] */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m41898a(java.util.List<?> r6) {
            /*
                Method dump skipped, instructions count: 236
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.p029k0.C1014j.C1019e.m41898a(java.util.List):void");
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (C1220a.m41623b(this)) {
                return null;
            }
            try {
                l.e(obj, "proxy");
                l.e(method, "m");
                if (!l.a(method.getName(), "onSkuDetailsResponse")) {
                    return null;
                }
                Object obj2 = objArr == null ? null : objArr[1];
                if (obj2 == null || !(obj2 instanceof List)) {
                    return null;
                }
                m41898a((List) obj2);
                return null;
            } catch (Throwable th) {
                C1220a.m41624a(th, this);
                return null;
            }
        }
    }

    public C1014j(Context context, Object obj, Class cls, Class cls2, Class cls3, Class cls4, Class cls5, Class cls6, Class cls7, Method method, Method method2, Method method3, Method method4, Method method5, Method method6, Method method7, C1023n c1023n, f fVar) {
        this.f2789a = context;
        this.f2790b = obj;
        this.f2791c = cls;
        this.f2792d = cls2;
        this.f2793e = cls3;
        this.f2794f = cls4;
        this.f2795g = cls5;
        this.f2796h = cls6;
        this.f2797i = cls7;
        this.f2798j = method;
        this.f2799k = method2;
        this.f2800l = method3;
        this.f2801m = method4;
        this.f2802n = method5;
        this.f2803o = method6;
        this.f2804p = method7;
        this.f2805q = c1023n;
    }

    /* renamed from: a */
    public static final /* synthetic */ AtomicBoolean m41909a() {
        if (C1220a.m41623b(C1014j.class)) {
            return null;
        }
        try {
            return f2784t;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1014j.class);
            return null;
        }
    }

    /* renamed from: b */
    public static final /* synthetic */ C1014j m41908b() {
        if (C1220a.m41623b(C1014j.class)) {
            return null;
        }
        try {
            return f2785u;
        } catch (Throwable th) {
            C1220a.m41624a(th, C1014j.class);
            return null;
        }
    }

    /* renamed from: c */
    public final void m41907c(String str, Runnable runnable) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            l.e(str, "skuType");
            l.e(runnable, "querySkuRunnable");
            Object m41873c = C1024o.m41873c(this.f2792d, this.f2799k, C1024o.m41873c(this.f2791c, this.f2798j, this.f2790b, "inapp"), new Object[0]);
            List<Object> list = m41873c instanceof List ? (List) m41873c : null;
            if (list == null) {
                return;
            }
            try {
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    Object m41873c2 = C1024o.m41873c(this.f2793e, this.f2800l, obj, new Object[0]);
                    String str2 = m41873c2 instanceof String ? (String) m41873c2 : null;
                    if (str2 != null) {
                        JSONObject jSONObject = new JSONObject(str2);
                        if (jSONObject.has("productId")) {
                            String string = jSONObject.getString("productId");
                            arrayList.add(string);
                            Map<String, JSONObject> map = f2787w;
                            l.d(string, "skuID");
                            map.put(string, jSONObject);
                        }
                    }
                }
                m41905e(str, arrayList, runnable);
            } catch (JSONException e) {
            }
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: d */
    public final void m41906d(String str, Runnable runnable) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            Object newProxyInstance = Proxy.newProxyInstance(this.f2797i.getClassLoader(), new Class[]{this.f2797i}, new C1017c(this, runnable));
            l.d(newProxyInstance, "newProxyInstance(\n            purchaseHistoryResponseListenerClazz.classLoader,\n            arrayOf(purchaseHistoryResponseListenerClazz),\n            PurchaseHistoryResponseListenerWrapper(runnable))");
            C1024o.m41873c(this.f2791c, this.f2804p, this.f2790b, str, newProxyInstance);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: e */
    public final void m41905e(String str, List<String> list, Runnable runnable) {
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            Object newProxyInstance = Proxy.newProxyInstance(this.f2796h.getClassLoader(), new Class[]{this.f2796h}, new C1019e(this, runnable));
            l.d(newProxyInstance, "newProxyInstance(\n            skuDetailsResponseListenerClazz.classLoader,\n            arrayOf(skuDetailsResponseListenerClazz),\n            SkuDetailsResponseListenerWrapper(runnable))");
            C1024o.m41873c(this.f2791c, this.f2803o, this.f2790b, this.f2805q.m41876c(str, list), newProxyInstance);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }

    /* renamed from: f */
    public final void m41904f() {
        Method m41874b;
        if (C1220a.m41623b(this)) {
            return;
        }
        try {
            Class<?> m41875a = C1024o.m41875a("com.android.billingclient.api.BillingClientStateListener");
            if (m41875a == null || (m41874b = C1024o.m41874b(this.f2791c, "startConnection", m41875a)) == null) {
                return;
            }
            Object newProxyInstance = Proxy.newProxyInstance(m41875a.getClassLoader(), new Class[]{m41875a}, new C1015a());
            l.d(newProxyInstance, "newProxyInstance(\n            listenerClazz.classLoader, arrayOf(listenerClazz), BillingClientStateListenerWrapper())");
            C1024o.m41873c(this.f2791c, m41874b, this.f2790b, newProxyInstance);
        } catch (Throwable th) {
            C1220a.m41624a(th, this);
        }
    }
}
