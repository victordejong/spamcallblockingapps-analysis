package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
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
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.mopub.mobileads.resource.DrawableConstants;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
import p131c.p161d.p170b.p224d.p252g.p253a.C3683j6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbbg.class */
public final class zzbbg {

    /* renamed from: b */
    public static final Handler f24738b = new zzdvo(Looper.getMainLooper());

    /* renamed from: c */
    public static final String f24739c = AdView.class.getName();

    /* renamed from: d */
    public static final String f24740d = InterstitialAd.class.getName();

    /* renamed from: e */
    public static final String f24741e = PublisherAdView.class.getName();

    /* renamed from: f */
    public static final String f24742f = PublisherInterstitialAd.class.getName();

    /* renamed from: g */
    public static final String f24743g = SearchAdView.class.getName();

    /* renamed from: h */
    public static final String f24744h = AdLoader.class.getName();

    /* renamed from: a */
    public float f24745a = -1.0f;

    /* renamed from: a */
    public static int m15907a(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    /* renamed from: a */
    public static String m15911a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || m15912a()) {
            string = "emulator";
        }
        return m15903a(string);
    }

    /* renamed from: a */
    public static String m15903a(String str) {
        for (int i = 0; i < 2; i++) {
            try {
                MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(str.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, instance.digest()));
            } catch (ArithmeticException e) {
                return null;
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        return null;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static String m15900a(StackTraceElement[] stackTraceElementArr, String str) {
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
            if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!f24739c.equalsIgnoreCase(className) && !f24740d.equalsIgnoreCase(className) && !f24741e.equalsIgnoreCase(className) && !f24742f.equalsIgnoreCase(className) && !f24743g.equalsIgnoreCase(className) && !f24744h.equalsIgnoreCase(className))) {
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

    /* renamed from: a */
    public static Throwable m15902a(Throwable th) {
        if (zzadb.f24008f.mo16862a().booleanValue()) {
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
                if (m15895b(stackTraceElement.getClassName())) {
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
    public static void m15908a(Context context, String str, String str2, Bundle bundle, boolean z, zzbbl zzbblVar) {
        Context applicationContext = context.getApplicationContext();
        Context context2 = applicationContext;
        if (applicationContext == null) {
            context2 = context;
        }
        bundle.putString("os", Build.VERSION.RELEASE);
        bundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
        bundle.putString("appid", context2.getPackageName());
        String str3 = str;
        if (str == null) {
            int b = GoogleApiAvailabilityLight.m17812a().m17803b(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(b);
            sb.append(".202510000");
            str3 = sb.toString();
        }
        bundle.putString("js", str3);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str4 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str4, bundle.getString(str4));
        }
        zzbblVar.mo15845a(appendQueryParameter.toString());
    }

    /* renamed from: a */
    public static void m15901a(boolean z, HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: a */
    public static boolean m15912a() {
        return Build.DEVICE.startsWith("generic");
    }

    /* renamed from: b */
    public static int m15897b(Context context, int i) {
        return m15907a(context.getResources().getDisplayMetrics(), i);
    }

    /* renamed from: b */
    public static int m15896b(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    /* renamed from: b */
    public static String m15898b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        if (contentResolver == null) {
            return null;
        }
        return Settings.Secure.getString(contentResolver, "android_id");
    }

    /* renamed from: b */
    public static boolean m15899b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    @VisibleForTesting
    /* renamed from: b */
    public static boolean m15895b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(zzadb.f24006d.mo16862a());
    }

    /* renamed from: c */
    public static String m15894c() {
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
            } catch (NoSuchAlgorithmException e) {
            }
        }
        return bigInteger;
    }

    /* renamed from: c */
    public static boolean m15893c(Context context) {
        int a = GoogleApiAvailabilityLight.m17812a().mo17809a(context, GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        return a == 0 || a == 2;
    }

    /* renamed from: c */
    public static boolean m15892c(Context context, int i) {
        return GoogleApiAvailabilityLight.m17812a().mo17809a(context, i) == 0;
    }

    /* renamed from: d */
    public static boolean m15891d(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    /* renamed from: e */
    public static boolean m15890e(Context context) {
        int intValue;
        int intValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (PlatformVersion.m17064d()) {
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
    public static int m15889f(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: a */
    public final int m15910a(Context context, int i) {
        if (this.f24745a < 0.0f) {
            synchronized (this) {
                if (this.f24745a < 0.0f) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.f24745a = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.f24745a);
    }

    /* renamed from: a */
    public final void m15909a(Context context, String str, String str2, Bundle bundle, boolean z) {
        m15908a(context, str, str2, bundle, true, new C3683j6(this));
    }

    /* renamed from: a */
    public final void m15906a(ViewGroup viewGroup, zzvn zzvnVar, String str) {
        m15905a(viewGroup, zzvnVar, str, DrawableConstants.CtaButton.BACKGROUND_COLOR, -1);
    }

    /* renamed from: a */
    public final void m15905a(ViewGroup viewGroup, zzvn zzvnVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() == 0) {
            Context context = viewGroup.getContext();
            TextView textView = new TextView(context);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(i);
            textView.setBackgroundColor(i2);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(i);
            int b = m15897b(context, 3);
            frameLayout.addView(textView, new FrameLayout.LayoutParams(zzvnVar.f29040f - b, zzvnVar.f29037c - b, 17));
            viewGroup.addView(frameLayout, zzvnVar.f29040f, zzvnVar.f29037c);
        }
    }

    /* renamed from: a */
    public final void m15904a(ViewGroup viewGroup, zzvn zzvnVar, String str, String str2) {
        zzbbq.m15852d(str2);
        m15905a(viewGroup, zzvnVar, str, -65536, DrawableConstants.CtaButton.BACKGROUND_COLOR);
    }
}
