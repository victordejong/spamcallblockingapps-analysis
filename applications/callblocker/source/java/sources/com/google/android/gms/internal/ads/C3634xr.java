package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
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
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.C2274c;
import com.google.android.gms.ads.C2298i;
import com.google.android.gms.ads.p118a.C2247d;
import com.google.android.gms.ads.p118a.C2248e;
import com.google.android.gms.ads.p124g.C2296b;
import com.google.android.gms.common.C2593f;
import com.google.android.gms.common.util.C2716m;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.UUID;
/* renamed from: com.google.android.gms.internal.ads.xr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xr.class */
public final class C3634xr {

    /* renamed from: a */
    public static final Handler f17613a = new cnz(Looper.getMainLooper());

    /* renamed from: b */
    private static final String f17614b = AdView.class.getName();

    /* renamed from: c */
    private static final String f17615c = C2298i.class.getName();

    /* renamed from: d */
    private static final String f17616d = C2247d.class.getName();

    /* renamed from: e */
    private static final String f17617e = C2248e.class.getName();

    /* renamed from: f */
    private static final String f17618f = C2296b.class.getName();

    /* renamed from: g */
    private static final String f17619g = C2274c.class.getName();

    /* renamed from: h */
    private float f17620h = -1.0f;

    /* renamed from: a */
    public static int m6801a(Context context, int i) {
        return m6798a(context.getResources().getDisplayMetrics(), i);
    }

    /* renamed from: a */
    public static int m6798a(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    /* renamed from: a */
    public static String m6802a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || m6803a()) {
            string = "emulator";
        }
        return m6794a(string);
    }

    /* renamed from: a */
    public static String m6794a(String str) {
        String str2;
        int i = 0;
        while (true) {
            str2 = null;
            if (i >= 2) {
                break;
            }
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                str2 = String.format(Locale.US, "%032X", new BigInteger(1, messageDigest.digest()));
                break;
            } catch (ArithmeticException e) {
                str2 = null;
            } catch (NoSuchAlgorithmException e2) {
                i++;
            }
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cc, code lost:
        if (r5.contains(r6) == false) goto L36;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m6791a(java.lang.StackTraceElement[] r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C3634xr.m6791a(java.lang.StackTraceElement[], java.lang.String):java.lang.String");
    }

    /* renamed from: a */
    public static Throwable m6793a(Throwable th) {
        if (!C2819aw.f10448f.mo13599a().booleanValue()) {
            LinkedList linkedList = new LinkedList();
            while (th != null) {
                linkedList.push(th);
                th = th.getCause();
            }
            th = null;
            while (!linkedList.isEmpty()) {
                Throwable th2 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th2.getStackTrace();
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th2.getClass().getName(), "<filtered>", "<filtered>", 1));
                boolean z = false;
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (m6786b(stackTraceElement.getClassName())) {
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
                    th = th == null ? new Throwable(th2.getMessage()) : new Throwable(th2.getMessage(), th);
                    th.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
            }
        }
        return th;
    }

    /* renamed from: a */
    public static void m6799a(Context context, String str, String str2, Bundle bundle, boolean z, AbstractC3635xs abstractC3635xs) {
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
            str3 = new StringBuilder(23).append(C2593f.m14165b().m14161c(context)).append(".201004000").toString();
        }
        bundle.putString("js", str3);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str4 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str4, bundle.getString(str4));
        }
        abstractC3635xs.mo6739a(appendQueryParameter.toString());
    }

    /* renamed from: a */
    private final void m6796a(ViewGroup viewGroup, dyd dydVar, String str, int i, int i2) {
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
        int m6801a = m6801a(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(dydVar.f16095f - m6801a, dydVar.f16092c - m6801a, 17));
        viewGroup.addView(frameLayout, dydVar.f16095f, dydVar.f16092c);
    }

    /* renamed from: a */
    public static void m6792a(boolean z, HttpURLConnection httpURLConnection, String str) {
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(60000);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: a */
    public static boolean m6803a() {
        return Build.DEVICE.startsWith("generic");
    }

    /* renamed from: b */
    public static int m6787b(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    /* renamed from: b */
    public static String m6789b(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        return contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
    }

    /* renamed from: b */
    public static boolean m6790b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: b */
    public static boolean m6786b(String str) {
        return TextUtils.isEmpty(str) ? false : str.startsWith(C2819aw.f10446d.mo13599a());
    }

    /* renamed from: c */
    public static String m6785c() {
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
    public static boolean m6784c(Context context) {
        int mo14163b = C2593f.m14165b().mo14163b(context, 12451000);
        return mo14163b == 0 || mo14163b == 2;
    }

    /* renamed from: c */
    public static boolean m6783c(Context context, int i) {
        return C2593f.m14165b().mo14163b(context, i) == 0;
    }

    /* renamed from: d */
    public static boolean m6782d(Context context) {
        DisplayMetrics displayMetrics;
        boolean z = false;
        if (context.getResources().getConfiguration().orientation == 2) {
            if (((int) (displayMetrics.heightPixels / context.getResources().getDisplayMetrics().density)) < 600) {
                z = true;
            }
        }
        return z;
    }

    @TargetApi(17)
    /* renamed from: e */
    public static boolean m6781e(Context context) {
        boolean z;
        int intValue;
        int intValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (C2716m.m13839d()) {
            defaultDisplay.getRealMetrics(displayMetrics);
            intValue = displayMetrics.heightPixels;
            intValue2 = displayMetrics.widthPixels;
        } else {
            try {
                intValue = ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
                intValue2 = ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e) {
                z = false;
            }
        }
        defaultDisplay.getMetrics(displayMetrics);
        z = displayMetrics.heightPixels == intValue && displayMetrics.widthPixels == intValue2;
        return z;
    }

    /* renamed from: f */
    public static int m6780f(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
        return identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
    }

    /* renamed from: a */
    public final void m6800a(Context context, String str, String str2, Bundle bundle, boolean z) {
        m6799a(context, str, str2, bundle, true, new C3633xq(this));
    }

    /* renamed from: a */
    public final void m6797a(ViewGroup viewGroup, dyd dydVar, String str) {
        m6796a(viewGroup, dydVar, str, -16777216, -1);
    }

    /* renamed from: a */
    public final void m6795a(ViewGroup viewGroup, dyd dydVar, String str, String str2) {
        C3645yb.m6745e(str2);
        m6796a(viewGroup, dydVar, str, -65536, -16777216);
    }

    /* renamed from: b */
    public final int m6788b(Context context, int i) {
        if (this.f17620h < 0.0f) {
            synchronized (this) {
                if (this.f17620h < 0.0f) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.f17620h = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.f17620h);
    }
}
