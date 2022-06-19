package com.flurry.android;

import android.content.Context;
import android.content.Intent;
import android.location.Criteria;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.flurry.sdk.AbstractC0471kp;
import com.flurry.sdk.C0440jn;
import com.flurry.sdk.C0459kf;
import com.flurry.sdk.C0462kg;
import com.flurry.sdk.C0463kh;
import com.flurry.sdk.C0464ki;
import com.flurry.sdk.C0472kq;
import com.flurry.sdk.C0478ku;
import com.flurry.sdk.C0505md;
import com.flurry.sdk.C0511mk;
import com.flurry.sdk.hx;
import com.flurry.sdk.jo;
import com.flurry.sdk.jr;
import com.flurry.sdk.lt;
import com.flurry.sdk.lt$a;
import com.flurry.sdk.lu;
import com.flurry.sdk.lx;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/flurry/android/FlurryAgent.class */
public final class FlurryAgent {

    /* renamed from: a */
    private static final String f3157a = "FlurryAgent";

    /* renamed from: b */
    private static FlurryAgentListener f3158b;

    /* renamed from: c */
    private static final AbstractC0471kp<lt> f3159c = new 1();

    /* renamed from: d */
    private static boolean f3160d = false;

    /* renamed from: e */
    private static int f3161e = 5;

    /* renamed from: f */
    private static long f3162f = 10000;

    /* renamed from: g */
    private static boolean f3163g = true;

    /* renamed from: h */
    private static boolean f3164h = false;

    /* renamed from: i */
    private static String f3165i = null;

    /* renamed from: com.flurry.android.FlurryAgent$3 */
    /* loaded from: classes-dex2jar.jar:com/flurry/android/FlurryAgent$3.class */
    public static final /* synthetic */ class C04013 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3166a;

        static {
            int[] iArr = new int[lt$a.m4518a().length];
            f3166a = iArr;
            try {
                iArr[lt$a.f3569b - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/flurry/android/FlurryAgent$Builder.class */
    public static class Builder {

        /* renamed from: a */
        private static FlurryAgentListener f3167a;

        /* renamed from: b */
        private boolean f3168b = false;

        /* renamed from: c */
        private int f3169c = 5;

        /* renamed from: d */
        private long f3170d = 10000;

        /* renamed from: e */
        private boolean f3171e = true;

        /* renamed from: f */
        private boolean f3172f = false;

        public void build(Context context, String str) {
            FlurryAgent.m4777a(f3167a, this.f3168b, this.f3169c, this.f3170d, this.f3171e, this.f3172f, context, str);
        }

        public Builder withCaptureUncaughtExceptions(boolean z) {
            this.f3171e = z;
            return this;
        }

        public Builder withContinueSessionMillis(long j) {
            this.f3170d = j;
            return this;
        }

        public Builder withListener(FlurryAgentListener flurryAgentListener) {
            f3167a = flurryAgentListener;
            return this;
        }

        public Builder withLogEnabled(boolean z) {
            this.f3168b = z;
            return this;
        }

        public Builder withLogLevel(int i) {
            this.f3169c = i;
            return this;
        }

        public Builder withPulseEnabled(boolean z) {
            this.f3172f = z;
            return this;
        }
    }

    private FlurryAgent() {
    }

    /* renamed from: a */
    public static /* synthetic */ void m4777a(FlurryAgentListener flurryAgentListener, boolean z, int i, long j, boolean z2, boolean z3, Context context, String str) {
        f3158b = flurryAgentListener;
        setFlurryAgentListener(flurryAgentListener);
        f3160d = z;
        setLogEnabled(z);
        f3161e = i;
        setLogLevel(i);
        f3162f = j;
        setContinueSessionMillis(j);
        f3163g = z2;
        setCaptureUncaughtExceptions(z2);
        f3164h = z3;
        setPulseEnabled(z3);
        f3165i = str;
        init(context, str);
    }

    public static void addOrigin(String str, String str2) {
        addOrigin(str, str2, null);
    }

    public static void addOrigin(String str, String str2, Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("originName not specified");
        } else {
            if (TextUtils.isEmpty(str2)) {
                throw new IllegalArgumentException("originVersion not specified");
            }
            try {
                C0464ki.m4643a().m4642a(str, str2, map);
            } catch (Throwable th) {
                C0478ku.m4593a(f3157a, "", th);
            }
        }
    }

    public static void addSessionProperty(String str, String str2) {
        String str3;
        String str4;
        if (Build.VERSION.SDK_INT < 10) {
            str3 = f3157a;
            str4 = "Device SDK Version older than 10";
        } else if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            if (C0462kg.m4652a() == null) {
                throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
            }
            jr.a();
            C0459kf c = jr.c();
            if (c == null) {
                return;
            }
            c.m4660a(str, str2);
            return;
        } else {
            str3 = f3157a;
            str4 = "String name or value passed to addSessionProperty was null or empty.";
        }
        C0478ku.m4590b(str3, str4);
    }

    public static void clearLocation() {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else {
            lx.a().m4513a("ExplicitLocation", null);
        }
    }

    public static void endTimedEvent(String str) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (str == null) {
            C0478ku.m4590b(f3157a, "String eventId passed to endTimedEvent was null.");
        } else {
            try {
                hx.a();
                jo b = hx.b();
                if (b == null) {
                    return;
                }
                b.a(str, (Map) null);
            } catch (Throwable th) {
                String str2 = f3157a;
                C0478ku.m4593a(str2, "Failed to signify the end of event: " + str, th);
            }
        }
    }

