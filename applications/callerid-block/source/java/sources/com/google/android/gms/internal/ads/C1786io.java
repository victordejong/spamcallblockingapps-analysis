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
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.C1354d;
import com.google.android.gms.ads.C1359f;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.admanager.a;
import com.google.android.gms.ads.p074w.AbstractC1510a;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.C1554b;
import com.google.android.gms.common.C1555c;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
/* renamed from: com.google.android.gms.internal.ads.io */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/io.class */
public final class C1786io {

    /* renamed from: b */
    public static final Handler f6814b = new tv1(Looper.getMainLooper());

    /* renamed from: c */
    private static final String f6815c = AdView.class.getName();

    /* renamed from: d */
    private static final String f6816d = AbstractC1510a.class.getName();

    /* renamed from: e */
    private static final String f6817e = AdManagerAdView.class.getName();

    /* renamed from: f */
    private static final String f6818f = a.class.getName();

    /* renamed from: g */
    private static final String f6819g = SearchAdView.class.getName();

    /* renamed from: h */
    private static final String f6820h = C1354d.class.getName();

    /* renamed from: a */
    private float f6821a = -1.0f;

    /* renamed from: d */
    public static String m7140d(String str) {
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

    /* renamed from: f */
    public static String m7138f() {
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

    /* renamed from: g */
    public static Throwable m7137g(Throwable th) {
        StackTraceElement stackTraceElement;
        if (C1765h5.f6735f.m6222e().booleanValue()) {
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
            for (StackTraceElement stackTraceElement2 : stackTrace) {
                if (m7135i(stackTraceElement2.getClassName())) {
                    arrayList.add(stackTraceElement2);
                    z = true;
                } else {
                    String className = stackTraceElement2.getClassName();
                    if (!TextUtils.isEmpty(className)) {
                        stackTraceElement = stackTraceElement2;
                        if (!className.startsWith("android.")) {
                            if (className.startsWith("java.")) {
                                stackTraceElement = stackTraceElement2;
                            }
                        }
                        arrayList.add(stackTraceElement);
                    }
                    stackTraceElement = new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1);
                    arrayList.add(stackTraceElement);
                }
            }
            if (z) {
                th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            }
        }
        return th2;
    }

    /* renamed from: h */
    public static C1359f m7136h(Context context, int i, int i2, int i3) {
        int i4;
        float f;
        float f2;
        int m7134j = m7134j(context, i3);
        if (m7134j == -1) {
            return C1359f.f5461q;
        }
        int min = Math.min(90, Math.round(m7134j * 0.15f));
        if (i <= 655) {
            if (i > 632) {
                i4 = 81;
            } else if (i > 526) {
                f = i / 468.0f;
                f2 = 60.0f;
            } else if (i > 432) {
                i4 = 68;
            } else {
                f = i / 320.0f;
                f2 = 50.0f;
            }
            return new C1359f(i, Math.max(Math.min(i4, min), 50));
        }
        f = i / 728.0f;
        f2 = 90.0f;
        i4 = Math.round(f * f2);
        return new C1359f(i, Math.max(Math.min(i4, min), 50));
    }

    /* renamed from: i */
    public static boolean m7135i(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(C1765h5.f6733d.m6222e());
    }

    /* renamed from: j */
    public static int m7134j(Context context, int i) {
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
        return Math.round((i3 == i2 ? displayMetrics.heightPixels : displayMetrics.widthPixels) / displayMetrics.density);
    }

    /* renamed from: k */
    public static final int m7133k(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    /* renamed from: l */
    public static final String m7132l(StackTraceElement[] stackTraceElementArr, String str) {
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
            if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!f6815c.equalsIgnoreCase(className) && !f6816d.equalsIgnoreCase(className) && !f6817e.equalsIgnoreCase(className) && !f6818f.equalsIgnoreCase(className) && !f6819g.equalsIgnoreCase(className) && !f6820h.equalsIgnoreCase(className))) {
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

    /* renamed from: m */
    public static final boolean m7131m() {
        return Build.DEVICE.startsWith("generic");
    }

    /* renamed from: n */
    public static final boolean m7130n(Context context, int i) {
        return C1554b.m8455b().m8453d(context, i) == 0;
    }

    /* renamed from: o */
    public static final boolean m7129o(Context context) {
        int m8453d = C1554b.m8455b().m8453d(context, C1555c.f5812a);
        return m8453d == 0 || m8453d == 2;
    }

    /* renamed from: p */
    public static final boolean m7128p() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: q */
    public static final int m7127q(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    /* renamed from: r */
    public static final void m7126r(Context context, String str, String str2, Bundle bundle, boolean z, AbstractC1771ho abstractC1771ho) {
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
            int m8456a = C1554b.m8455b().m8456a(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(m8456a);
            sb.append(".210890000");
            str3 = sb.toString();
        }
        bundle.putString("js", str3);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps");
        for (String str4 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str4, bundle.getString(str4));
        }
        abstractC1771ho.m7260g(appendQueryParameter.toString());
    }

    /* renamed from: s */
    public static final int m7125s(Context context, int i) {
        return m7133k(context.getResources().getDisplayMetrics(), i);
    }

    /* renamed from: t */
    public static final String m7124t(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || m7131m()) {
            string = "emulator";
        }
        return m7140d(string);
    }

    /* renamed from: u */
    private static final void m7123u(ViewGroup viewGroup, zzyx zzyxVar, String str, int i, int i2) {
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
        int m7125s = m7125s(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zzyxVar.g - m7125s, zzyxVar.d - m7125s, 17));
        viewGroup.addView(frameLayout, zzyxVar.g, zzyxVar.d);
    }

    /* renamed from: a */
    public final int m7143a(Context context, int i) {
        if (this.f6821a < 0.0f) {
            synchronized (this) {
                if (this.f6821a < 0.0f) {
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    if (windowManager == null) {
                        return 0;
                    }
                    Display defaultDisplay = windowManager.getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.f6821a = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.f6821a);
    }

    /* renamed from: b */
    public final void m7142b(ViewGroup viewGroup, zzyx zzyxVar, String str, String str2) {
        if (str2 != null) {
            C1894po.m6180f(str2);
        }
        m7123u(viewGroup, zzyxVar, str, -65536, -16777216);
    }

    /* renamed from: c */
    public final void m7141c(ViewGroup viewGroup, zzyx zzyxVar, String str) {
        m7123u(viewGroup, zzyxVar, "Ads by Google", -16777216, -1);
    }

    /* renamed from: e */
    public final void m7139e(Context context, String str, String str2, Bundle bundle, boolean z) {
        m7126r(context, str, "gmob-apps", bundle, true, new go(this));
    }
}
