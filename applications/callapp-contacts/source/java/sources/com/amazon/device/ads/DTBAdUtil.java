package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.graphics.Point;
import android.net.Uri;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import com.amazon.device.ads.SDKUtilities;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/amazon/device/ads/DTBAdUtil.class */
public class DTBAdUtil {

    /* renamed from: a */
    static final String f11777a = "DTBAdUtil";

    /* renamed from: b */
    public static final DTBAdUtil f11778b = new DTBAdUtil();

    private DTBAdUtil() {
    }

    /* renamed from: a */
    public static int m38961a(int i) {
        return (int) ((i * AdRegistration.m39071d().getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public static Activity m38960a(View view) {
        Context context = view.getContext();
        while (true) {
            Context context2 = context;
            if (context2 instanceof ContextWrapper) {
                if (context2 instanceof Activity) {
                    return (Activity) context2;
                }
                context = ((ContextWrapper) context2).getBaseContext();
            } else {
                return null;
            }
        }
    }

    /* renamed from: a */
    public static PublisherAdRequest.Builder m38958a(DTBAdResponse dTBAdResponse) {
        PublisherAdRequest.Builder builder = new PublisherAdRequest.Builder();
        if (dTBAdResponse.m38966b() > 0) {
            for (Map.Entry<String, List<String>> entry : dTBAdResponse.m38969a().entrySet()) {
                builder.addCustomTargeting(entry.getKey(), entry.getValue());
            }
        }
        return builder;
    }

    /* renamed from: a */
    public static String m38956a(String str, String str2) throws IOException {
        synchronized (DTBAdUtil.class) {
            try {
                Context m39071d = AdRegistration.m39071d();
                if (m39071d == null) {
                    return null;
                }
                File filesDir = m39071d.getFilesDir();
                File file = new File(filesDir.getAbsolutePath() + "/" + str2 + "/" + str);
                if (!file.exists()) {
                    return null;
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        return sb.toString();
                    }
                    sb.append(readLine.trim());
                    sb.append(StringUtils.f67179LF);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public static void m38959a(DTBAdMRAIDController dTBAdMRAIDController, Uri uri) throws ActivityNotFoundException {
        String str;
        if ("amzn".equals(uri.getScheme())) {
            DtbLog.m38820c(f11777a, "Amazon app store unavailable in the device");
            str = "https://www.amazon.com/gp/mas/dl/android?" + uri.getQuery();
        } else {
            DtbLog.m38820c(f11777a, "App store unavailable in the device");
            str = "https://play.google.com/store/apps/" + uri.getHost() + "?" + uri.getQuery();
        }
        Uri parse = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        AdRegistration.m39078a().startActivity(intent);
        dTBAdMRAIDController.mo38989j();
    }

    /* renamed from: a */
    public static void m38957a(String str) {
        Context m39071d = AdRegistration.m39071d();
        if (m39071d != null) {
            File filesDir = m39071d.getFilesDir();
            File file = new File(filesDir.getAbsolutePath() + "/" + str);
            if (file.isDirectory() || file.exists()) {
                return;
            }
            file.mkdir();
        }
    }

    /* renamed from: a */
    public static boolean m38962a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    /* renamed from: b */
    public static int m38955b(int i) {
        return (int) ((i / AdRegistration.m39071d().getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: b */
    public static ViewGroup m38954b(View view) {
        Activity m38960a = m38960a(view);
        if (m38960a == null) {
            return null;
        }
        return (ViewGroup) m38960a.findViewById(16908290);
    }

    /* renamed from: b */
    public static String m38953b(String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(AdRegistration.m39071d().getAssets().open(str)));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine.trim());
                sb.append(StringUtils.f67179LF);
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: c */
    public static SDKUtilities.SimpleSize m38952c(View view) {
        ViewGroup m38954b = m38954b(view);
        return m38954b == null ? m38951d(null) : new SDKUtilities.SimpleSize(m38955b(m38954b.getWidth()), m38955b(m38954b.getHeight()));
    }

    /* renamed from: d */
    public static SDKUtilities.SimpleSize m38951d(View view) {
        int i;
        int i2;
        int i3 = AdRegistration.m39071d().getResources().getConfiguration().orientation;
        Activity m38960a = view != null ? m38960a(view) : null;
        if (m38960a != null) {
            Point point = new Point();
            m38960a.getWindowManager().getDefaultDisplay().getRealSize(point);
            i2 = point.x;
            i = point.y;
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) AdRegistration.m39071d().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            i2 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
        }
        int m38955b = m38955b(i2);
        int m38955b2 = m38955b(i);
        return i3 == 1 ? new SDKUtilities.SimpleSize(m38955b, m38955b2) : new SDKUtilities.SimpleSize(m38955b2, m38955b);
    }
}