    public static void endTimedEvent(String str, Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (str == null) {
            C0478ku.m4590b(f3157a, "String eventId passed to endTimedEvent was null.");
        } else if (map == null) {
            C0478ku.m4590b(f3157a, "String eventId passed to endTimedEvent was null.");
        } else {
            try {
                hx.a();
                jo b = hx.b();
                if (b == null) {
                    return;
                }
                b.a(str, map);
            } catch (Throwable th) {
                String str2 = f3157a;
                C0478ku.m4593a(str2, "Failed to signify the end of event: " + str, th);
            }
        }
    }

    public static int getAgentVersion() {
        return C0463kh.m4645b();
    }

    public static String getReleaseVersion() {
        return C0463kh.m4646a();
    }

    public static String getSessionId() {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
            return null;
        } else if (C0462kg.m4652a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        } else {
            try {
                jr.a();
                return jr.b();
            } catch (Throwable th) {
                C0478ku.m4593a(f3157a, "", th);
                return null;
            }
        }
    }

    @Deprecated
    public static void init(Context context, String str) {
        synchronized (FlurryAgent.class) {
            try {
                if (Build.VERSION.SDK_INT < 10) {
                    C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
                } else if (context == null) {
                    throw new NullPointerException("Null context");
                } else {
                    if (TextUtils.isEmpty(str)) {
                        throw new IllegalArgumentException("API key not specified");
                    }
                    if (C0462kg.m4652a() != null) {
                        C0478ku.m4583e(f3157a, "Flurry is already initialized");
                    }
                    C0511mk.m4451a();
                    C0462kg.m4651a(context, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isSessionActive() {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
            return false;
        }
        try {
            return lu.a().c();
        } catch (Throwable th) {
            C0478ku.m4593a(f3157a, "", th);
            return false;
        }
    }

    public static FlurryEventRecordStatus logEvent(FlurrySyndicationEventName flurrySyndicationEventName, String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        String str2;
        String str3;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            str2 = f3157a;
            str3 = "Device SDK Version older than 10";
        } else if (flurrySyndicationEventName == null) {
            str2 = f3157a;
            str3 = "String eventName passed to logEvent was null.";
        } else if (!TextUtils.isEmpty(str)) {
            if (map == null) {
                C0478ku.m4587c(f3157a, "String parameters passed to logEvent was null.");
            }
            try {
                hx.a();
                String flurrySyndicationEventName2 = flurrySyndicationEventName.toString();
                jo b = hx.b();
                flurryEventRecordStatus = flurryEventRecordStatus2;
                if (b != null) {
                    flurryEventRecordStatus = b.a(flurrySyndicationEventName2, str, map);
                }
            } catch (Throwable th) {
                String str4 = f3157a;
                C0478ku.m4593a(str4, "Failed to log event: " + flurrySyndicationEventName.toString(), th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        } else {
            str2 = f3157a;
            str3 = "String syndicationId passed to logEvent was null or empty.";
        }
        C0478ku.m4590b(str2, str3);
        return flurryEventRecordStatus2;
    }

    public static FlurryEventRecordStatus logEvent(String str) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        String str2;
        String str3;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            str2 = f3157a;
            str3 = "Device SDK Version older than 10";
        } else if (str != null) {
            try {
                hx.a();
                jo b = hx.b();
                flurryEventRecordStatus = flurryEventRecordStatus2;
                if (b != null) {
                    flurryEventRecordStatus = b.a(str, (Map) null, false, 0);
                }
            } catch (Throwable th) {
                String str4 = f3157a;
                C0478ku.m4593a(str4, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        } else {
            str2 = f3157a;
            str3 = "String eventId passed to logEvent was null.";
        }
        C0478ku.m4590b(str2, str3);
        return flurryEventRecordStatus2;
    }

    public static FlurryEventRecordStatus logEvent(String str, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        String str2;
        String str3;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            str2 = f3157a;
            str3 = "Device SDK Version older than 10";
        } else if (str != null) {
            if (map == null) {
                C0478ku.m4587c(f3157a, "String parameters passed to logEvent was null.");
            }
            try {
                hx.a();
                flurryEventRecordStatus = hx.a(str, map, 0);
            } catch (Throwable th) {
                String str4 = f3157a;
                C0478ku.m4593a(str4, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        } else {
            str2 = f3157a;
            str3 = "String eventId passed to logEvent was null.";
        }
        C0478ku.m4590b(str2, str3);
        return flurryEventRecordStatus2;
    }

    public static FlurryEventRecordStatus logEvent(String str, Map<String, String> map, boolean z) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        String str2;
        String str3;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            str2 = f3157a;
            str3 = "Device SDK Version older than 10";
        } else if (str != null) {
            if (map == null) {
                C0478ku.m4587c(f3157a, "String parameters passed to logEvent was null.");
            }
            try {
                hx.a();
                jo b = hx.b();
                flurryEventRecordStatus = flurryEventRecordStatus2;
                if (b != null) {
                    flurryEventRecordStatus = b.a(str, map, z, 0);
                }
            } catch (Throwable th) {
                String str4 = f3157a;
                C0478ku.m4593a(str4, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        } else {
            str2 = f3157a;
            str3 = "String eventId passed to logEvent was null.";
        }
        C0478ku.m4590b(str2, str3);
        return flurryEventRecordStatus2;
    }

    public static FlurryEventRecordStatus logEvent(String str, boolean z) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        String str2;
        String str3;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            str2 = f3157a;
            str3 = "Device SDK Version older than 10";
        } else if (str != null) {
            try {
                hx.a();
                jo b = hx.b();
                flurryEventRecordStatus = flurryEventRecordStatus2;
                if (b != null) {
                    flurryEventRecordStatus = b.a(str, (Map) null, z, 0);
                }
            } catch (Throwable th) {
                String str4 = f3157a;
                C0478ku.m4593a(str4, "Failed to log event: " + str, th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        } else {
            str2 = f3157a;
            str3 = "String eventId passed to logEvent was null.";
        }
        C0478ku.m4590b(str2, str3);
        return flurryEventRecordStatus2;
    }

    public static FlurryEventRecordStatus logPayment(String str, String str2, int i, double d, String str3, String str4, Map<String, String> map) {
        FlurryEventRecordStatus flurryEventRecordStatus;
        String str5;
        String str6;
        FlurryEventRecordStatus flurryEventRecordStatus2 = FlurryEventRecordStatus.kFlurryEventFailed;
        if (Build.VERSION.SDK_INT < 10) {
            str5 = f3157a;
            str6 = "Device SDK Version older than 10";
        } else if (str == null) {
            str5 = f3157a;
            str6 = "String productName passed to logEvent was null.";
        } else if (str2 == null) {
            str5 = f3157a;
            str6 = "String productId passed to logEvent was null.";
        } else if (str3 == null) {
            str5 = f3157a;
            str6 = "String currency passed to logEvent was null.";
        } else if (str4 != null) {
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("fl.ProductName", str);
                hashMap.put("fl.ProductID", str2);
                hashMap.put("fl.Quantity", String.valueOf(i));
                hashMap.put("fl.Price", String.format(Locale.ENGLISH, "%1$.2f", Double.valueOf(d)));
                hashMap.put("fl.Currency", str3);
                hashMap.put("fl.TransactionIdentifier", str4);
                int size = hashMap.size();
                if (map != null) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (!hashMap.containsKey(entry.getKey())) {
                            hashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
                hx.a();
                flurryEventRecordStatus = hx.a("Flurry.purchase", hashMap, size);
            } catch (Throwable th) {
                C0478ku.m4593a(f3157a, "Failed to log event: Flurry.purchase", th);
                flurryEventRecordStatus = flurryEventRecordStatus2;
            }
            return flurryEventRecordStatus;
        } else {
            str5 = f3157a;
            str6 = "String transactionId passed to logEvent was null.";
        }
        C0478ku.m4590b(str5, str6);
        return flurryEventRecordStatus2;
    }

    public static void logPayment(int i, Intent intent, Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
            return;
        }
        Object obj = intent.getExtras().get("RESPONSE_CODE");
        int i2 = 0;
        if (obj == null) {
            C0478ku.m4590b(f3157a, "Intent with no response code, assuming OK (known issue)");
        } else if (obj instanceof Integer) {
            i2 = ((Integer) obj).intValue();
        } else if (obj instanceof Long) {
            i2 = (int) ((Long) obj).longValue();
        }
        String stringExtra = intent.getStringExtra("INAPP_PURCHASE_DATA");
        String stringExtra2 = intent.getStringExtra("INAPP_DATA_SIGNATURE");
        try {
            JSONObject jSONObject = new JSONObject(stringExtra);
            if (i == -1 && i2 == 0) {
                C0440jn.m4700a(C0462kg.m4652a().f3460a, jSONObject.optString("productId"), new 2(jSONObject, stringExtra, stringExtra2, map));
                return;
            }
            C0478ku.m4590b(f3157a, "Invalid logPayment call. resultCode:" + i + ", responseCode:" + i2 + ", purchaseData:" + stringExtra + ", dataSignature:" + stringExtra2);
        } catch (Throwable th) {
            C0478ku.m4593a(f3157a, "Failed to log event: Flurry.purchase", th);
        }
    }

    public static void onEndSession(Context context) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
            return;
        }
        Objects.requireNonNull(context, "Null context");
        if (C0462kg.m4652a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before ending a session");
        }
        try {
            lu.a().c(context);
        } catch (Throwable th) {
            C0478ku.m4593a(f3157a, "", th);
        }
    }

    @Deprecated
    public static void onError(String str, String str2, String str3) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (str == null) {
            C0478ku.m4590b(f3157a, "String errorId passed to onError was null.");
        } else if (str2 == null) {
            C0478ku.m4590b(f3157a, "String message passed to onError was null.");
        } else if (str3 == null) {
            C0478ku.m4590b(f3157a, "String errorClass passed to onError was null.");
        } else {
            try {
                hx.a();
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                StackTraceElement[] stackTraceElementArr = stackTrace;
                if (stackTrace != null) {
                    stackTraceElementArr = stackTrace;
                    if (stackTrace.length > 2) {
                        int length = stackTrace.length - 2;
                        stackTraceElementArr = new StackTraceElement[length];
                        System.arraycopy(stackTrace, 2, stackTraceElementArr, 0, length);
                    }
                }
                Throwable th = new Throwable(str2);
                th.setStackTrace(stackTraceElementArr);
                jo b = hx.b();
                if (b == null) {
                    return;
                }
                b.a(str, str2, str3, th);
            } catch (Throwable th2) {
                C0478ku.m4593a(f3157a, "", th2);
            }
        }
    }

    public static void onError(String str, String str2, Throwable th) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (str == null) {
            C0478ku.m4590b(f3157a, "String errorId passed to onError was null.");
        } else if (str2 == null) {
            C0478ku.m4590b(f3157a, "String message passed to onError was null.");
        } else if (th == null) {
            C0478ku.m4590b(f3157a, "Throwable passed to onError was null.");
        } else {
            try {
                hx.a();
                hx.a(str, str2, th);
            } catch (Throwable th2) {
                C0478ku.m4593a(f3157a, "", th2);
            }
        }
    }

    @Deprecated
    public static void onEvent(String str) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (str == null) {
            C0478ku.m4590b(f3157a, "String eventId passed to onEvent was null.");
        } else {
            try {
                hx.a();
                jo b = hx.b();
                if (b == null) {
                    return;
                }
                b.a(str, (Map) null, false, 0);
            } catch (Throwable th) {
                C0478ku.m4593a(f3157a, "", th);
            }
        }
    }

    @Deprecated
    public static void onEvent(String str, Map<String, String> map) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (str == null) {
            C0478ku.m4590b(f3157a, "String eventId passed to onEvent was null.");
        } else if (map == null) {
            C0478ku.m4590b(f3157a, "Parameters Map passed to onEvent was null.");
        } else {
            try {
                hx.a();
                jo b = hx.b();
                if (b == null) {
                    return;
                }
                b.a(str, map, false, 0);
            } catch (Throwable th) {
                C0478ku.m4593a(f3157a, "", th);
            }
        }
    }

    public static void onPageView() {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
            return;
        }
        try {
            hx.a();
            jo b = hx.b();
            if (b == null) {
                return;
            }
            b.d();
        } catch (Throwable th) {
            C0478ku.m4593a(f3157a, "", th);
        }
    }

    public static void onStartSession(Context context) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
            return;
        }
        Objects.requireNonNull(context, "Null context");
        if (C0462kg.m4652a() == null) {
            throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
        }
        try {
            lu.a().b(context);
        } catch (Throwable th) {
            C0478ku.m4593a(f3157a, "", th);
        }
    }

    @Deprecated
    public static void onStartSession(Context context, String str) {
        onStartSession(context);
    }

    public static void setAge(int i) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (i <= 0 || i >= 110) {
        } else {
            lx.a().m4513a("Age", Long.valueOf(new Date(new Date(System.currentTimeMillis() - (i * 31449600000L)).getYear(), 1, 1).getTime()));
        }
    }

    @Deprecated
    public static void setCaptureUncaughtExceptions(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else {
            lx.a().m4513a("CaptureUncaughtExceptions", Boolean.valueOf(z));
        }
    }

    @Deprecated
    public static void setContinueSessionMillis(long j) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (j >= 5000) {
            lx.a().m4513a("ContinueSessionMillis", Long.valueOf(j));
        } else {
            String str = f3157a;
            C0478ku.m4590b(str, "Invalid time set for session resumption: " + j);
        }
    }

    @Deprecated
    public static void setFlurryAgentListener(FlurryAgentListener flurryAgentListener) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (flurryAgentListener == null) {
            C0478ku.m4590b(f3157a, "Listener cannot be null");
            C0472kq.m4617a().m4611b("com.flurry.android.sdk.FlurrySessionEvent", f3159c);
        } else {
            f3158b = flurryAgentListener;
            C0472kq.m4617a().m4613a("com.flurry.android.sdk.FlurrySessionEvent", f3159c);
        }
    }

    public static void setGender(byte b) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (b == 0 || b == 1) {
            lx.a().m4513a("Gender", Byte.valueOf(b));
        } else {
            lx.a().m4513a("Gender", (byte) -1);
        }
    }

    public static void setLocation(float f, float f2) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
            return;
        }
        Location location = new Location("Explicit");
        location.setLatitude(f);
        location.setLongitude(f2);
        lx.a().m4513a("ExplicitLocation", location);
    }

    @Deprecated
    public static void setLocationCriteria(Criteria criteria) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        }
    }

    @Deprecated
    public static void setLogEnabled(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (z) {
            C0478ku.m4592b();
        } else {
            C0478ku.m4598a();
        }
    }

    @Deprecated
    public static void setLogEvents(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        }
    }

    @Deprecated
    public static void setLogLevel(int i) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else {
            C0478ku.m4597a(i);
        }
    }

    @Deprecated
    public static void setPulseEnabled(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
            return;
        }
        lx.a().m4513a("ProtonEnabled", Boolean.valueOf(z));
        if (z) {
            return;
        }
        lx.a().m4513a("analyticsEnabled", Boolean.TRUE);
    }

    public static void setReportLocation(boolean z) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else {
            lx.a().m4513a("ReportLocation", Boolean.valueOf(z));
        }
    }

    public static void setSessionOrigin(String str, String str2) {
        String str3;
        String str4;
        if (Build.VERSION.SDK_INT < 10) {
            str3 = f3157a;
            str4 = "Device SDK Version older than 10";
        } else if (!TextUtils.isEmpty(str)) {
            if (C0462kg.m4652a() == null) {
                throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
            }
            jr.a();
            C0459kf c = jr.c();
            if (c != null) {
                c.m4661a(str);
            }
            jr.a();
            C0459kf c2 = jr.c();
            if (c2 == null) {
                return;
            }
            c2.m4657b(str2);
            return;
        } else {
            str3 = f3157a;
            str4 = "String originName passed to setSessionOrigin was null or empty.";
        }
        C0478ku.m4590b(str3, str4);
    }

    public static void setUserId(String str) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (str == null) {
            C0478ku.m4590b(f3157a, "String userId passed to setUserId was null.");
        } else {
            lx.a().m4513a("UserId", C0505md.m4481b(str));
        }
    }

    public static void setVersionName(String str) {
        if (Build.VERSION.SDK_INT < 10) {
            C0478ku.m4590b(f3157a, "Device SDK Version older than 10");
        } else if (str == null) {
            C0478ku.m4590b(f3157a, "String versionName passed to setVersionName was null.");
        } else {
            lx.a().m4513a("VersionName", str);
        }
    }
}
