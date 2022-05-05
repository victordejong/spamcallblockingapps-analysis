package p081h.p203i.p204a.p224e.p259j.p260a;

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
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.media2.session.MediaSessionImplBase;
import com.aotter.net.trek.ads.view.controller.AdViewController;
import com.appsflyer.AppsFlyerProperties;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.doubleclick.PublisherInterstitialAd;
import com.google.android.gms.ads.search.SearchAdView;
import com.google.android.gms.internal.ads.zzjo;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;
import p081h.p203i.p204a.p224e.p235d.C6793d;
import p081h.p203i.p204a.p224e.p235d.p249s.C7083o;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.o1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/o1.class */
public final class C7343o1 {

    /* renamed from: a */
    public static final Handler f17401a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public static final String f17402b = AdView.class.getName();

    /* renamed from: c */
    public static final String f17403c = InterstitialAd.class.getName();

    /* renamed from: d */
    public static final String f17404d = PublisherAdView.class.getName();

    /* renamed from: e */
    public static final String f17405e = PublisherInterstitialAd.class.getName();

    /* renamed from: f */
    public static final String f17406f = SearchAdView.class.getName();

    /* renamed from: g */
    public static final String f17407g = AdLoader.class.getName();

    /* renamed from: a */
    public static int m20778a(Context context, int i) {
        return m20775a(context.getResources().getDisplayMetrics(), i);
    }

    /* renamed from: a */
    public static int m20775a(DisplayMetrics displayMetrics, int i) {
        return (int) TypedValue.applyDimension(1, i, displayMetrics);
    }

    /* renamed from: a */
    public static String m20779a(Context context) {
        ContentResolver contentResolver = context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || m20780a()) {
            string = "emulator";
        }
        return m20771a(string);
    }

    /* renamed from: a */
    public static String m20771a(String str) {
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

    @Nullable
    /* renamed from: a */
    public static String m20768a(StackTraceElement[] stackTraceElementArr, String str) {
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
            if (!"loadAd".equalsIgnoreCase(stackTraceElement.getMethodName()) || (!f17402b.equalsIgnoreCase(className) && !f17403c.equalsIgnoreCase(className) && !f17404d.equalsIgnoreCase(className) && !f17405e.equalsIgnoreCase(className) && !f17406f.equalsIgnoreCase(className) && !f17407g.equalsIgnoreCase(className))) {
                i2 = i;
            }
        }
        str2 = stackTraceElementArr[i].getClassName();
        if (str == null) {
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        StringBuilder sb = new StringBuilder();
        if (stringTokenizer.hasMoreElements()) {
            sb.append(stringTokenizer.nextToken());
            for (int i3 = 2; i3 > 0 && stringTokenizer.hasMoreElements(); i3--) {
                sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
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
    public static Throwable m20770a(Throwable th) {
        if (((Boolean) C7430v3.m20636e().m20975a(C7223e7.f17324b)).booleanValue()) {
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
                if (m20764b(stackTraceElement.getClassName())) {
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
    public static void m20776a(Context context, @Nullable String str, String str2, Bundle bundle, boolean z, AbstractC7380r1 r1Var) {
        if (z) {
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
                int b = C6793d.m21896a().m21887b(context);
                StringBuilder sb = new StringBuilder(20);
                sb.append(b);
                sb.append(".13000000");
                str3 = sb.toString();
            }
            bundle.putString("js", str3);
        }
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", str2);
        for (String str4 : bundle.keySet()) {
            appendQueryParameter.appendQueryParameter(str4, bundle.getString(str4));
        }
        r1Var.mo20711a(appendQueryParameter.toString());
    }

    /* renamed from: a */
    public static void m20769a(boolean z, HttpURLConnection httpURLConnection, @Nullable String str) {
        httpURLConnection.setConnectTimeout(AdViewController.f1365a);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setReadTimeout(AdViewController.f1365a);
        if (str != null) {
            httpURLConnection.setRequestProperty("User-Agent", str);
        }
        httpURLConnection.setUseCaches(false);
    }

    /* renamed from: a */
    public static boolean m20780a() {
        return Build.DEVICE.startsWith("generic");
    }

    /* renamed from: b */
    public static boolean m20767b() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: b */
    public static boolean m20766b(Context context) {
        if (context.getResources().getConfiguration().orientation != 2) {
            return false;
        }
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return ((int) (((float) displayMetrics.heightPixels) / displayMetrics.density)) < 600;
    }

    /* renamed from: b */
    public static boolean m20765b(Context context, int i) {
        return C6793d.m21896a().mo21893a(context, i) == 0;
    }

    /* renamed from: b */
    public static boolean m20764b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith((String) C7430v3.m20636e().m20975a(C7223e7.f17325c))) {
            return true;
        }
        try {
            return Class.forName(str).isAnnotationPresent(AbstractC7354p0.class);
        } catch (Exception e) {
            String valueOf = String.valueOf(str);
            C7452x1.m20573a(valueOf.length() != 0 ? "Fail to check class type for class ".concat(valueOf) : new String("Fail to check class type for class "), e);
            return false;
        }
    }

    /* renamed from: c */
    public static String m20763c() {
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

    @TargetApi(17)
    /* renamed from: c */
    public static boolean m20762c(Context context) {
        int intValue;
        int intValue2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (C7083o.m21128d()) {
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

    /* renamed from: d */
    public static int m20761d(Context context) {
        int identifier = context.getResources().getIdentifier("navigation_bar_width", "dimen", IJSExecutor.JS_FUNCTION_GROUP);
        if (identifier > 0) {
            return context.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* renamed from: a */
    public final void m20777a(Context context, @Nullable String str, String str2, Bundle bundle, boolean z) {
        m20776a(context, str, str2, bundle, true, new C7355p1(this));
    }

    /* renamed from: a */
    public final void m20774a(ViewGroup viewGroup, zzjo zzjoVar, String str) {
        m20773a(viewGroup, zzjoVar, str, -16777216, -1);
    }

    /* renamed from: a */
    public final void m20773a(ViewGroup viewGroup, zzjo zzjoVar, String str, int i, int i2) {
        if (viewGroup.getChildCount() == 0) {
            Context context = viewGroup.getContext();
            TextView textView = new TextView(context);
            textView.setGravity(17);
            textView.setText(str);
            textView.setTextColor(i);
            textView.setBackgroundColor(i2);
            FrameLayout frameLayout = new FrameLayout(context);
            frameLayout.setBackgroundColor(i);
            int a = m20778a(context, 3);
            frameLayout.addView(textView, new FrameLayout.LayoutParams(zzjoVar.f6776f - a, zzjoVar.f6773c - a, 17));
            viewGroup.addView(frameLayout, zzjoVar.f6776f, zzjoVar.f6773c);
        }
    }

    /* renamed from: a */
    public final void m20772a(ViewGroup viewGroup, zzjo zzjoVar, String str, String str2) {
        C7452x1.m20568d(str2);
        m20773a(viewGroup, zzjoVar, str, SupportMenu.CATEGORY_MASK, -16777216);
    }
}
