package com.appsflyer.internal;

import android.app.Application;
import android.support.annotation.VisibleForTesting;
import com.appsflyer.AFLogger;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.appsflyer.internal.bv */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/bv.class */
public final class RunnableC0784bv implements Runnable {
    @VisibleForTesting
    private static String AFInAppEventType = "https://%sgcdsdk.%s/install_data/v4.0/";
    private static final List<String> valueOf = Arrays.asList("googleplay", "playstore", "googleplaystore");
    private final Application AFInAppEventParameterName;
    public final ScheduledExecutorService AFKeystoreWrapper;
    private final int AFVersionDeclaration;
    private final AtomicInteger AppsFlyer2dXConversionCallback;
    private final C0726ai getLevel;
    private final String values;

    public RunnableC0784bv(C0726ai c0726ai, Application application, String str) {
        if (C0821k.values == null) {
            C0821k.values = new C0821k();
        }
        this.AFKeystoreWrapper = C0821k.values.AFInAppEventType();
        this.AppsFlyer2dXConversionCallback = new AtomicInteger(0);
        this.getLevel = c0726ai;
        this.AFInAppEventParameterName = application;
        this.values = str;
        this.AFVersionDeclaration = 0;
    }

    private RunnableC0784bv(RunnableC0784bv runnableC0784bv) {
        if (C0821k.values == null) {
            C0821k.values = new C0821k();
        }
        this.AFKeystoreWrapper = C0821k.values.AFInAppEventType();
        this.AppsFlyer2dXConversionCallback = new AtomicInteger(0);
        this.getLevel = runnableC0784bv.getLevel;
        this.AFInAppEventParameterName = runnableC0784bv.AFInAppEventParameterName;
        this.values = runnableC0784bv.values;
        this.AFVersionDeclaration = runnableC0784bv.AFVersionDeclaration + 1;
    }

    public static void AFInAppEventType(Map<String, Object> map) {
        StringBuilder sb = new StringBuilder("[GCD-A02] Calling onConversionDataSuccess with:\n");
        sb.append(map.toString());
        AFLogger.AFInAppEventType(sb.toString());
        C0726ai.AFInAppEventType.onConversionDataSuccess(map);
    }

    public static void valueOf(String str) {
        if (C0726ai.AFInAppEventType != null) {
            AFLogger.AFInAppEventType("[GCD-A02] Calling onConversionFailure with:\n".concat(String.valueOf(str)));
            C0726ai.AFInAppEventType.onConversionDataFail(str);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(16:16|(2:18|(11:20|24|25|107|26|27|(2:39|(16:41|42|(1:44)|45|(1:49)|50|51|(2:53|(1:55)(1:56))|57|58|(1:60)|61|62|(1:64)(1:65)|66|(7:108|71|(1:73)|74|75|78|79)))(2:31|(1:37)(1:38))|80|81|95|96)(1:21))|22|23|24|25|107|26|27|(1:29)|39|(0)|80|81|95|96) */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x042d, code lost:
        r9.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0432, code lost:
        throw r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x03c1, code lost:
        r11 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x03c2, code lost:
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x03d0, code lost:
        if (r8.AFVersionDeclaration < 2) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x03d3, code lost:
        r0 = new com.appsflyer.internal.RunnableC0784bv(r8);
        com.appsflyer.internal.C0726ai.AFInAppEventParameterName(r0.AFKeystoreWrapper, r0, 10, java.util.concurrent.TimeUnit.MILLISECONDS);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x03f1, code lost:
        valueOf(r11.getMessage());
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x03f9, code lost:
        com.appsflyer.AFLogger.valueOf(r11.getMessage(), r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0401, code lost:
        r8.AppsFlyer2dXConversionCallback.decrementAndGet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0409, code lost:
        if (r9 != null) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x040c, code lost:
        r9.disconnect();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0420, code lost:
        r11 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0421, code lost:
        r8.AppsFlyer2dXConversionCallback.decrementAndGet();
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x042a, code lost:
        if (r9 != null) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0224 A[Catch: all -> 0x03c1, TRY_LEAVE, TryCatch #1 {all -> 0x03c1, blocks: (B:26:0x0131, B:35:0x0197, B:37:0x019f, B:38:0x01b9, B:39:0x01ca, B:41:0x0224, B:44:0x023e, B:47:0x0270, B:49:0x0277, B:51:0x0289, B:53:0x0298, B:55:0x02a4, B:56:0x02c7, B:58:0x02e1, B:60:0x02ec, B:62:0x030d, B:64:0x032b, B:65:0x0339, B:66:0x0344, B:68:0x034a, B:71:0x0359, B:73:0x0374, B:77:0x0387, B:78:0x038e, B:79:0x0391), top: B:107:0x0131, inners: #2 }] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 1088
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.internal.RunnableC0784bv.run():void");
    }
}
