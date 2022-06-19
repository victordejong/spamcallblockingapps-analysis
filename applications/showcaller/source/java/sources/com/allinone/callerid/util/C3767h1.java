package com.allinone.callerid.util;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.media.MediaPlayer;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.LocaleList;
import android.os.PowerManager;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.core.content.C0586a;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$string;
import com.allinone.callerid.bean.NumberContent;
import com.allinone.callerid.bean.ShortCut;
import com.allinone.callerid.customview.C2446d;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p157f.C2629e;
import com.allinone.callerid.service.KeepAliveJobService;
import com.allinone.callerid.service.NLService;
import com.allinone.callerid.util.p204j1.C3776a;
import com.allinone.callerid.util.p204j1.C3784b;
import com.android.boom.C3955w;
import com.android.internal.telephony.ITelephony;
import com.google.android.gms.ads.p263v.C5852a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Pattern;
import p020b.p067p.p068a.C1764a;
/* renamed from: com.allinone.callerid.util.h1 */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/h1.class */
public class C3767h1 {

    /* renamed from: a */
    public static boolean f12006a = false;

    /* renamed from: b */
    public static boolean f12007b = false;

    /* renamed from: c */
    private static boolean f12008c = true;

    /* renamed from: d */
    public static boolean f12009d = false;

    /* renamed from: e */
    private static C2446d f12010e;

    /* renamed from: f */
    public static String f12011f = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.h1$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/h1$a.class */
    public class RunnableC3768a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f12012d;

