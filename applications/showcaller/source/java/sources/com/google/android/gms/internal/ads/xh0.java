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
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.C5600d;
import com.google.android.gms.ads.admanager.AbstractC5594a;
import com.google.android.gms.ads.admanager.AdManagerAdView;
import com.google.android.gms.ads.p265x.AbstractC5859a;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.common.C6086c;
import com.google.android.gms.common.C6094e;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xh0.class */
public final class xh0 {

    /* renamed from: a */
    public static final Handler f32048a = new au2(Looper.getMainLooper());

    /* renamed from: b */
    private static final String f32049b = AdView.class.getName();

    /* renamed from: c */
    private static final String f32050c = AbstractC5859a.class.getName();

    /* renamed from: d */
    private static final String f32051d = AdManagerAdView.class.getName();

    /* renamed from: e */
    private static final String f32052e = AbstractC5594a.class.getName();

    /* renamed from: f */
    private static final String f32053f = SearchAdView.class.getName();

    /* renamed from: g */
    private static final String f32054g = C5600d.class.getName();

    /* renamed from: h */
    private float f32055h = -1.0f;

    /* renamed from: d */
    public static String m9174d(String str) {
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
    public static String m9172f() {
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
    public static Throwable m9171g(Throwable th) {
        if (C6532gy.f23737f.m12799e().booleanValue()) {
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
                if (m9170h(stackTraceElement.getClassName())) {
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

    /* renamed from: h */
    public static boolean m9170h(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(C6532gy.f23735d.m12799e());
    }

    /* renamed from: i */
    public static final int m9169i(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    /* renamed from: j */
    public static final String m9168j(StackTraceElement[] stackTraceElementArr, String str) {
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
            if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!f32049b.equalsIgnoreCase(className) && !f32050c.equalsIgnoreCase(className) && !f32051d.equalsIgnoreCase(className) && !f32052e.equalsIgnoreCase(className) && !f32053f.equalsIgnoreCase(className) && !f32054g.equalsIgnoreCase(className))) {
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

    /* renamed from: k */
    public static final boolean m9167k() {
        return Build.DEVICE.startsWith("generic");
    }

    /* renamed from: l */
    public static final boolean m9166l(Context context, int i) {
        return C6086c.m17221f().mo17219h(context, i) == 0;
    }

    /* renamed from: m */
    public static final boolean m9165m(Context context) {
        int mo17219h = C6086c.m17221f().mo17219h(context, C6094e.f19409a);
        return mo17219h == 0 || mo17219h == 2;
    }

    /* renamed from: n */
    public static final boolean m9164n() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: o */
    public static final int m9163o(DisplayMetrics displayMetrics, int i) {
        return Math.round(i / displayMetrics.density);
    }

    /* renamed from: p */
    public static final void m9162p(Context context, String str, String str2, Bundle bundle, boolean z, wh0 wh0Var) {
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
            int m17226a = C6086c.m17221f().m17226a(context);
            StringBuilder sb = new StringBuilder(23);
            sb.append(m17226a);
            sb.append(".213806000");
            str3 = sb.toString();
        }
        bundle.putString("js", str3);
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps");
        for (String str4 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str4, bundle.getString(str4));
        }
        wh0Var.mo9583n(appendQueryParameter.toString());
    }

    /* renamed from: q */
    public static final int m9161q(Context context, int i) {
        return m9169i(context.getResources().getDisplayMetrics(), i);
    }

    /* renamed from: r */
    public static final String m9160r(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || m9167k()) {
            string = "emulator";
        }
        return m9174d(string);
    }

    /* renamed from: s */
    private static final void m9159s(ViewGroup viewGroup, zzbdl zzbdlVar, String str, int i, int i2) {
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
        int m9161q = m9161q(context, 3);
        frameLayout.addView(textView, new FrameLayout.LayoutParams(zzbdlVar.f33687i - m9161q, zzbdlVar.f33684f - m9161q, 17));
        viewGroup.addView(frameLayout, zzbdlVar.f33687i, zzbdlVar.f33684f);
    }

    /* renamed from: a */
    public final int m9177a(Context context, int i) {
        if (this.f32055h < 0.0f) {
            synchronized (this) {
                if (this.f32055h < 0.0f) {
                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                    if (windowManager == null) {
                        return 0;
                    }
                    Display defaultDisplay = windowManager.getDefaultDisplay();
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    defaultDisplay.getMetrics(displayMetrics);
                    this.f32055h = displayMetrics.density;
                }
            }
        }
        return Math.round(i / this.f32055h);
    }

    /* renamed from: b */
    public final void m9176b(ViewGroup viewGroup, zzbdl zzbdlVar, String str, String str2) {
        if (str2 != null) {
            ei0.m15464f(str2);
        }
        m9159s(viewGroup, zzbdlVar, str, -65536, -16777216);
    }

    /* renamed from: c */
    public final void m9175c(ViewGroup viewGroup, zzbdl zzbdlVar, String str) {
        m9159s(viewGroup, zzbdlVar, "Ads by Google", -16777216, -1);
    }

    /* renamed from: e */
    public final void m9173e(Context context, String str, String str2, Bundle bundle, boolean z) {
        m9162p(context, str, "gmob-apps", bundle, true, new vh0(this));
    }
}
