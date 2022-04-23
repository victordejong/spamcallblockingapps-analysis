package com.applovin.sdk;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.TypedValue;
import android.widget.ImageView;
import com.google.logging.type.LogSeverity;
import java.io.File;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2390i;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinSdkUtils.class */
public class AppLovinSdkUtils {

    /* renamed from: a */
    public static final Handler f21843a = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    public static void m18783a(ImageView imageView) {
        if (imageView != null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof BitmapDrawable) {
                ((BitmapDrawable) drawable).getBitmap().recycle();
            }
        }
    }

    public static int dpToPx(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static boolean isTablet(Context context) {
        Point a = C2388g.m29975a(context);
        return Math.min(a.x, a.y) >= dpToPx(context, LogSeverity.CRITICAL_VALUE);
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
        if (z || !AbstractC2426r.m29790b()) {
            f21843a.post(runnable);
        } else {
            runnable.run();
        }
    }

    public static void runOnUiThreadDelayed(Runnable runnable, long j) {
        runOnUiThreadDelayed(runnable, j, f21843a);
    }

    public static void runOnUiThreadDelayed(Runnable runnable, long j, Handler handler) {
        if (j > 0) {
            handler.postDelayed(runnable, j);
        } else if (AbstractC2426r.m29790b()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    public static void safePopulateImageView(Context context, ImageView imageView, int i, int i2) {
        m18783a(imageView);
        Bitmap a = AbstractC2426r.m29824a(context, i, i2);
        if (a != null) {
            imageView.setImageBitmap(a);
        }
    }

    public static void safePopulateImageView(ImageView imageView, Bitmap bitmap) {
        m18783a(imageView);
        if (imageView != null && bitmap != null) {
            imageView.setImageBitmap(bitmap);
        }
    }

    public static void safePopulateImageView(ImageView imageView, Uri uri, int i) {
        m18783a(imageView);
        Bitmap a = AbstractC2426r.m29809a(new File(uri.getPath()), i);
        if (a != null) {
            imageView.setImageBitmap(a);
        }
    }

    public static Map<String, String> toMap(JSONObject jSONObject) throws JSONException {
        return C2390i.m29933a(jSONObject);
    }
}
