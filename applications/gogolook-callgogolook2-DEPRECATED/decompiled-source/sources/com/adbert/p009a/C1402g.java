package com.adbert.p009a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.view.ViewGroup;
import android.webkit.CookieSyncManager;
import android.widget.RelativeLayout;
import com.adbert.p009a.p012c.EnumC1387g;
import com.adbert.p015b.C1447g;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.io.File;
import java.io.FileOutputStream;
import java.math.BigInteger;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* renamed from: com.adbert.a.g */
/* loaded from: classes-dex2jar.jar:com/adbert/a/g.class */
public class C1402g {

    /* renamed from: a */
    public static boolean f653a = false;

    /* renamed from: b */
    public static CookieManager f654b = new CookieManager();

    /* renamed from: c */
    public static String f655c = "";

    /* renamed from: d */
    public static Map<String, String> f656d = new HashMap();

    /* renamed from: e */
    public static TelephonyManager f657e;

    /* renamed from: com.adbert.a.g$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/g$a.class */
    public interface AbstractC1405a {
        void onResult(String str);
    }

    /* renamed from: a */
    public static int m37150a(float f, int i, int i2) {
        return (int) ((f / i) * i2);
    }

    /* renamed from: a */
    public static int m37149a(Activity activity) {
        Rect rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        int i = rect.top;
        int i2 = i;
        if (i == 0) {
            try {
                Class<?> cls = Class.forName("com.android.internal.R$dimen");
                i2 = activity.getResources().getDimensionPixelSize(Integer.parseInt(cls.getField("status_bar_height").get(cls.newInstance()).toString()));
            } catch (Exception e) {
                i2 = i;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m37144a(Context context, boolean z, int i) {
        C1406h hVar = new C1406h(context);
        float a = hVar.m37121a();
        a = hVar.m37118b();
        if (!z) {
        }
        return (int) ((a / 480.0f) * i);
    }

    /* renamed from: a */
    public static void m37148a(Context context) {
        CookieSyncManager.createInstance(context);
        android.webkit.CookieManager.getInstance().setAcceptCookie(true);
        CookieHandler.setDefault(new C1411k(null, CookiePolicy.ACCEPT_ALL));
    }

    /* renamed from: a */
    public static void m37147a(Context context, int i, ViewGroup viewGroup, boolean z) {
        C1447g gVar = new C1447g(context, i);
        viewGroup.addView(gVar);
        if (z) {
            ((RelativeLayout.LayoutParams) gVar.getLayoutParams()).addRule(12);
        }
    }

    /* renamed from: a */
    public static void m37146a(final Context context, final AbstractC1405a aVar) {
        if (!f655c.isEmpty()) {
            aVar.onResult(f655c);
        } else {
            new Thread(new Runnable() { // from class: com.adbert.a.g.1
                @Override // java.lang.Runnable
                public void run() {
                    String str = "";
                    try {
                        String id = AdvertisingIdClient.getAdvertisingIdInfo(context).getId();
                        if (id != null) {
                            str = id;
                        }
                    } catch (ClassCastException e) {
                        C1402g.m37141a(e);
                    } catch (Exception e2) {
                        C1402g.m37141a(e2);
                    }
                    if (str.isEmpty()) {
                        C1402g.m37130c(EnumC1387g.UUID_EMPTY.m37184a());
                    }
                    C1402g.f655c = str;
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.adbert.a.g.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.onResult(C1402g.f655c);
                        }
                    });
                }
            }).start();
        }
    }

    /* renamed from: a */
    public static void m37141a(Exception exc) {
    }

    /* renamed from: a */
    public static void m37139a(String str, String str2) {
        if (!str.equals(str2)) {
            f656d.put(str, str2);
        }
    }

