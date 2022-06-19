package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.utils.C5487y;
import java.util.HashSet;
/* renamed from: com.bytedance.sdk.openadsdk.core.z */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/z.class */
public class C4804z {

    /* renamed from: a */
    private static final boolean f17650a;

    /* renamed from: b */
    private static final boolean f17651b;

    /* renamed from: c */
    private static int f17652c;

    /* renamed from: d */
    private static int f17653d;

    /* renamed from: e */
    private static int f17654e;

    /* renamed from: f */
    private static Handler f17655f;

    /* renamed from: g */
    private static final HashSet<String> f17656g;

    /* renamed from: h */
    private static final HashSet<String> f17657h;

    static {
        f17650a = Build.VERSION.SDK_INT >= 16 && C5487y.m32050e();
        f17651b = m33901a();
        f17652c = -1;
        f17653d = -1;
        f17654e = -1;
        f17655f = null;
        HashSet<String> hashSet = new HashSet<>();
        hashSet.add("HUAWEI C8812");
        hashSet.add("HUAWEI C8812E");
        hashSet.add("HUAWEI C8825D");
        hashSet.add("HUAWEI U8825D");
        hashSet.add("HUAWEI C8950D");
        hashSet.add("HUAWEI U8950D");
        f17656g = hashSet;
        HashSet<String> hashSet2 = new HashSet<>();
        hashSet2.add("ZTE V955");
        hashSet2.add("ZTE N881E");
        hashSet2.add("ZTE N881F");
        hashSet2.add("ZTE N880G");
        hashSet2.add("ZTE N880F");
        hashSet2.add("ZTE V889F");
        f17657h = hashSet2;
    }

    /* renamed from: a */
    public static void m33900a(Context context, WebView webView) {
        if (context == null || webView == null || !(context instanceof Activity)) {
            return;
        }
        Activity activity = (Activity) context;
        if (!activity.isFinishing()) {
            return;
        }
        try {
            webView.loadUrl("about:blank");
            if (f17654e <= 0) {
                return;
            }
            View rootView = webView.getRootView();
            if (!(rootView instanceof ViewGroup)) {
                return;
            }
            View childAt = ((ViewGroup) rootView).getChildAt(0);
            childAt.setDrawingCacheEnabled(true);
            Bitmap createBitmap = Bitmap.createBitmap(childAt.getDrawingCache());
            childAt.setDrawingCacheEnabled(false);
            ImageView imageView = new ImageView(activity);
            imageView.setImageBitmap(createBitmap);
            imageView.setVisibility(0);
            ((ViewGroup) rootView).addView(imageView, new ViewGroup.LayoutParams(-1, -1));
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public static void m33899a(WebView webView) {
        if (webView == null) {
            return;
        }
        webView.setWebChromeClient(null);
        webView.setWebViewClient(null);
        ViewParent parent = webView.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            ((ViewGroup) parent).removeView(webView);
        }
        webView.removeAllViews();
        try {
            webView.destroy();
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    private static boolean m33901a() {
        if (!f17650a) {
            return Build.VERSION.SDK_INT == 16 && "ZTE N5".equals(Build.MODEL);
        }
        return true;
    }
}
