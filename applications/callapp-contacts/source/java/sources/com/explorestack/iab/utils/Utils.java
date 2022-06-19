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

    /* renamed from: a */
    private static final Handler f32544a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private static final AtomicInteger f32545b = new AtomicInteger(1);

    /* JADX WARN: Type inference failed for: r0v28, types: [double] */
    /* JADX WARN: Type inference failed for: r0v30, types: [double] */
    /* JADX WARN: Type inference failed for: r0v35, types: [double] */
    /* renamed from: a */
    private static double m24108a(Random random, float f) {
        double sqrt = Math.sqrt(Math.log(Math.abs(((random.nextLong() % 100000) + 1) / 100000.0d)) * (-2.0d)) * Math.sin(Math.abs(((random.nextLong() % 100000) + 1) / 100000.0d) * 6.283185307179586d);
        double d = f;
        return Math.min(1.0d, Math.max(0.0d, (double) ((d < 0.4d || d > 0.6d) ? d < 0.4d ? d + (0.10000000149011612d / (sqrt * sqrt)) : d - (0.10000000149011612d / (sqrt * sqrt)) : (sqrt * 0.10000000149011612d) + d)));
    }

    /* renamed from: a */
    public static int m24123a() {
        AtomicInteger atomicInteger;
        int i;
        int i2;
        if (Build.VERSION.SDK_INT < 17) {
            do {
                atomicInteger = f32545b;
                i = atomicInteger.get();
                int i3 = i + 1;
                i2 = i3;
                if (i3 > 16777215) {
                    i2 = 1;
                }
            } while (!atomicInteger.compareAndSet(i, i2));
            return i;
        }
        return View.generateViewId();
    }

    /* renamed from: a */
    public static int m24122a(float f, float f2) {
        return (int) ((f / f2) + 0.5f);
    }

    /* renamed from: a */
    public static int m24120a(int i, int i2) {
        return i > i2 ? 2 : 1;
    }

    /* renamed from: a */
    public static int m24117a(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: a */
    private static ComponentName m24116a(Context context, Intent intent) {
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (!queryIntentActivities.isEmpty()) {
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                if (resolveInfo.activityInfo.packageName.equals("com.android.vending")) {
                    return new ComponentName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                }
            }
            return new ComponentName(queryIntentActivities.get(0).activityInfo.packageName, queryIntentActivities.get(0).activityInfo.name);
        }
        return null;
    }

    /* renamed from: a */
    public static Point m24112a(Rect rect, int i, int i2) {
        float f;
        float f2;
        Random random = new Random();
        if (i != 1) {
            if (i == 3) {
                f = 0.0f;
            } else if (i != 17) {
                f = 1.0f;
            }
            double m24108a = m24108a(random, f);
            if (i2 != 16 || i2 == 17) {
                f2 = 0.5f;
            } else {
                f2 = 1.0f;
                if (i2 != 80) {
                    f2 = 0.0f;
                }
            }
            return new Point((int) (rect.width() * m24108a), (int) (rect.height() * m24108a(random, f2)));
        }
        f = 0.5f;
        double m24108a2 = m24108a(random, f);
        if (i2 != 16) {
        }
        f2 = 0.5f;
        return new Point((int) (rect.width() * m24108a2), (int) (rect.height() * m24108a(random, f2)));
    }

    /* renamed from: a */
    public static String m24121a(int i) {
        return i != 0 ? i != 1 ? i != 2 ? "UNKNOWN" : "LANDSCAPE" : "PORTRAIT" : "UNDEFINED";
    }

    /* renamed from: a */
    public static String m24113a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    /* renamed from: a */
    static String m24109a(String str) {
        Throwable th;
        Exception e;
        HttpURLConnection httpURLConnection;
        URL url;
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
            httpURLConnection = null;
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
                                    C9587b.m24076a("Utils", e3);
                                }
                            }
                            return url2;
                        } else if (m24096d(headerField)) {
                            String m24109a = m24109a(httpURLConnection.getHeaderField("Location"));
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e4) {
                                    C9587b.m24076a("Utils", e4);
                                }
                            }
                            return m24109a;
                        } else if (new URI(headerField).getScheme() != null) {
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception e5) {
                                    C9587b.m24076a("Utils", e5);
                                }
                            }
                            return headerField;
                        } else {
                            try {
                                String url3 = new URL(url, headerField).toString();
                                if (url3.trim().length() <= 0) {
                                    if (httpURLConnection != null) {
                                        try {
                                            httpURLConnection.disconnect();
                                        } catch (Exception e6) {
                                            C9587b.m24076a("Utils", e6);
                                        }
                                    }
                                    return headerField;
                                }
                                String m24109a2 = m24109a(url3);
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Exception e7) {
                                        C9587b.m24076a("Utils", e7);
                                    }
                                }
                                return m24109a2;
                            } catch (Exception e8) {
                                C9587b.m24076a("Utils", e8);
                                if (httpURLConnection != null) {
                                    try {
                                        httpURLConnection.disconnect();
                                    } catch (Exception e9) {
                                        C9587b.m24076a("Utils", e9);
                                    }
                                }
                                return headerField;
                            }
                        }
                    case 304:
                    case 306:
                    default:
                        String url4 = url.toString();
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception e10) {
                                C9587b.m24076a("Utils", e10);
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
                        C9587b.m24076a("Utils", e11);
                    }
                }
                throw th;
            }
        } catch (Exception e12) {
            e = e12;
            C9587b.m24076a("Utils", e);
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception e13) {
                    C9587b.m24076a("Utils", e13);
                }
            }
            return str;
        }
    }

    /* renamed from: a */
    public static void m24119a(Activity activity) {
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

    /* renamed from: a */
    public static void m24110a(Runnable runnable) {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnable.run();
        } else {
            f32544a.post(runnable);
        }
    }

    /* renamed from: a */
    public static boolean m24118a(Context context) {
        NetworkInfo activeNetworkInfo;
        C9587b.m24077a("Utils", "Testing connectivity:");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null || (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isConnected()) {
            C9587b.m24077a("Utils", "No Internet connection");
            return false;
        }
        C9587b.m24077a("Utils", "Connected to Internet");
        return true;
    }

    /* renamed from: a */
    public static boolean m24114a(final Context context, String str, final Runnable runnable) {
        final String m24098c = m24098c(str);
        if (m24096d(m24098c)) {
            Executors.newSingleThreadExecutor().execute(new Runnable() { // from class: com.explorestack.iab.utils.Utils.2
                @Override // java.lang.Runnable
                public final void run() {
                    Utils.m24106b(context, Utils.m24109a(m24098c));
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        Utils.m24110a(runnable2);
                    }
                }
            });
            return true;
        }
        m24110a(runnable);
        return m24106b(context, m24098c);
    }

    /* renamed from: a */
    public static boolean m24111a(View view) {
        return view.getAlpha() == BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: b */
    public static Float m24102b(String str) {
        return Float.valueOf(str.replace("px", ""));
    }

    /* renamed from: b */
    public static String m24105b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    /* renamed from: b */
    public static void m24104b(View view) {
        if (view == null || view.getParent() == null || !(view.getParent() instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) view.getParent()).removeView(view);
    }

    /* renamed from: b */
    public static void m24103b(Runnable runnable) {
        f32544a.post(runnable);
    }

    /* renamed from: b */
    public static boolean m24107b(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        double d = displayMetrics.widthPixels / displayMetrics.xdpi;
        double d2 = displayMetrics.heightPixels / displayMetrics.ydpi;
        return Math.sqrt((d * d) + (d2 * d2)) >= 6.6d;
    }

    /* renamed from: b */
    public static boolean m24106b(Context context, String str) {
        Intent intent;
        try {
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent2.setFlags(268435456);
            ComponentName m24116a = m24116a(context, intent2);
            if (m24116a != null) {
                intent2.setComponent(m24116a);
                intent = intent2;
            } else {
                String decode = URLDecoder.decode(str, "UTF-8");
                intent = new Intent("android.intent.action.VIEW", Uri.parse(decode));
                intent.setFlags(268435456);
                ComponentName m24116a2 = m24116a(context, intent);
                if (m24116a2 != null) {
                    intent.setComponent(m24116a2);
                } else {
                    C9587b.m24075b("Utils", String.format("Component not found to handle intent: %s", decode));
                }
            }
            context.startActivity(intent);
            return true;
        } catch (Exception e) {
            C9587b.m24076a("Utils", e);
            return false;
        }
    }

    /* renamed from: c */
    public static Point m24100c(Rect rect) {
        return new Point(Math.round(rect.width() * 0.5f), Math.round(rect.height() * 0.7f));
    }

    /* renamed from: c */
    private static String m24098c(String str) {
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

    /* renamed from: c */
    public static void m24099c(Runnable runnable) {
        f32544a.postDelayed(runnable, 100L);
    }

    /* renamed from: c */
    public static boolean m24101c(Context context) {
        boolean z;
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        int i = context.getResources().getConfiguration().orientation;
        if (i == 1) {
            z = true;
            if (rotation != 2) {
                z = true;
                if (rotation != 3) {
                    z = true;
                }
            }
        } else {
            z = true;
            if (i == 2) {
                z = (rotation == 2 || rotation == 3) ? true : false;
            }
        }
        if (!z || z) {
            return true;
        }
        int i2 = Build.VERSION.SDK_INT;
        return false;
    }

    /* renamed from: d */
    public static void m24097d(Runnable runnable) {
        f32544a.removeCallbacks(runnable);
    }

    /* renamed from: d */
    private static boolean m24096d(String str) {
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static void httpGetURL(final String str) {
        if (TextUtils.isEmpty(str)) {
            C9587b.m24077a("Utils", "url is null or empty");
            return;
        }
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
                    throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.utils.Utils.RunnableC95801.run():void");
                }
            });
        } catch (Exception e) {
            C9587b.m24075b("Utils", e.getMessage());
        }
    }
}
