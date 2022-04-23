package com.appsflyer.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import com.appsflyer.AFLogger;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.appsflyer.internal.q */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/q.class */
public final class C1850q {
    /* renamed from: Ι */
    public static Map<String, String> m36124(@NonNull Context context) {
        HashMap hashMap = new HashMap();
        try {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            int i = context.getResources().getConfiguration().screenLayout;
            hashMap.put("x_px", String.valueOf(displayMetrics.widthPixels));
            hashMap.put("y_px", String.valueOf(displayMetrics.heightPixels));
            hashMap.put("d_dpi", String.valueOf(displayMetrics.densityDpi));
            hashMap.put("size", String.valueOf(i & 15));
            hashMap.put("xdp", String.valueOf(displayMetrics.xdpi));
            hashMap.put("ydp", String.valueOf(displayMetrics.ydpi));
        } catch (Throwable th) {
            AFLogger.afErrorLog("Couldn't aggregate screen stats: ", th);
        }
        return hashMap;
    }
}
