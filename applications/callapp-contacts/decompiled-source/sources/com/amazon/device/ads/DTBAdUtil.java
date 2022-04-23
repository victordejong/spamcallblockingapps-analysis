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

    /* renamed from: a  reason: collision with root package name */
    static final String f6414a = "DTBAdUtil";

    /* renamed from: b  reason: collision with root package name */
    public static final DTBAdUtil f6415b = new DTBAdUtil();

    private DTBAdUtil() {
    }

    public static int a(int i) {
        return (int) ((i * AdRegistration.d().getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Activity a(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    public static PublisherAdRequest.Builder a(DTBAdResponse dTBAdResponse) {
        PublisherAdRequest.Builder builder = new PublisherAdRequest.Builder();
        if (dTBAdResponse.b() > 0) {
            for (Map.Entry<String, List<String>> entry : dTBAdResponse.a().entrySet()) {
                builder.addCustomTargeting(entry.getKey(), entry.getValue());
            }
        }
        return builder;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str, String str2) throws IOException {
        synchronized (DTBAdUtil.class) {
            try {
                Context d2 = AdRegistration.d();
                if (d2 == null) {
                    return null;
                }
                File filesDir = d2.getFilesDir();
                File file = new File(filesDir.getAbsolutePath() + "/" + str2 + "/" + str);
                if (!file.exists()) {
                    return null;
                }
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine.trim());
                        sb.append(StringUtils.LF);
                    } else {
                        return sb.toString();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(DTBAdMRAIDController dTBAdMRAIDController, Uri uri) throws ActivityNotFoundException {
        String str;
        if ("amzn".equals(uri.getScheme())) {
            DtbLog.c(f6414a, "Amazon app store unavailable in the device");
            str = "https://www.amazon.com/gp/mas/dl/android?" + uri.getQuery();
        } else {
            DtbLog.c(f6414a, "App store unavailable in the device");
            str = "https://play.google.com/store/apps/" + uri.getHost() + "?" + uri.getQuery();
        }
        Uri parse = Uri.parse(str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(parse);
        AdRegistration.a().startActivity(intent);
        dTBAdMRAIDController.j();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(String str) {
        Context d2 = AdRegistration.d();
        if (d2 != null) {
            File filesDir = d2.getFilesDir();
            File file = new File(filesDir.getAbsolutePath() + "/" + str);
            if (!file.isDirectory() && !file.exists()) {
                file.mkdir();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static int b(int i) {
        return (int) ((i / AdRegistration.d().getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static ViewGroup b(View view) {
        Activity a2 = a(view);
        if (a2 == null) {
            return null;
        }
        return (ViewGroup) a2.findViewById(16908290);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) throws IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(AdRegistration.d().getAssets().open(str)));
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return sb.toString();
            }
            sb.append(readLine.trim());
            sb.append(StringUtils.LF);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static SDKUtilities.SimpleSize c(View view) {
        ViewGroup b2 = b(view);
        return b2 == null ? d(null) : new SDKUtilities.SimpleSize(b(b2.getWidth()), b(b2.getHeight()));
    }

    public static SDKUtilities.SimpleSize d(View view) {
        int i;
        int i2;
        int i3 = AdRegistration.d().getResources().getConfiguration().orientation;
        Activity a2 = view != null ? a(view) : null;
        if (a2 != null) {
            Point point = new Point();
            a2.getWindowManager().getDefaultDisplay().getRealSize(point);
            i2 = point.x;
            i = point.y;
        } else {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) AdRegistration.d().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            i2 = displayMetrics.widthPixels;
            i = displayMetrics.heightPixels;
        }
        int b2 = b(i2);
        int b3 = b(i);
        return i3 == 1 ? new SDKUtilities.SimpleSize(b2, b3) : new SDKUtilities.SimpleSize(b3, b2);
    }
}
