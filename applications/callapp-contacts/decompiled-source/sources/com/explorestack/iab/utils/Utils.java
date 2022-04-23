package com.explorestack.iab.utils;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.explorestack.iab.vast.VastError;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.net.URLDecoder;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.http.StatusLine;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/utils/Utils.class */
public class Utils {

    /* renamed from: a  reason: collision with root package name */
    private static final Handler f19163a = new Handler(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private static final AtomicInteger f19164b = new AtomicInteger(1);

    private static double a(Random random, float f) {
        double sqrt = Math.sqrt(Math.log(Math.abs(((random.nextLong() % 100000) + 1) / 100000.0d)) * (-2.0d)) * Math.sin(Math.abs(((random.nextLong() % 100000) + 1) / 100000.0d) * 6.283185307179586d);
        double d2 = f;
        return Math.min(1.0d, Math.max(0.0d, (d2 < 0.4d || d2 > 0.6d) ? d2 < 0.4d ? d2 + (0.10000000149011612d / (sqrt * sqrt)) : d2 - (0.10000000149011612d / (sqrt * sqrt)) : (sqrt * 0.10000000149011612d) + d2));
    }

    public static int a() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        if (Build.VERSION.SDK_INT >= 17) {
            return View.generateViewId();
        }
        do {
            atomicInteger = f19164b;
            i = atomicInteger.get();
            int i3 = i + 1;
            i2 = i3;
            if (i3 > 16777215) {
                i2 = 1;
            }
        } while (!atomicInteger.compareAndSet(i, i2));
        return i;
    }

    public static int a(float f, float f2) {
        return (int) ((f / f2) + 0.5f);
    }

    public static int a(int i, int i2) {
        return i > i2 ? 2 : 1;
    }

