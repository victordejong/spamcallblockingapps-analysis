package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.common.util.n;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Constants;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yq.class */
public final class yq {

    /* renamed from: a  reason: collision with root package name */
    public static final Handler f28555a = new cxg(Looper.getMainLooper());

    /* renamed from: b  reason: collision with root package name */
    private static final String f28556b = AdView.class.getName();

    /* renamed from: c  reason: collision with root package name */
    private static final String f28557c = InterstitialAd.class.getName();

    /* renamed from: d  reason: collision with root package name */
    private static final String f28558d = PublisherAdView.class.getName();
    private static final String e = PublisherInterstitialAd.class.getName();
    private static final String f = SearchAdView.class.getName();
    private static final String g = AdLoader.class.getName();
    private float h = -1.0f;

    public static int a(Context context, int i) {
        return a(context.getResources().getDisplayMetrics(), i);
    }

    public static int a(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    public static AdSize a(Context context, int i, int i2) {
        int d2 = d(context, i2);
        if (d2 == -1) {
            return AdSize.INVALID;
        }
        return new AdSize(i, Math.max(Math.min(i > 655 ? Math.round((i / 728.0f) * 90.0f) : i > 632 ? 81 : i > 526 ? Math.round((i / 468.0f) * 60.0f) : i > 432 ? 68 : Math.round((i / 320.0f) * 50.0f), Math.min(90, Math.round(d2 * 0.15f))), 50));
    }

    public static String a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || a()) {
            string = "emulator";
        }
        return a(string);
    }

    public static String a(String str) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, instance.digest()));
            } catch (ArithmeticException e2) {
                return null;
            } catch (NoSuchAlgorithmException e3) {
            }
        }
        return null;
    }

    public static String a(StackTraceElement[] stackTraceElementArr, String str) {
        int i;
        String str2;
        int i2 = 0;
        while (true) {
            i = i2 + 1;
            if (i >= stackTraceElementArr.length) {
                str2 = null;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i2];
            String className = stackTraceElement.getClassName();
            if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!f28556b.equalsIgnoreCase(className) && !f28557c.equalsIgnoreCase(className) && !f28558d.equalsIgnoreCase(className) && !e.equalsIgnoreCase(className) && !f.equalsIgnoreCase(className) && !g.equalsIgnoreCase(className))) {
                i2 = i;
            }
        }
        str2 = stackTraceElementArr[i].getClassName();
        if (str == null) {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        StringBuilder sb = new StringBuilder();
        if (stringTokenizer.hasMoreElements()) {
            sb.append(stringTokenizer.nextToken());
            for (int i3 = 2; i3 > 0 && stringTokenizer.hasMoreElements(); i3--) {
                sb.append(".");
                sb.append(stringTokenizer.nextToken());
            }
            str = sb.toString();
        }
        if (str2 == null || str2.contains(str)) {
            return null;
        }
        return str2;
    }

    public static Throwable a(Throwable th) {
        if (cu.f.a().booleanValue()) {
            return th;
        }
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        Throwable th2 = null;
        while (!linkedList.isEmpty()) {
            Throwable th3 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th3.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
            boolean z = false;
            for (StackTraceElement stackTraceElement : stackTrace) {
                if (b(stackTraceElement.getClassName())) {
                    arrayList.add(stackTraceElement);
                    z = true;
                } else {
                    String className = stackTraceElement.getClassName();
                    if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                        arrayList.add(stackTraceElement);
                    } else {
                        arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                    }
                }
            }
            if (z) {
                th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            }
        }
        return th2;
    }

    public static void a(Context context, String str, String str2, Bundle bundle, yr yrVar) {
        Context applicationContext = context.getApplicationContext();
        Context context2 = applicationContext;
        if (applicationContext == null) {
            context2 = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString(AppsFlyerProperties.APP_ID, context2.getPackageName());
        String str3 = str;
        if (str == null) {
            c.b();
            int c2 = c.c(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(c2);
            sb.append(".204890000");
            str3 = sb.toString();
        }
        bundle.putString("js", str3);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme(Constants.HTTPS).path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str4 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str4, bundle.getString(str4));
        }
        yrVar.zzen(appendQueryParameter.toString());
    }

    public static void a(ViewGroup viewGroup, zzvt zzvtVar, String str) {
        a(viewGroup, zzvtVar, str, -16777216, -1);
    }

    private static void a(ViewGroup viewGroup, zzvt zzvtVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() == 0) {
            Context context = viewGroup.getContext();
            TextView textView = new TextView(context);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(i);
            textView.setBackgroundColor(i2);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(i);
            int a2 = a(context, 3);
            frameLayout.addView(textView, new FrameLayout.LayoutParams(zzvtVar.widthPixels - a2, zzvtVar.heightPixels - a2, 17));
            viewGroup.addView(frameLayout, zzvtVar.widthPixels, zzvtVar.heightPixels);
        }
    }

    public static void a(ViewGroup viewGroup, zzvt zzvtVar, String str, String str2) {
        za.zzez(str2);
        a(viewGroup, zzvtVar, str, -65536, -16777216);
    }

    public static void a(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    public static boolean a() {
        return Build.DEVICE.startsWith("generic");
    }

    public static int b(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    public static String b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    public static boolean b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(cu.f26395d.a());
    }

    public static String c() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(byteArray);
                instance.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(instance.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        return bigInteger;
    }

    public static boolean c(Context context) {
        int b2 = c.b().b(context, d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        return b2 == 0 || b2 == 2;
    }

    public static boolean c(Context context, int i) {
        return c.b().b(context, i) == 0;
    }

    public static int d(Context context, int i) {
        DisplayMetrics displayMetrics;
        Configuration configuration;
        if (context == null) {
            return -1;
        }
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        Resources resources = context2.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null || (configuration = resources.getConfiguration()) == null) {
            return -1;
        }
        int i2 = configuration.orientation;
        int i3 = i;
        if (i == 0) {
            i3 = i2;
        }
        return i3 == i2 ? Math.round(displayMetrics.heightPixels / displayMetrics.density) : Math.round(displayMetrics.widthPixels / displayMetrics.density);
    }

    public static boolean d(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    public static boolean e(Context context) {
        int intValue;
        int intValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (n.c()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            intValue = displayMetrics.heightPixels;
            intValue2 = displayMetrics.widthPixels;
        } else {
            try {
                intValue = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                intValue2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e2) {
                return false;
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels == intValue && displayMetrics.widthPixels == intValue2;
    }

    public static int f(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", Constants.ANDROID_PLATFORM);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    public final void a(Context context, String str, String str2, Bundle bundle) {
        a(context, str, str2, bundle, new yp(this));
    }

    public final int b(Context context, int i) {
        if (this.h < BitmapDescriptorFactory.HUE_RED) {
            synchronized (this) {
                if (this.h < BitmapDescriptorFactory.HUE_RED) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.h = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.h);
    }
}
