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
import com.google.android.gms.common.C11941c;
import com.google.android.gms.common.C11943d;
import com.google.android.gms.common.util.C12110n;
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
/* renamed from: com.google.android.gms.internal.ads.yq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/yq.class */
public final class C13077yq {

    /* renamed from: a */
    public static final Handler f50094a = new cxg(Looper.getMainLooper());

    /* renamed from: b */
    private static final String f50095b = AdView.class.getName();

    /* renamed from: c */
    private static final String f50096c = InterstitialAd.class.getName();

    /* renamed from: d */
    private static final String f50097d = PublisherAdView.class.getName();

    /* renamed from: e */
    private static final String f50098e = PublisherInterstitialAd.class.getName();

    /* renamed from: f */
    private static final String f50099f = SearchAdView.class.getName();

    /* renamed from: g */
    private static final String f50100g = AdLoader.class.getName();

    /* renamed from: h */
    private float f50101h = -1.0f;

    /* renamed from: a */
    public static int m13950a(Context context, int i) {
        return m13946a(context.getResources().getDisplayMetrics(), i);
    }

    /* renamed from: a */
    public static int m13946a(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    /* renamed from: a */
    public static AdSize m13949a(Context context, int i, int i2) {
        int m13929d = m13929d(context, i2);
        if (m13929d == -1) {
            return AdSize.INVALID;
        }
        return new AdSize(i, Math.max(Math.min(i > 655 ? Math.round((i / 728.0f) * 90.0f) : i > 632 ? 81 : i > 526 ? Math.round((i / 468.0f) * 60.0f) : i > 432 ? 68 : Math.round((i / 320.0f) * 50.0f), Math.min(90, Math.round(m13929d * 0.15f))), 50));
    }

    /* renamed from: a */
    public static String m13951a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || m13952a()) {
            string = "emulator";
        }
        return m13942a(string);
    }

    /* renamed from: a */
    public static String m13942a(String str) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException e) {
                return null;
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        return null;
    }

    /* renamed from: a */
    public static String m13939a(StackTraceElement[] stackTraceElementArr, String str) {
        int i;
        String str2;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            i = i3 + 1;
            if (i >= stackTraceElementArr.length) {
                str2 = null;
                break;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i3];
            String className = stackTraceElement.getClassName();
            if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!f50095b.equalsIgnoreCase(className) && !f50096c.equalsIgnoreCase(className) && !f50097d.equalsIgnoreCase(className) && !f50098e.equalsIgnoreCase(className) && !f50099f.equalsIgnoreCase(className) && !f50100g.equalsIgnoreCase(className))) {
                i2 = i;
            }
        }
        str2 = stackTraceElementArr[i].getClassName();
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            StringBuilder sb = new StringBuilder();
            if (stringTokenizer.hasMoreElements()) {
                sb.append(stringTokenizer.nextToken());
                for (int i4 = 2; i4 > 0 && stringTokenizer.hasMoreElements(); i4--) {
                    sb.append(".");
                    sb.append(stringTokenizer.nextToken());
                }
                str = sb.toString();
            }
            if (str2 != null && !str2.contains(str)) {
                return str2;
            }
            return null;
        }
        return null;
    }

    /* renamed from: a */
    public static Throwable m13941a(Throwable th) {
        if (C12286cu.f46543f.mo17481a().booleanValue()) {
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
                if (m13934b(stackTraceElement.getClassName())) {
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

    /* renamed from: a */
    public static void m13947a(Context context, String str, String str2, Bundle bundle, AbstractC13078yr abstractC13078yr) {
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
            C11941c.m19271b();
            int m19268c = C11941c.m19268c(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(m19268c);
            sb.append(".204890000");
            str3 = sb.toString();
        }
        bundle.putString("js", str3);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme(Constants.HTTPS).path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str4 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str4, bundle.getString(str4));
        }
        abstractC13078yr.zzen(appendQueryParameter.toString());
    }

    /* renamed from: a */
    public static void m13945a(ViewGroup viewGroup, zzvt zzvtVar, String str) {
        m13944a(viewGroup, zzvtVar, str, -16777216, -1);
    }

    /* renamed from: a */
    private static void m13944a(ViewGroup viewGroup, zzvt zzvtVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() != 0) {
            return;
        }
        Context context = viewGroup.getContext();
        TextView textView = new TextView(context);
        textView.setGravity(17);
        textView.setText(str);
        textView.setTextColor(i);
        textView.setBackgroundColor(i2);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackgroundColor(i);
        int m13950a = m13950a(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zzvtVar.widthPixels - m13950a, zzvtVar.heightPixels - m13950a, 17));
        viewGroup.addView(frameLayout, zzvtVar.widthPixels, zzvtVar.heightPixels);
    }

    /* renamed from: a */
    public static void m13943a(ViewGroup viewGroup, zzvt zzvtVar, String str, String str2) {
        C13088za.zzez(str2);
        m13944a(viewGroup, zzvtVar, str, -65536, -16777216);
    }

    /* renamed from: a */
    public static void m13940a(HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: a */
    public static boolean m13952a() {
        return Build.DEVICE.startsWith("generic");
    }

    /* renamed from: b */
    public static int m13935b(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    /* renamed from: b */
    public static String m13937b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    /* renamed from: b */
    public static boolean m13938b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: b */
    public static boolean m13934b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(C12286cu.f46541d.mo17481a());
    }

    /* renamed from: c */
    public static String m13933c() {
        UUID randomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(randomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(randomUUID.getMostSignificantBits()).toByteArray();
        String bigInteger = new BigInteger(1, byteArray).toString();
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                bigInteger = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException e) {
            }
        }
        return bigInteger;
    }

    /* renamed from: c */
    public static boolean m13932c(Context context) {
        int mo19269b = C11941c.m19271b().mo19269b(context, C11943d.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        return mo19269b == 0 || mo19269b == 2;
    }

    /* renamed from: c */
    public static boolean m13931c(Context context, int i) {
        return C11941c.m19271b().mo19269b(context, i) == 0;
    }

    /* renamed from: d */
    public static int m13929d(Context context, int i) {
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

    /* renamed from: d */
    public static boolean m13930d(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    /* renamed from: e */
    public static boolean m13928e(Context context) {
        int intValue;
        int intValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (C12110n.m19019c()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            intValue = displayMetrics.heightPixels;
            intValue2 = displayMetrics.widthPixels;
        } else {
            try {
                intValue = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                intValue2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e) {
                return false;
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels == intValue && displayMetrics.widthPixels == intValue2;
    }

    /* renamed from: f */
    public static int m13927f(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", Constants.ANDROID_PLATFORM);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: a */
    public final void m13948a(Context context, String str, String str2, Bundle bundle) {
        m13947a(context, str, str2, bundle, new C13076yp(this));
    }

    /* renamed from: b */
    public final int m13936b(Context context, int i) {
        if (this.f50101h < BitmapDescriptorFactory.HUE_RED) {
            synchronized (this) {
                if (this.f50101h < BitmapDescriptorFactory.HUE_RED) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.f50101h = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.f50101h);
    }
}