    /* renamed from: a */
    public static boolean m37151a() {
        return false;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static boolean m37145a(Context context, String str) {
        try {
            return Build.VERSION.SDK_INT >= 23 ? context.checkSelfPermission(str) == 0 : context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception e) {
            m37141a(e);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m37143a(Bitmap bitmap, String str) {
        if (new File(str).exists()) {
            return true;
        }
        boolean a = m37140a(str);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(str);
            if (!a) {
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
            } else {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            }
            fileOutputStream.flush();
            fileOutputStream.close();
            return new File(str).exists();
        } catch (Exception e) {
            m37141a(e);
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m37142a(Bitmap bitmap, String str, String str2, String str3) {
        m37139a(str, str2);
        return m37143a(bitmap, str3);
    }

    /* renamed from: a */
    public static boolean m37140a(String str) {
        if (!str.isEmpty()) {
            return str.endsWith(".gif") || str.contains(".gif?");
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m37138a(String... strArr) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i] == null || strArr[i].isEmpty() || strArr[i].endsWith("/")) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static String m37135b(Context context, String str) {
        String str2 = str;
        if (f656d.get(str) != null) {
            str2 = f656d.get(str);
        }
        File file = new File(context.getCacheDir(), "/ADBERT/");
        File file2 = str2.endsWith("mp4") ? new File(file, "/video/") : new File(file, "/others/");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        String str3 = new String(str2);
        String substring = str3.substring(str3.substring(0, str3.lastIndexOf("/")).lastIndexOf("/"), str3.lastIndexOf("/"));
        File file3 = new File(file2, substring + "_" + str3.substring(str3.lastIndexOf("/") + 1));
        File file4 = new File(m37131c(context, str2));
        if (file4.exists()) {
            try {
                file4.renameTo(file3);
            } catch (Exception e) {
            }
        }
        return file3.getAbsolutePath();
    }

    /* renamed from: b */
    public static void m37134b(String str) {
    }

    /* renamed from: b */
    public static boolean m37137b() {
        return Build.VERSION.SDK_INT < 14;
    }

    /* renamed from: b */
    public static boolean m37136b(Context context) {
        boolean z = true;
        if (context.getResources().getConfiguration().orientation != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static String m37133c() {
        return new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.getDefault()).format(Calendar.getInstance().getTime());
    }

    /* renamed from: c */
    public static String m37131c(Context context, String str) {
        String absolutePath = context.getCacheDir().getAbsolutePath();
        if (str.isEmpty() || !str.contains("/")) {
            return str;
        }
        File file = new File(context.getCacheDir() + "/ADBERT/");
        if (!file.exists()) {
            file.mkdirs();
        }
        String str2 = new String(str);
        String substring = str2.substring(str2.substring(0, str2.lastIndexOf("/")).lastIndexOf("/"), str2.lastIndexOf("/"));
        String substring2 = str2.substring(str2.lastIndexOf("/") + 1);
        return absolutePath + "/ADBERT" + substring + "_" + substring2;
    }

    /* renamed from: c */
    public static void m37130c(String str) {
    }

    @SuppressLint({"MissingPermission"})
    /* renamed from: c */
    public static boolean m37132c(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                return activeNetworkInfo.isConnected();
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: d */
    public static int m37128d(Context context) {
        if (f657e == null) {
            f657e = (TelephonyManager) context.getSystemService("phone");
        }
        return f657e.getSimState();
    }

    /* renamed from: d */
    public static String m37129d() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.getDefault());
        Calendar instance = Calendar.getInstance();
        instance.add(5, -7);
        return simpleDateFormat.format(instance.getTime());
    }

    /* renamed from: d */
    public static void m37127d(String str) {
    }

    /* renamed from: e */
    public static void m37126e(String str) {
    }

    /* renamed from: f */
    public static void m37125f(String str) {
    }

    /* renamed from: g */
    public static String m37124g(String str) {
        byte[] i = m37122i(str);
        return String.format("%0" + (i.length * 2) + "X", new BigInteger(1, i)).toLowerCase();
    }

    /* renamed from: h */
    public static Date m37123h(String str) {
        Date date;
        try {
            date = new SimpleDateFormat("yyyyMMddHHmmssSSS", Locale.getDefault()).parse(str);
        } catch (ParseException e) {
            m37141a(e);
            date = null;
        }
        return date;
    }

    /* renamed from: i */
    public static byte[] m37122i(String str) {
        MessageDigest messageDigest;
        try {
            messageDigest = MessageDigest.getInstance("SHA-256");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            messageDigest = null;
        }
        messageDigest.reset();
        return messageDigest.digest(str.getBytes());
    }
}
