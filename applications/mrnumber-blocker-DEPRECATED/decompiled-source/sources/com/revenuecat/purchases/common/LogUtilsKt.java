package com.revenuecat.purchases.common;

import android.util.Log;
import com.revenuecat.purchases.PurchasesError;
import kotlin.w.c.k;
/* loaded from: classes2-dex2jar.jar:com/revenuecat/purchases/common/LogUtilsKt.class */
public final class LogUtilsKt {
    public static final void debugLog(String str) {
        k.f(str, "message");
        if (Config.INSTANCE.getDebugLogsEnabled()) {
            Log.d("[Purchases] - DEBUG", str);
        }
    }

    public static final void errorLog(PurchasesError purchasesError) {
        k.f(purchasesError, "error");
        if (Config.INSTANCE.getDebugLogsEnabled()) {
            Log.e("[Purchases] - ERROR", purchasesError.toString());
        }
    }

    public static final void errorLog(String str) {
        k.f(str, "message");
        if (Config.INSTANCE.getDebugLogsEnabled()) {
            Log.e("[Purchases] - ERROR", str);
        }
    }

    public static final void infoLog(String str) {
        k.f(str, "message");
        Log.i("[Purchases] - INFO", str);
    }

    public static final void warnLog(String str) {
        k.f(str, "message");
        Log.w("[Purchases] - WARN", str);
    }
}
