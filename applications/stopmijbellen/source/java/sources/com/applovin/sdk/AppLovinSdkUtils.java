package com.applovin.sdk;

import android.content.Context;
import android.graphics.Point;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.TypedValue;
import com.applovin.impl.sdk.utils.C1492g;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdkUtils.class */
public class AppLovinSdkUtils {

    /* renamed from: a */
    private static final Handler f5858a = new Handler(Looper.getMainLooper());

    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdkUtils$Size.class */
    public static final class Size {

        /* renamed from: a */
        private int f5859a;

        /* renamed from: b */
        private int f5860b;

        private Size() {
        }

        public Size(int i, int i2) {
            this.f5859a = i;
            this.f5860b = i2;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Size)) {
                return false;
            }
            Size size = (Size) obj;
            if (this.f5859a != size.getWidth() || this.f5860b != size.getHeight()) {
                z = false;
            }
            return z;
        }

        public int getHeight() {
            return this.f5860b;
        }

        public int getWidth() {
            return this.f5859a;
        }

        public int hashCode() {
            int i = this.f5860b;
            int i2 = this.f5859a;
            return i ^ ((i2 >>> 16) | (i2 << 16));
        }

        public String toString() {
            return this.f5859a + "x" + this.f5860b;
        }
    }

    public static int dpToPx(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static boolean isSdkVersionGreaterThanOrEqualTo(String str) {
        return AppLovinSdk.VERSION_CODE >= Utils.toVersionCode(str);
    }

    public static boolean isTablet(Context context) {
        Point m5075a = C1492g.m5075a(context);
        return Math.min(m5075a.x, m5075a.y) >= dpToPx(context, 600);
    }

    public static boolean isValidString(String str) {
        return !TextUtils.isEmpty(str);
    }

    public static int pxToDp(Context context, int i) {
        return (int) Math.ceil(i / context.getResources().getDisplayMetrics().density);
    }

    public static void runOnUiThread(Runnable runnable) {
        runOnUiThread(false, runnable);
    }

    public static void runOnUiThread(boolean z, Runnable runnable) {
        if (z || !Utils.isMainThread()) {
            f5858a.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static void runOnUiThreadDelayed(Runnable runnable, long j) {
        runOnUiThreadDelayed(runnable, j, f5858a);
    }

    public static void runOnUiThreadDelayed(Runnable runnable, long j, Handler handler) {
        if (j > 0) {
            handler.postDelayed(runnable, j);
        } else if (Utils.isMainThread()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    public static Map<String, String> toMap(JSONObject jSONObject) throws JSONException {
        return JsonUtils.toStringMap(jSONObject);
    }
}