    public static int a(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    private static ComponentName a(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.isEmpty()) {
            return null;
        }
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            if (resolveInfo.activityInfo.packageName.equals("com.android.vending")) {
                return new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
            }
        }
        return new ComponentName(queryIntentActivities.get(0).activityInfo.packageName, queryIntentActivities.get(0).activityInfo.name);
    }

    public static Point a(Rect rect, int i, int i2) {
        float f;
        Random random = new Random();
        float f2 = 1.0f;
        if (i != 1) {
            if (i == 3) {
                f = BitmapDescriptorFactory.HUE_RED;
            } else if (i != 17) {
                f = 1.0f;
            }
            double a2 = a(random, f);
            if (i2 != 16 || i2 == 17) {
                f2 = 0.5f;
            } else if (i2 != 80) {
                f2 = BitmapDescriptorFactory.HUE_RED;
            }
            double a3 = a(random, f2);
            return new Point((int) (rect.width() * a2), (int) (rect.height() * a3));
        }
        f = 0.5f;
        double a22 = a(random, f);
        if (i2 != 16) {
        }
        f2 = 0.5f;
        double a32 = a(random, f2);
        return new Point((int) (rect.width() * a22), (int) (rect.height() * a32));
    }

    public static String a(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "UNKNOWN" : "LANDSCAPE" : "PORTRAIT" : "UNDEFINED";
    }

    public static String a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    static String a(String str) {
        Throwable th;
        Exception e;
        URL url;
        HttpURLConnection httpURLConnection = null;
        HttpURLConnection httpURLConnection2 = null;
        try {
            try {
                url = new URL(str);
                httpURLConnection = (HttpURLConnection) url.openConnection();
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        try {
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                httpURLConnection.setConnectTimeout(500);
                httpURLConnection.setReadTimeout(500);
                switch (httpURLConnection.getResponseCode()) {
                    case VastError.ERROR_CODE_BAD_URI /* 301 */:
                    case VastError.ERROR_CODE_EXCEEDED_WRAPPER_LIMIT /* 302 */:
                    case VastError.ERROR_CODE_WRAPPER_RESPONSE_NO_AD /* 303 */:
                    case 305:
                    case StatusLine.HTTP_TEMP_REDIRECT /* 307 */:
                        String headerField = httpURLConnection.getHeaderField("Location");
                        if (headerField == null) {
                            String url2 = url.toString();
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e3) {
                                    b.a("Utils", e3);
                                }
                            }
                            return url2;
                        } else if (d(headerField)) {
                            String a2 = a(httpURLConnection.getHeaderField("Location"));
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e4) {
                                    b.a("Utils", e4);
                                }
                            }
                            return a2;
                        } else if (new URI(headerField).getScheme() == null) {
                            try {
                                String url3 = new URL(url, headerField).toString();
                                if (url3.trim().length() > 0) {
                                    String a3 = a(url3);
                                    if (httpURLConnection != null) {
                                        try {
                                            httpURLConnection.disconnect();
                                        } catch (Exception e5) {
                                            b.a("Utils", e5);
                                        }
                                    }
                                    return a3;
                                }
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Exception e6) {
                                        b.a("Utils", e6);
                                    }
                                }
                                return headerField;
                            } catch (Exception e7) {
                                b.a("Utils", e7);
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Exception e8) {
                                        b.a("Utils", e8);
                                    }
                                }
                                return headerField;
                            }
                        } else {
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e9) {
                                    b.a("Utils", e9);
                                }
                            }
                            return headerField;
                        }
                    case 304:
                    case 306:
                    default:
                        String url4 = url.toString();
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception e10) {
                                b.a("Utils", e10);
                            }
                        }
                        return url4;
                }
            } catch (Throwable th3) {
                th = th3;
                httpURLConnection2 = httpURLConnection;
                if (httpURLConnection2 != null) {
                    try {
                        httpURLConnection2.disconnect();
                    } catch (Exception e11) {
                        b.a("Utils", e11);
                    }
                }
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            b.a("Utils", e);
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception e13) {
                    b.a("Utils", e13);
                }
            }
            return str;
        }
    }

    public static void a(Activity activity) {
        activity.requestWindowFeature(1);
        activity.getWindow().addFlags(128);
        activity.getWindow().setFlags(1024, 1024);
        if (Build.VERSION.SDK_INT > 15) {
            activity.getWindow().getDecorView().setSystemUiVisibility(4);
        }
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService("input_method");
        View currentFocus = activity.getCurrentFocus();
        View view = currentFocus;
        if (currentFocus == null) {
            view = new View(activity);
        }
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static void a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            f19163a.post(runnable);
        }
    }

    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo;
        b.a("Utils", "Testing connectivity:");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            b.a("Utils", "No Internet connection");
            return false;
        }
        b.a("Utils", "Connected to Internet");
        return true;
    }

    public static boolean a(final Context context, String str, final Runnable runnable) {
        final String c2 = c(str);
        if (d(c2)) {
            Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.explorestack.iab.utils.Utils.2
                @Override // java.lang.Runnable
                public final void run() {
                    Utils.b(context, Utils.a(c2));
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        Utils.a(runnable2);
                    }
                }
            });
            return true;
        }
        a(runnable);
        return b(context, c2);
    }

    public static boolean a(View view) {
        return view.getAlpha() == BitmapDescriptorFactory.HUE_RED;
    }

    public static Float b(String str) {
        return Float.valueOf(str.replace("px", ""));
    }

    public static String b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    public static void b(View view) {
        if (view != null && view.getParent() != null && (view.getParent() instanceof ViewGroup)) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
    }

    public static void b(Runnable runnable) {
        f19163a.post(runnable);
    }

    public static boolean b(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        double d2 = displayMetrics.widthPixels / displayMetrics.xdpi;
        double d3 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((d2 * d2) + (d3 * d3)) >= 6.6d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(Context context, String str) {
        Intent intent;
        try {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent2.setFlags(268435456);
            ComponentName a2 = a(context, intent2);
            if (a2 != null) {
                intent2.setComponent(a2);
                intent = intent2;
            } else {
                String decode = URLDecoder.decode(str, "UTF-8");
                intent = new Intent("android.intent.action.VIEW", Uri.parse(decode));
                intent.setFlags(268435456);
                ComponentName a3 = a(context, intent);
                if (a3 != null) {
                    intent.setComponent(a3);
                } else {
                    b.b("Utils", String.format("Component not found to handle intent: %s", decode));
                }
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            b.a("Utils", e);
            return false;
        }
    }

    public static Point c(Rect rect) {
        return new Point(Math.round(rect.width() * 0.5f), Math.round(rect.height() * 0.7f));
    }

    private static String c(String str) {
        try {
            new URL(str);
            return str;
        } catch (MalformedURLException e) {
            try {
                str = URLDecoder.decode(str, "UTF-8");
            } catch (UnsupportedEncodingException | IllegalArgumentException e2) {
            }
            return str;
        }
    }

    public static void c(Runnable runnable) {
        f19163a.postDelayed(runnable, 100L);
    }

    public static boolean c(Context context) {
        char c2;
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        if (i == 1) {
            c2 = '\t';
            if (rotation != 2) {
                c2 = '\t';
                if (rotation != 3) {
                    c2 = 1;
                }
            }
        } else {
            c2 = '\t';
            if (i == 2) {
                c2 = (rotation == 2 || rotation == 3) ? '\b' : (char) 0;
            }
        }
        if (c2 == 0 || c2 == '\b') {
            return true;
        }
        int i2 = Build.VERSION.SDK_INT;
        return false;
    }

    public static void d(Runnable runnable) {
        f19163a.removeCallbacks(runnable);
    }

    private static boolean d(String str) {
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static void httpGetURL(final String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.explorestack.iab.utils.Utils.1
                    /* JADX WARN: Removed duplicated region for block: B:43:0x00c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                    @Override // java.lang.Runnable
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void run() {
                        /*
                            Method dump skipped, instructions count: 215
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.utils.Utils.AnonymousClass1.run():void");
                    }
                });
            } catch (Exception e) {
                b.b("Utils", e.getMessage());
            }
        } else {
            b.a("Utils", "url is null or empty");
        }
    }
}