        RunnableC3768a(Context context) {
            this.f12012d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent();
            intent.setAction("com.allinone.callerid.RELOAD_DATA");
            C1764a.m28939b(this.f12012d).m28937d(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.h1$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/h1$b.class */
    public class RunnableC3769b implements Runnable {
        RunnableC3769b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean unused = C3767h1.f12008c = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.util.h1$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/util/h1$c.class */
    public class RunnableC3770c implements Runnable {

        /* renamed from: d */
        final /* synthetic */ Context f12013d;

        RunnableC3770c(Context context) {
            this.f12013d = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3767h1.f12010e.m27339c(this.f12013d);
        }
    }

    /* renamed from: A */
    public static String m24298A() {
        String str;
        String str2 = "";
        String str3 = str2;
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (true) {
                str3 = str2;
                str = str2;
                if (!networkInterfaces.hasMoreElements()) {
                    break;
                }
                String str4 = str2;
                Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                while (true) {
                    String str5 = str2;
                    if (inetAddresses.hasMoreElements()) {
                        String str6 = str2;
                        InetAddress nextElement = inetAddresses.nextElement();
                        String str7 = str2;
                        if (!(nextElement instanceof Inet6Address) && !"127.0.0.1".equals(nextElement.getHostAddress())) {
                            String str8 = str2;
                            str2 = nextElement.getHostAddress();
                            break;
                        }
                    }
                }
            }
        } catch (SocketException e) {
            e.printStackTrace();
            str = str3;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("location", "ip:" + str);
        }
        return str;
    }

    /* renamed from: A0 */
    public static void m24297A0(Bitmap bitmap, String str, String str2) {
        if (C3718c0.f11914a) {
            C3718c0.m24436a("shareimage", "保存图片");
        }
        File file = new File(str, str2);
        if (file.exists()) {
            file.delete();
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            fileOutputStream.flush();
            fileOutputStream.close();
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("shareimage", "已经保存");
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: B */
    public static boolean m24296B(Context context) {
        String m24508o = C3711a1.m24508o();
        return m24508o == null || m24508o.equals("");
    }

    /* renamed from: B0 */
    public static void m24295B0(Context context) {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                boolean isIgnoringBatteryOptimizations = ((PowerManager) context.getSystemService("power")).isIgnoringBatteryOptimizations(m24275M(context));
                Log.e("tony", "hasIgnored:" + isIgnoringBatteryOptimizations);
                if (isIgnoringBatteryOptimizations) {
                    C3810q.m24071b().m24070c("battery_optimize_ok");
                } else {
                    C3810q.m24071b().m24070c("battery_optimize_no");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: C */
    public static boolean m24294C(Context context) {
        String m24508o = C3711a1.m24508o();
        return m24508o != null && !"".equals(m24508o) && !m24508o.equals(m24265W(context));
    }

    /* renamed from: C0 */
    public static void m24293C0(Activity activity, int i) {
        try {
            if (Build.VERSION.SDK_INT < 21) {
                return;
            }
            Window window = activity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(i);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: D */
    public static String m24292D(Context context, String str) {
        String str2 = "";
        if (str != null) {
            str2 = "";
            if (!"".equals(str)) {
                str2 = context.getResources().getString(R$string.spam);
                boolean z = true;
                switch (str.hashCode()) {
                    case -478566200:
                        if (str.equals("Robocall")) {
                            z = false;
                            break;
                        }
                        break;
                    case -444093798:
                        if (str.equals("Other Commercial")) {
                            z = true;
                            break;
                        }
                        break;
                    case 2570908:
                        if (str.equals("Scam")) {
                            z = true;
                            break;
                        }
                        break;
                    case 2583401:
                        if (str.equals("Spam")) {
                            z = true;
                            break;
                        }
                        break;
                    case 77374588:
                        if (str.equals("Prank")) {
                            z = true;
                            break;
                        }
                        break;
                    case 244385703:
                        if (str.equals("Collection agency")) {
                            z = true;
                            break;
                        }
                        break;
                    case 1172387228:
                        if (str.equals("Telemarketing")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        str2 = context.getResources().getString(R$string.spam);
                        break;
                    case true:
                        str2 = context.getResources().getString(R$string.spam);
                        break;
                    case true:
                        str2 = context.getResources().getString(R$string.scam);
                        break;
                    case true:
                        str2 = context.getResources().getString(R$string.spam);
                        break;
                    case true:
                        str2 = context.getResources().getString(R$string.spam);
                        break;
                    case true:
                        str2 = context.getResources().getString(R$string.spam);
                        break;
                    case true:
                        str2 = context.getResources().getString(R$string.telemarketing);
                        break;
                }
            }
        }
        return str2;
    }

    /* renamed from: D0 */
    public static void m24291D0(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.android.vending");
            launchIntentForPackage.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.activities.LaunchUrlHandlerActivity"));
            launchIntentForPackage.setData(Uri.parse("market://details?id=" + str));
            launchIntentForPackage.setFlags(268435456);
            context.startActivity(launchIntentForPackage);
        } catch (Exception e) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + str));
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* renamed from: E */
    public static String m24290E() {
        String str;
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            str = "";
            if (locale != null) {
                str = locale.getCountry();
            }
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: E0 */
    public static void m24289E0(Context context) {
        try {
            C2446d m27340b = C2446d.m27340b();
            f12010e = m27340b;
            m27340b.m27341a(context);
            new Handler().postDelayed(new RunnableC3770c(context), 3000L);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0088 A[ADDED_TO_REGION, ORIG_RETURN, RETURN] */
    /* renamed from: F */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m24288F() {
        /*
            com.allinone.callerid.main.EZCallApplication r0 = com.allinone.callerid.main.EZCallApplication.m26146c()     // Catch: java.lang.Exception -> L71
            java.lang.String r1 = "android.permission.GET_ACCOUNTS"
            int r0 = androidx.core.content.C0586a.m33353a(r0, r1)     // Catch: java.lang.Exception -> L71
            if (r0 != 0) goto L6b
            com.allinone.callerid.main.EZCallApplication r0 = com.allinone.callerid.main.EZCallApplication.m26146c()     // Catch: java.lang.Exception -> L71
            android.accounts.AccountManager r0 = android.accounts.AccountManager.get(r0)     // Catch: java.lang.Exception -> L71
            java.lang.String r1 = "com.google"
            android.accounts.Account[] r0 = r0.getAccountsByType(r1)     // Catch: java.lang.Exception -> L71
            r3 = r0
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L2c
            r0 = r4
            r5 = r0
            r0 = r3
            int r0 = r0.length     // Catch: java.lang.Exception -> L71
            if (r0 <= 0) goto L2c
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            r5 = r0
        L2c:
            r0 = r5
            if (r0 == 0) goto L6b
            r0 = r5
            java.lang.String r0 = r0.name     // Catch: java.lang.Exception -> L71
            r3 = r0
            r0 = r3
            r4 = r0
            boolean r0 = com.allinone.callerid.util.C3718c0.f11914a     // Catch: java.lang.Exception -> L65
            if (r0 == 0) goto L79
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L65
            r4 = r0
            r0 = r4
            r0.<init>()     // Catch: java.lang.Exception -> L65
            r0 = r4
            java.lang.String r1 = "account="
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L65
            r0 = r4
            r1 = r5
            java.lang.String r1 = r1.name     // Catch: java.lang.Exception -> L65
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L65
            java.lang.String r0 = "account"
            r1 = r4
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Exception -> L65
            com.allinone.callerid.util.C3718c0.m24436a(r0, r1)     // Catch: java.lang.Exception -> L65
            r0 = r3
            r4 = r0
            goto L79
        L65:
            r5 = move-exception
            r0 = r3
            r4 = r0
            goto L75
        L6b:
            java.lang.String r0 = ""
            r4 = r0
            goto L79
        L71:
            r5 = move-exception
            java.lang.String r0 = ""
            r4 = r0
        L75:
            r0 = r5
            r0.printStackTrace()
        L79:
            r0 = r4
            if (r0 == 0) goto L88
            java.lang.String r0 = ""
            r1 = r4
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L88
            r0 = r4
            return r0
        L88:
            java.lang.String r0 = "email unknown"
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.util.C3767h1.m24288F():java.lang.String");
    }

    /* renamed from: F0 */
    public static void m24287F0(Context context, long j) {
        JobScheduler jobScheduler;
        if (Build.VERSION.SDK_INT < 21 || (jobScheduler = (JobScheduler) context.getSystemService("jobscheduler")) == null) {
            return;
        }
        JobInfo.Builder builder = new JobInfo.Builder(6666, new ComponentName(context, KeepAliveJobService.class));
        builder.setRequiredNetworkType(1);
        builder.setRequiresCharging(false);
        builder.setRequiresDeviceIdle(false);
        builder.setMinimumLatency(j);
        jobScheduler.schedule(builder.build());
    }

    /* renamed from: G */
    public static String m24286G() {
        String str;
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            str = "en";
            if (locale != null) {
                str = locale.getLanguage();
            }
        } catch (Exception e) {
            e.printStackTrace();
            str = "en";
        }
        return str;
    }

    /* renamed from: G0 */
    public static void m24285G0(Activity activity) {
        if (!m24252e0(activity)) {
            try {
                C3955w.m23729a(activity);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: H */
    public static String m24284H(Context context) {
        String str;
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_PHONE_NUMBERS") == 0 && C0586a.m33353a(context, "android.permission.READ_PHONE_STATE") == 0) {
            str = ((TelephonyManager) context.getSystemService("phone")).getLine1Number();
            return str != null ? "" : "";
        }
        str = "";
        return str != null ? "" : "";
    }

    /* renamed from: H0 */
    public static void m24283H0(TextView textView) {
        URLSpan[] uRLSpanArr;
        if (textView == null || !(textView.getText() instanceof Spannable)) {
            return;
        }
        Spannable spannable = (Spannable) textView.getText();
        for (URLSpan uRLSpan : (URLSpan[]) spannable.getSpans(0, spannable.length(), URLSpan.class)) {
            int spanStart = spannable.getSpanStart(uRLSpan);
            int spanEnd = spannable.getSpanEnd(uRLSpan);
            spannable.removeSpan(uRLSpan);
            spannable.setSpan(new URLSpanNoUnderline(uRLSpan.getURL()), spanStart, spanEnd, 0);
        }
        textView.setText(spannable);
    }

    /* renamed from: I */
    public static String m24282I(Context context) {
        String str;
        String str2 = "";
        if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") == 0) {
            ArrayList arrayList = new ArrayList();
            Cursor query = context.getContentResolver().query(C3714b1.m24450h(), new String[]{"type", ShortCut.NUMBER}, " type=? and new=?", new String[]{"3", "1"}, "date desc");
            str2 = "";
            int i = 0;
            if (query != null) {
                query.moveToFirst();
                for (int i2 = 0; i2 < query.getCount(); i2++) {
                    query.moveToPosition(i2);
                    String string = query.getString(query.getColumnIndex(ShortCut.NUMBER));
                    if (!arrayList.contains(string)) {
                        arrayList.add(string);
                    }
                }
                query.close();
                i = 0;
                str2 = "";
            }
            while (i < arrayList.size()) {
                if (m24215x(context, (String) arrayList.get(i)) == 0 || m24215x(context, (String) arrayList.get(i)) <= 1) {
                    str = i == arrayList.size() - 1 ? str2 + ((String) arrayList.get(i)) : str2 + ((String) arrayList.get(i)) + ",";
                } else if (i == arrayList.size() - 1) {
                    str = str2 + ((String) arrayList.get(i)) + "(" + m24215x(context, (String) arrayList.get(i)) + ")";
                } else {
                    str = str2 + ((String) arrayList.get(i)) + "(" + m24215x(context, (String) arrayList.get(i)) + "), ";
                }
                str2 = str;
                i++;
            }
            if (arrayList.size() <= 1) {
                str2 = m24210z0(context) + " " + context.getResources().getString(R$string.missed_calls) + " " + str2;
            }
        }
        return str2;
    }

    /* renamed from: I0 */
    public static void m24281I0(Context context, String str) {
        Resources resources = context.getResources();
        Configuration configuration = resources.getConfiguration();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case 3121:
                if (str.equals("ar")) {
                    z = false;
                    break;
                }
                break;
            case 3148:
                if (str.equals("bn")) {
                    z = true;
                    break;
                }
                break;
            case 3201:
                if (str.equals("de")) {
                    z = true;
                    break;
                }
                break;
            case 3239:
                if (str.equals("el")) {
                    z = true;
                    break;
                }
                break;
            case 3241:
                if (str.equals("en")) {
                    z = true;
                    break;
                }
                break;
            case 3246:
                if (str.equals("es")) {
                    z = true;
                    break;
                }
                break;
            case 3259:
                if (str.equals("fa")) {
                    z = true;
                    break;
                }
                break;
            case 3276:
                if (str.equals("fr")) {
                    z = true;
                    break;
                }
                break;
            case 3329:
                if (str.equals("hi")) {
                    z = true;
                    break;
                }
                break;
            case 3365:
                if (str.equals("in")) {
                    z = true;
                    break;
                }
                break;
            case 3371:
                if (str.equals("it")) {
                    z = true;
                    break;
                }
                break;
            case 3374:
                if (str.equals("iw")) {
                    z = true;
                    break;
                }
                break;
            case 3424:
                if (str.equals("kk")) {
                    z = true;
                    break;
                }
                break;
            case 3428:
                if (str.equals("ko")) {
                    z = true;
                    break;
                }
                break;
            case 3494:
                if (str.equals("ms")) {
                    z = true;
                    break;
                }
                break;
            case 3588:
                if (str.equals("pt")) {
                    z = true;
                    break;
                }
                break;
            case 3651:
                if (str.equals("ru")) {
                    z = true;
                    break;
                }
                break;
            case 3697:
                if (str.equals("te")) {
                    z = true;
                    break;
                }
                break;
            case 3700:
                if (str.equals("th")) {
                    z = true;
                    break;
                }
                break;
            case 3710:
                if (str.equals("tr")) {
                    z = true;
                    break;
                }
                break;
            case 3741:
                if (str.equals("ur")) {
                    z = true;
                    break;
                }
                break;
            case 3763:
                if (str.equals("vi")) {
                    z = true;
                    break;
                }
                break;
            case 3886:
                if (str.equals("zh")) {
                    z = true;
                    break;
                }
                break;
            case 96646068:
                if (str.equals("en_CA")) {
                    z = true;
                    break;
                }
                break;
            case 96646193:
                if (str.equals("en_GB")) {
                    z = true;
                    break;
                }
                break;
            case 115813762:
                if (str.equals("zh-TW")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("ar", "IQ");
                    break;
                } else {
                    configuration.setLocale(new Locale("ar", "IQ"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("bn", "BD");
                    break;
                } else {
                    configuration.setLocale(new Locale("bn", "BD"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.GERMANY;
                    break;
                } else {
                    configuration.setLocale(Locale.GERMANY);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("el");
                    break;
                } else {
                    configuration.setLocale(new Locale("el"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.US;
                    break;
                } else {
                    configuration.setLocale(Locale.US);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("es", "ES");
                    break;
                } else {
                    configuration.setLocale(new Locale("es", "ES"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("fa", "IR");
                    break;
                } else {
                    configuration.setLocale(new Locale("fa", "IR"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.FRANCE;
                    break;
                } else {
                    configuration.setLocale(Locale.FRANCE);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("hi", "IN");
                    break;
                } else {
                    configuration.setLocale(new Locale("hi", "IN"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("in", "ID");
                    break;
                } else {
                    configuration.setLocale(new Locale("in", "ID"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("it");
                    break;
                } else {
                    configuration.setLocale(new Locale("it"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("iw", "IL");
                    break;
                } else {
                    configuration.setLocale(new Locale("iw", "IL"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("kk", "KK");
                    break;
                } else {
                    configuration.setLocale(new Locale("kk", "KK"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.KOREA;
                    break;
                } else {
                    configuration.setLocale(Locale.KOREA);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("ms", "MY");
                    break;
                } else {
                    configuration.setLocale(new Locale("ms", "MY"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("pt", "PT");
                    break;
                } else {
                    configuration.setLocale(new Locale("pt", "PT"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("ru", "RU");
                    break;
                } else {
                    configuration.setLocale(new Locale("ru", "RU"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("te");
                    break;
                } else {
                    configuration.setLocale(new Locale("te"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("th", "TH");
                    break;
                } else {
                    configuration.setLocale(new Locale("th", "TH"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("tr", "TR");
                    break;
                } else {
                    configuration.setLocale(new Locale("tr", "TR"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("ur");
                    break;
                } else {
                    configuration.setLocale(new Locale("ur"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = new Locale("vi", "VI");
                    break;
                } else {
                    configuration.setLocale(new Locale("vi", "VI"));
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.SIMPLIFIED_CHINESE;
                    break;
                } else {
                    configuration.setLocale(Locale.SIMPLIFIED_CHINESE);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.CANADA;
                    break;
                } else {
                    configuration.setLocale(Locale.CANADA);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.UK;
                    break;
                } else {
                    configuration.setLocale(Locale.UK);
                    break;
                }
            case true:
                if (Build.VERSION.SDK_INT < 17) {
                    configuration.locale = Locale.TRADITIONAL_CHINESE;
                    break;
                } else {
                    configuration.setLocale(Locale.TRADITIONAL_CHINESE);
                    break;
                }
        }
        resources.updateConfiguration(configuration, displayMetrics);
    }

    /* renamed from: J */
    public static String m24280J(Context context, String str) {
        String str2 = "";
        if (str != null) {
            str2 = "";
            if (!"".equals(str)) {
                boolean z = true;
                switch (str.hashCode()) {
                    case -1984987966:
                        if (str.equals("Mobile")) {
                            z = false;
                            break;
                        }
                        break;
                    case -869651023:
                        if (str.equals("Fixed line ／Mobile")) {
                            z = true;
                            break;
                        }
                        break;
                    case -652010176:
                        if (str.equals("Fixed line")) {
                            z = true;
                            break;
                        }
                        break;
                }
                switch (z) {
                    case false:
                        str2 = context.getResources().getString(R$string.mobile);
                        break;
                    case true:
                        str2 = context.getResources().getString(R$string.mobile_fixed);
                        break;
                    case true:
                        str2 = context.getResources().getString(R$string.fixed_line);
                        break;
                    default:
                        str2 = "";
                        break;
                }
            }
        }
        return str2;
    }

    /* renamed from: J0 */
    public static void m24279J0(Context context) {
        if (f12008c) {
            f12008c = false;
            new Handler().postDelayed(new RunnableC3768a(context), 500L);
            new Handler().postDelayed(new RunnableC3769b(), 3000L);
        }
    }

    /* renamed from: K */
    public static String m24278K(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkCountryIso().toUpperCase();
    }

    /* renamed from: K0 */
    public static void m24277K0(Context context, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str + "&referrer=" + str2));
            intent.setPackage("com.android.vending");
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: L */
    public static String m24276L(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        if (str != null && !"".equals(str)) {
            sb.append(str + "\n");
        }
        sb.append(EZCallApplication.m26146c().getResources().getString(R$string.tel_title) + ":" + str2 + "\n");
        if (str3 != null && !"".equals(str3)) {
            sb.append(str3 + "\n");
        }
        sb.append(EZCallApplication.m26146c().getResources().getString(R$string.number_share_tip));
        return sb.toString();
    }

    /* renamed from: M */
    public static String m24275M(Context context) {
        return context.getPackageName();
    }

    /* renamed from: N */
    public static String m24274N() {
        return Build.MODEL;
    }

    /* renamed from: O */
    public static String m24273O() {
        return Build.MANUFACTURER;
    }

    /* renamed from: P */
    public static String m24272P() {
        int[] iArr = new int[101];
        for (int i = 0; i < 101; i++) {
            iArr[i] = i + 100;
        }
        return String.valueOf(iArr[new Random().nextInt(100)]);
    }

    /* renamed from: Q */
    public static String m24271Q(Context context, String str) {
        String str2;
        if (str != null) {
            String valueOf = String.valueOf((System.currentTimeMillis() / 1000) - C3711a1.m24559b0());
            if (C3718c0.f11914a) {
                C3718c0.m24436a("servertime", "取到本地midtime=" + String.valueOf(C3711a1.m24559b0()));
                C3718c0.m24436a("servertime", "time=" + valueOf + "number:" + str);
            }
            try {
                str2 = C3955w.m23722s(context, valueOf, str);
            } catch (Throwable th) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("wbb", "Throwable:" + th.getLocalizedMessage());
                }
                th.printStackTrace();
            }
            return str2;
        }
        str2 = "";
        return str2;
    }

    /* renamed from: R */
    public static String m24270R() {
        return Build.VERSION.RELEASE;
    }

    /* renamed from: S */
    public static boolean m24269S(String str) {
        boolean z = false;
        if (str != null) {
            z = false;
            try {
                if (!"".equals(str)) {
                    z = false;
                    if (Integer.parseInt(m24265W(EZCallApplication.m26146c()).replaceAll("\\.", "")) < Integer.parseInt(str.replaceAll("\\.", ""))) {
                        z = true;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                z = false;
            }
        }
        return z;
    }

    /* renamed from: T */
    public static String m24268T(Context context) {
        String str;
        int i;
        TelephonyManager telephonyManager;
        String str2;
        String m24420b;
        try {
            i = Build.VERSION.SDK_INT;
        } catch (Exception e) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "Exception:" + e.getMessage());
            }
            e.printStackTrace();
            str = "";
        }
        if (i >= 31) {
            String m24267U = m24267U();
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            String str3 = "uniqueId";
            if (!"".equals(string)) {
                str3 = string;
            }
            m24420b = C3723d0.m24420b(m24267U + str3);
        } else if (i < 29) {
            str = "";
            if (C3776a.m24162c(context, "android.permission.READ_PHONE_STATE")) {
                String str4 = null;
                if (((TelephonyManager) context.getSystemService("phone")) != null) {
                    str4 = "" + telephonyManager.getDeviceId();
                    str2 = "" + telephonyManager.getSimSerialNumber();
                } else {
                    str2 = null;
                }
                String str5 = "" + Settings.Secure.getString(context.getContentResolver(), "android_id");
                str = "";
                if (str4 != null) {
                    m24420b = C3723d0.m24420b(new UUID(str5.hashCode(), str2.hashCode() | (str4.hashCode() << 32)).toString());
                }
            }
            return str;
        } else {
            String m24267U2 = m24267U();
            String m24211z = m24211z(context);
            String str6 = "" + Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (m24226r0(context)) {
                m24211z = str6;
            }
            m24420b = C3723d0.m24420b(m24267U2 + m24211z);
        }
        str = m24420b;
        return str;
    }

    /* renamed from: U */
    private static String m24267U() {
        return "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
    }

    /* renamed from: V */
    public static String m24266V() {
        String m24274N = m24274N();
        String m24273O = m24273O();
        String m24270R = m24270R();
        String m24265W = m24265W(EZCallApplication.m26146c());
        String country_code = C3806p.m24083d(EZCallApplication.m26146c()).getCountry_code();
        String str = EZCallApplication.m26146c().f9914h;
        return " \n \n \n \n \n \n \n---------------------------------------------\nmanufactrer:" + m24273O + "\ndevice:" + m24274N + "\nsystemVersion:" + m24270R + "\nappVersion:" + m24265W + "\ncc:" + country_code + "\nlanguage:" + str;
    }

    /* renamed from: W */
    public static String m24265W(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str = null;
        }
        return str;
    }

    /* renamed from: X */
    public static long m24264X(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(j));
        calendar.setTimeZone(TimeZone.getTimeZone("GMT-8:00"));
        int i = calendar.get(11);
        int i2 = calendar.get(12);
        int i3 = calendar.get(13);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("alive", "time:" + j);
            C3718c0.m24436a("alive", "HOUR:" + i);
            C3718c0.m24436a("alive", "MINUTE:" + i2);
            C3718c0.m24436a("alive", "SECOND:" + i3);
        }
        long j2 = ((((((23 - i) * 60) * 60) * 1000) + (((59 - i2) * 60) * 1000)) + ((59 - i3) * 1000)) - 60000;
        if (C3718c0.f11914a) {
            C3718c0.m24436a("alive", "delay_time:" + j2);
        }
        return j2;
    }

    /* renamed from: Y */
    public static boolean m24263Y(Context context, String str) {
        boolean z;
        synchronized (C3767h1.class) {
            z = false;
            boolean z2 = false;
            try {
                try {
                    if (C0586a.m33353a(context, "android.permission.READ_CONTACTS") == 0) {
                        ContentResolver contentResolver = context.getContentResolver();
                        String[] strArr = new String[2];
                        strArr[0] = "_id";
                        strArr[1] = "display_name";
                        Cursor cursor = null;
                        try {
                            cursor = contentResolver.query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), strArr, null, null, null);
                        } catch (Exception e) {
                            e.printStackTrace();
                            try {
                                cursor = contentResolver.query(Uri.withAppendedPath(Contacts.Phones.CONTENT_FILTER_URL, Uri.encode(str)), strArr, null, null, null);
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                        }
                        boolean z3 = false;
                        if (cursor != null) {
                            z3 = false;
                            if (cursor.getCount() > 0) {
                                z3 = false;
                                if (cursor.moveToFirst()) {
                                    z3 = true;
                                }
                            }
                        }
                        z = z3;
                        if (cursor != null) {
                            z2 = z3;
                            cursor.close();
                            z = z3;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                z = z2;
            }
        }
        return z;
    }

    /* renamed from: Z */
    public static int m24262Z(Context context, String str) {
        int i;
        Cursor cursor;
        Cursor cursor2 = null;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("content://com.android.contacts/data/phones/filter/");
            sb.append(str);
            Cursor query = context.getContentResolver().query(Uri.parse(sb.toString()), new String[]{"contact_id"}, null, null, null);
            i = 0;
            cursor = query;
            if (query != null) {
                i = 0;
                cursor = query;
                if (query.getCount() > 0) {
                    query.moveToFirst();
                    cursor2 = query;
                    i = query.getInt(0);
                    cursor = query;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            cursor = cursor2;
            i = 0;
        }
        if (cursor != null) {
            cursor.close();
        }
        return i;
    }

    /* renamed from: a */
    public static boolean m24261a(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            boolean z = false;
            if (activeNetworkInfo != null) {
                z = false;
                if (activeNetworkInfo.isAvailable()) {
                    z = true;
                }
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: a0 */
    public static boolean m24260a0() {
        boolean z = Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(EZCallApplication.m26146c());
        if (m24219v(EZCallApplication.m26146c())) {
            z = true;
        }
        if (C3711a1.m24513m2().booleanValue() && m24245i()) {
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    public static String m24259b(String str) {
        return Pattern.compile("[0-9]").matcher(Pattern.compile("[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]").matcher(str).replaceAll("").trim()).replaceAll("");
    }

    /* renamed from: b0 */
    public static boolean m24258b0() {
        boolean z = false;
        boolean z2 = false;
        try {
            if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CONTACTS") == 0) {
                Cursor query = EZCallApplication.m26146c().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, "starred = 1 ", null, null);
                z = false;
                if (query.getCount() > 0) {
                    z = true;
                }
                z2 = z;
                query.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = z2;
        }
        return z;
    }

    /* renamed from: c0 */
    public static boolean m24256c0(Context context) {
        boolean z = true;
        try {
            int simState = ((TelephonyManager) context.getSystemService("phone")).getSimState();
            if (simState == 0 || simState == 1) {
                z = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z;
    }

    /* renamed from: d0 */
    public static void m24254d0(Context context, String str) {
        C3955w.writeDf(context, str);
        if (C3718c0.f11914a) {
            C3718c0.m24436a("servertime", "read:" + C3955w.readDf(context));
        }
    }

    /* renamed from: e */
    public static boolean m24253e(Context context) {
        return false;
    }

    /* renamed from: e0 */
    public static boolean m24252e0(Context context) {
        boolean z = false;
        try {
            if ((context.getApplicationInfo().flags & 2) != 0) {
                z = true;
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: f */
    public static String m24251f(String str) {
        if (str == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: f0 */
    public static Boolean m24250f0(Context context) {
        String str = EZCallApplication.m26146c().f9914h;
        boolean z = false;
        if (str != null) {
            z = false;
            if (!"".equals(str)) {
                boolean z2 = true;
                switch (str.hashCode()) {
                    case 3121:
                        if (str.equals("ar")) {
                            z2 = false;
                            break;
                        }
                        break;
                    case 3259:
                        if (str.equals("fa")) {
                            z2 = true;
                            break;
                        }
                        break;
                    case 3374:
                        if (str.equals("iw")) {
                            z2 = true;
                            break;
                        }
                        break;
                    case 3741:
                        if (str.equals("ur")) {
                            z2 = true;
                            break;
                        }
                        break;
                }
                switch (z2) {
                    case false:
                    case true:
                    case true:
                    case true:
                        z = true;
                        break;
                    default:
                        z = false;
                        break;
                }
            }
        }
        return Boolean.valueOf(z);
    }

    /* renamed from: g */
    public static String m24249g(Context context, String str, String str2) {
        String str3 = "";
        if (str != null) {
            str3 = "";
            if (!"".equals(str)) {
                if (str.startsWith("+")) {
                    str3 = str.substring(1, str.length());
                } else if (str.startsWith("00")) {
                    str3 = str.substring(2, str.length());
                } else {
                    String m24084c = C3806p.m24084c(context, str2);
                    if (C3718c0.f11914a) {
                        C3718c0.m24436a("searchofflinedata", "TC:" + m24084c);
                    }
                    if (m24084c == null || "".equals(m24084c)) {
                        str3 = str2 + str;
                    } else if (str.startsWith(str2)) {
                        String substring = str.substring(str2.length(), str.length());
                        if (substring.startsWith(m24084c)) {
                            str3 = str2 + substring.substring(m24084c.length(), substring.length());
                        } else {
                            str3 = str2 + substring;
                        }
                    } else if (str.startsWith(m24084c)) {
                        str3 = str2 + str.substring(m24084c.length(), str.length());
                    } else {
                        str3 = str2 + str;
                    }
                }
            }
        }
        return str3;
    }

    /* renamed from: g0 */
    public static boolean m24248g0(Context context) {
        boolean z = true;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getITelephony", null);
            declaredMethod.setAccessible(true);
            ((ITelephony) declaredMethod.invoke(telephonyManager, null)).endCall();
        } catch (Exception e) {
            e.printStackTrace();
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "Exception:" + e.getLocalizedMessage());
            }
            z = false;
        }
        return z;
    }

    /* renamed from: h */
    public static void m24247h(Context context) {
        if (m24246h0(context)) {
            C3720d.m24428b(context);
            C3810q.m24071b().m24070c("checkPermission_show");
            C3711a1.m24577V1(System.currentTimeMillis() + 86400000);
        }
    }

    /* renamed from: h0 */
    private static boolean m24246h0(Context context) {
        return Build.VERSION.SDK_INT >= 23 && !Settings.canDrawOverlays(context) && System.currentTimeMillis() - C3711a1.m24503p0() > 0;
    }

    /* renamed from: i */
    public static boolean m24245i() {
        boolean z = true;
        if (!C3742g0.m24356a().equalsIgnoreCase("Xiaomi") && ((!C3742g0.m24356a().equalsIgnoreCase("samsung") || !m24230p0(EZCallApplication.m26146c())) && (Build.VERSION.SDK_INT >= 26 || !"HUAWEI".equalsIgnoreCase(C3742g0.m24356a())))) {
            z = false;
        }
        return z;
    }

    /* renamed from: i0 */
    public static boolean m24244i0(Context context) {
        return (context.getResources().getConfiguration().uiMode & 32) != 0;
    }

    /* renamed from: j */
    public static boolean m24243j() {
        boolean z = true;
        if (!C3742g0.m24356a().equalsIgnoreCase("Xiaomi") && (Build.VERSION.SDK_INT >= 26 || !"HUAWEI".equalsIgnoreCase(C3742g0.m24356a()))) {
            z = false;
        }
        return z;
    }

    /* renamed from: j0 */
    public static boolean m24242j0(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo("com.android.vending", 0);
        } catch (Exception e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    /* renamed from: k */
    public static boolean m24241k(String str) {
        boolean z;
        try {
            NumberContent m27009e = C2629e.m27010d().m27009e(str);
            z = false;
            if (m27009e != null) {
                z = false;
                if (System.currentTimeMillis() < m27009e.getSubtype_mark_time()) {
                    z = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: k0 */
    public static boolean m24240k0() {
        StringBuilder sb = new StringBuilder();
        sb.append("data/data/");
        sb.append(m24275M(EZCallApplication.m26146c()));
        sb.append("/databases/offlinedata.sqlite");
        return new File(sb.toString()).exists();
    }

    /* renamed from: l */
    public static void m24239l(File file) {
        try {
            if (!file.isDirectory()) {
                if (!file.exists()) {
                    return;
                }
                file.delete();
                return;
            }
            for (File file2 : file.listFiles()) {
                m24239l(file2);
            }
            file.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: l0 */
    public static boolean m24238l0(String str) {
        return Pattern.compile("[`~@#$%^&*()+=|{}''\\[\\]<>/?~@#￥%&*（）——+|{}【】？]").matcher(str).find();
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00ae -> B:30:0x00b2). Please submit an issue!!! */
    /* renamed from: m */
    public static void m24237m(Context context) {
        synchronized (C3767h1.class) {
            try {
                if (Build.VERSION.SDK_INT >= 28) {
                    TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
                    if (C0586a.m33353a(context, "android.permission.ANSWER_PHONE_CALLS") == 0) {
                        telecomManager.endCall();
                    }
                } else {
                    try {
                        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                        Method declaredMethod = TelephonyManager.class.getDeclaredMethod("getITelephony", null);
                        declaredMethod.setAccessible(true);
                        ((ITelephony) declaredMethod.invoke(telephonyManager, null)).endCall();
                    } catch (Exception e) {
                        e.printStackTrace();
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("tony", "Exception:" + e.getLocalizedMessage());
                        }
                        try {
                            C3810q.m24071b().m24068e("old_end_call_failed");
                            if (Build.VERSION.SDK_INT < 21 || !C3784b.m24142d(context)) {
                                C3810q.m24071b().m24068e("old_end_call_failed_no_per");
                            } else {
                                NLService.f11548d = true;
                            }
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: m0 */
    public static boolean m24236m0() {
        boolean z;
        try {
            z = "huawei".equals(Build.MANUFACTURER.toLowerCase(Locale.ENGLISH));
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: n */
    public static void m24235n(Context context) {
        MediaSessionManager mediaSessionManager;
        MediaController next;
        try {
            C3810q.m24071b().m24068e("new_end_call");
            if (Build.VERSION.SDK_INT < 21 || !C3784b.m24142d(context) || (mediaSessionManager = (MediaSessionManager) context.getSystemService("media_session")) == null) {
                return;
            }
            Iterator<MediaController> it = mediaSessionManager.getActiveSessions(new ComponentName(context, NLService.class)).iterator();
            do {
                if (!it.hasNext()) {
                    return;
                }
                next = it.next();
            } while (!"com.android.server.telecom".equals(next.getPackageName()));
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "挂断");
            }
            C3711a1.m24584T2(Boolean.TRUE);
            C3784b.m24140f(79, next);
        } catch (Exception e) {
            e.printStackTrace();
            C3810q.m24071b().m24068e("new_end_call_failed");
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("tony", "Exception:" + e.getMessage());
        }
    }

    /* renamed from: n0 */
    public static boolean m24234n0(Context context, String str) {
        boolean z;
        try {
            String installerPackageName = context.getPackageManager().getInstallerPackageName(str);
            z = false;
            if (!TextUtils.isEmpty(installerPackageName)) {
                z = false;
                if (installerPackageName.equals("com.android.vending")) {
                    z = true;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: o */
    public static String m24233o(String str) {
        String str2 = "";
        if (str != null) {
            str2 = str.replaceAll(" ", "").replaceAll("-", "").replaceAll("\\*", "").replaceAll("#", "").replaceAll("\\(", "").replaceAll("\\)", "");
        }
        return str2;
    }

    /* renamed from: o0 */
    public static boolean m24232o0(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    /* renamed from: p */
    public static Animation m24231p() {
        return AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_alpha_in);
    }

    /* renamed from: p0 */
    public static boolean m24230p0(Context context) {
        boolean z;
        int i;
        String str;
        String str2 = "";
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.samsung.android.sm", 0);
            str = packageInfo.versionName;
            str2 = str;
            i = packageInfo.versionCode;
            z = false;
            if (i != 0) {
                z = false;
                if (i < 1616601310) {
                    z = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
            i = 0;
            str = str2;
        }
        if (C3718c0.f11914a) {
            C3718c0.m24436a("selfstarting", "SMversion:" + str + " versionCode:" + i + " ishas:" + z);
        }
        return z;
    }

    /* renamed from: q */
    public static Animation m24229q() {
        return AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_spam_call);
    }

    /* renamed from: q0 */
    public static boolean m24228q0() {
        return "Lenovo".equalsIgnoreCase(Build.BRAND) && Build.VERSION.SDK_INT == 23;
    }

    /* renamed from: r */
    public static Animation m24227r() {
        return AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_showtip);
    }

    /* renamed from: r0 */
    private static boolean m24226r0(Context context) {
        boolean z;
        try {
            z = C5852a.m17753b(context).m17741b();
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: s */
    public static Animation m24225s() {
        return AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_overlay);
    }

    /* renamed from: s0 */
    public static boolean m24224s0(Context context) {
        NetworkInfo[] allNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getAllNetworkInfo();
        if (allNetworkInfo != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: t */
    public static Animation m24223t() {
        return AnimationUtils.loadAnimation(EZCallApplication.m26146c(), R$anim.animiation_text_up);
    }

    /* renamed from: t0 */
    public static boolean m24222t0(Context context, String str) {
        boolean z;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            z = false;
            if (activityManager != null) {
                z = false;
                for (ActivityManager.RunningServiceInfo runningServiceInfo : activityManager.getRunningServices(Integer.MAX_VALUE)) {
                    if (str.equals(runningServiceInfo.service.getClassName())) {
                        if (C3718c0.f11914a) {
                            C3718c0.m24436a("wjjj", "Service status:Running");
                        }
                        z = true;
                    }
                }
            }
        } catch (Exception | NoClassDefFoundError e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: u */
    public static int m24221u(String str) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        try {
            mediaPlayer.setDataSource(str);
            mediaPlayer.prepare();
        } catch (Exception e) {
            e.printStackTrace();
        }
        int duration = mediaPlayer.getDuration();
        mediaPlayer.release();
        return duration;
    }

    /* renamed from: u0 */
    public static boolean m24220u0() {
        return C3711a1.m24499q0() && System.currentTimeMillis() > C3711a1.m24495r0();
    }

    /* renamed from: v */
    public static boolean m24219v(Context context) {
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                z = !((PowerManager) context.getSystemService("power")).isIgnoringBatteryOptimizations(m24275M(context));
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: v0 */
    public static boolean m24218v0() {
        String str = Build.MODEL;
        return "Lenovo K5 Note".equalsIgnoreCase(str) || "Lenovo VIBE K6 Note".equalsIgnoreCase(str) || "Lenovo VIBE K6 Power".equalsIgnoreCase(str) || "Lenovo VIBE X3 Lite".equalsIgnoreCase(str) || "Vivo 1601".equalsIgnoreCase(str);
    }

    /* renamed from: w */
    public static String m24217w(Context context, String str) {
        Cursor cursor;
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (C0586a.m33353a(context, "android.permission.READ_CONTACTS") == 0) {
            ContentResolver contentResolver = context.getContentResolver();
            String[] strArr = {"_id", "display_name"};
            try {
                cursor = contentResolver.query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), strArr, null, null, null);
            } catch (Exception e) {
                e.printStackTrace();
                try {
                    cursor = contentResolver.query(Uri.withAppendedPath(Contacts.Phones.CONTENT_FILTER_URL, Uri.encode(str)), strArr, null, null, null);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    cursor = null;
                }
            }
            String str3 = null;
            if (cursor != null) {
                str3 = null;
                if (cursor.getCount() > 0) {
                    str3 = null;
                    if (cursor.moveToFirst()) {
                        str3 = cursor.getString(1);
                    }
                }
            }
            str2 = str3;
            if (cursor != null) {
                cursor.close();
                str2 = str3;
            }
        }
        return str2;
    }

    /* renamed from: w0 */
    public static boolean m24216w0(String str) {
        return "".equals(str) || "-1".equals(str) || "-2".equals(str) || "-3".equals(str) || "0".equals(str) || "1".equals(str) || "2".equals(str);
    }

    /* renamed from: x */
    public static int m24215x(Context context, String str) {
        int i = 0;
        if (C0586a.m33353a(EZCallApplication.m26146c(), "android.permission.READ_CALL_LOG") == 0) {
            Cursor query = context.getContentResolver().query(C3714b1.m24450h(), new String[]{"type"}, " type=? and new=? and number=?", new String[]{"3", "1", str}, "date desc");
            i = 0;
            if (query != null) {
                i = query.getCount();
                query.close();
            }
        }
        return i;
    }

    /* renamed from: x0 */
    public static boolean m24214x0() {
        return Build.MANUFACTURER.equalsIgnoreCase("vivo") && Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: y */
    public static Locale m24213y() {
        Locale locale = null;
        try {
            Locale locale2 = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            locale = locale2;
            if (locale2 == null) {
                locale = locale2;
                locale = new Locale(C3711a1.m24471x0());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return locale;
    }

    /* renamed from: y0 */
    public static void m24212y0(Context context, String str) {
        try {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "调系统Map");
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=" + str));
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("tony", "Exception:" + e.getMessage());
            }
            try {
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://www.google.cn/maps/place/" + str));
                intent2.setFlags(268435456);
                context.startActivity(intent2);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    /* renamed from: z */
    private static String m24211z(Context context) {
        String str;
        try {
            str = C5852a.m17753b(context).m17742a();
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: z0 */
    public static int m24210z0(Context context) {
        int i;
        Cursor query;
        if (C0586a.m33353a(context, "android.permission.READ_CALL_LOG") != 0 || (query = context.getContentResolver().query(C3714b1.m24450h(), new String[]{"type", ShortCut.NUMBER}, " type=? and new=?", new String[]{"3", "1"}, "date desc")) == null) {
            i = 0;
        } else {
            i = query.getCount();
            query.close();
        }
        return i;
    }
}
