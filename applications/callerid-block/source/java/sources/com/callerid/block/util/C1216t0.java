package com.callerid.block.util;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.LocaleList;
import android.provider.CallLog;
import android.provider.Contacts;
import android.provider.ContactsContract;
import android.provider.Settings;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.URLSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.C0265a;
import com.android.boom.C0683w;
import com.android.internal.telephony.ITelephony;
import com.callerid.block.R$string;
import com.callerid.block.bean.EZBlackList;
import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.p060x0.C1230a;
import com.google.android.gms.ads.p072u.C1504a;
import com.rey.material.app.Dialog;
import d.p.a.a;
import java.lang.reflect.Method;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
/* renamed from: com.callerid.block.util.t0 */
/* loaded from: classes-dex2jar.jar:com/callerid/block/util/t0.class */
public class C1216t0 {

    /* renamed from: a */
    public static boolean f5074a = false;

    /* renamed from: b */
    public static boolean f5075b;

    /* renamed from: c */
    public static boolean f5076c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callerid.block.util.t0$a */
    /* loaded from: classes-dex2jar.jar:com/callerid/block/util/t0$a.class */
    public static final class RunnableC1217a implements Runnable {

        /* renamed from: b */
        final /* synthetic */ Context f5077b;

        RunnableC1217a(Context context) {
            this.f5077b = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent = new Intent();
            intent.setAction("com.callerid.block.RELOAD_DATA_VEST");
            a.b(this.f5077b).d(intent);
        }
    }

    /* renamed from: A */
    public static String m9611A(Context context, String str) {
        String str2;
        try {
            str2 = C0683w.m11430s(context, String.valueOf((System.currentTimeMillis() / 1000) - C1199n0.m9754K(context)), str);
        } catch (Throwable th) {
            th.printStackTrace();
            str2 = "";
        }
        return str2;
    }

    /* renamed from: B */
    public static String m9610B(Context context) {
        String str;
        try {
            str = C0683w.m11430s(context, String.valueOf((System.currentTimeMillis() / 1000) - C1199n0.m9754K(context)), m9607E(context));
        } catch (Throwable th) {
            th.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: C */
    public static String m9609C() {
        return Build.VERSION.RELEASE;
    }

    /* renamed from: D */
    public static boolean m9608D(String str) {
        return str != null && !"".equals(str) && Integer.parseInt(m9605G(EZCallApplication.m10163c()).replaceAll("\\.", "")) < Integer.parseInt(str.replaceAll("\\.", ""));
    }

    /* renamed from: E */
    public static String m9607E(Context context) {
        String str;
        TelephonyManager telephonyManager;
        String str2;
        String uuid;
        try {
        } catch (Exception e) {
            if (C1227w.f5084a) {
                C1227w.m9527a("tony", "Exception:" + e.getMessage());
            }
            e.printStackTrace();
            str = "";
        }
        if (Build.VERSION.SDK_INT < 29) {
            str = "";
            if (C1230a.m9514b(context, "android.permission.READ_PHONE_STATE")) {
                String str3 = null;
                if (((TelephonyManager) context.getSystemService("phone")) != null) {
                    str3 = "" + telephonyManager.getDeviceId();
                    str2 = "" + telephonyManager.getSimSerialNumber();
                } else {
                    str2 = null;
                }
                String str4 = "" + Settings.Secure.getString(context.getContentResolver(), "android_id");
                str = "";
                if (str3 != null) {
                    uuid = new UUID(str4.hashCode(), str2.hashCode() | (str3.hashCode() << 32)).toString();
                }
            }
            return str;
        }
        String m9606F = m9606F();
        String m9563n = m9563n(context);
        String str5 = "" + Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (!"".equals(m9563n)) {
            str5 = m9563n;
        } else if ("".equals(str5)) {
            str5 = C1199n0.m9668s();
            if ("".equals(str5)) {
                str5 = UUID.randomUUID().toString();
                C1199n0.m9775C0(str5);
            }
        }
        uuid = m9606F + str5;
        str = C1229x.m9516b(uuid);
        return str;
    }

    /* renamed from: F */
    private static String m9606F() {
        return "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.DISPLAY.length() % 10) + (Build.HOST.length() % 10) + (Build.ID.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10) + (Build.TAGS.length() % 10) + (Build.TYPE.length() % 10) + (Build.USER.length() % 10);
    }

    /* renamed from: G */
    public static String m9605G(Context context) {
        String str;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            str = null;
        }
        return str;
    }

    /* renamed from: H */
    public static boolean m9604H(Context context, String str) {
        boolean z = false;
        boolean z2 = false;
        try {
            if (C1230a.m9514b(context, "android.permission.READ_CONTACTS")) {
                ContentResolver contentResolver = context.getContentResolver();
                z2 = false;
                String[] strArr = new String[2];
                strArr[0] = EZBlackList.f4115ID;
                strArr[1] = "display_name";
                Cursor cursor = null;
                try {
                    cursor = contentResolver.query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), strArr, null, null, null);
                } catch (Exception e) {
                    z2 = false;
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
        } catch (Exception e3) {
            e3.printStackTrace();
            z = z2;
        }
        return z;
    }

    /* renamed from: I */
    public static int m9603I(Context context, String str) {
        Cursor cursor = null;
        Cursor cursor2 = null;
        int i = 0;
        try {
            if (C1230a.m9514b(context, "android.permission.READ_CONTACTS")) {
                StringBuilder sb = new StringBuilder();
                sb.append("content://com.android.contacts/data/phones/filter/");
                sb.append(str);
                Cursor query = context.getContentResolver().query(Uri.parse(sb.toString()), null, null, null, null);
                i = 0;
                cursor = query;
                if (query != null) {
                    i = 0;
                    cursor = query;
                    if (query.getCount() > 0) {
                        query.moveToFirst();
                        cursor2 = query;
                        i = query.getInt(query.getColumnIndex("contact_id"));
                        cursor = query;
                    }
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

    /* JADX WARN: Removed duplicated region for block: B:20:0x0098  */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m9602J(android.content.Context r7, java.lang.String r8) {
        /*
            r0 = 0
            r9 = r0
            r0 = r7
            java.lang.String r1 = "android.permission.READ_CONTACTS"
            boolean r0 = com.callerid.block.util.p060x0.C1230a.m9514b(r0, r1)     // Catch: java.lang.Exception -> L87
            if (r0 == 0) goto L80
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L87
            r9 = r0
            r0 = r9
            r0.<init>()     // Catch: java.lang.Exception -> L87
            r0 = r9
            java.lang.String r1 = "content://com.android.contacts/data/phones/filter/"
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L87
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: java.lang.Exception -> L87
            r0 = r9
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Exception -> L87
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: java.lang.Exception -> L87
            r8 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Exception -> L87
            r1 = r8
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Exception -> L87
            r8 = r0
            r0 = r8
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L90
            r0 = r8
            r9 = r0
            r0 = r8
            int r0 = r0.getCount()     // Catch: java.lang.Exception -> L7c
            if (r0 <= 0) goto L90
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: java.lang.Exception -> L7c
            r0 = r8
            r1 = r8
            java.lang.String r2 = "contact_id"
            int r1 = r1.getColumnIndex(r2)     // Catch: java.lang.Exception -> L7c
            long r0 = r0.getLong(r1)     // Catch: java.lang.Exception -> L7c
            r10 = r0
            android.net.Uri r0 = android.provider.ContactsContract.Contacts.CONTENT_URI     // Catch: java.lang.Exception -> L7c
            r1 = r10
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch: java.lang.Exception -> L7c
            long r1 = r1.longValue()     // Catch: java.lang.Exception -> L7c
            android.net.Uri r0 = android.content.ContentUris.withAppendedId(r0, r1)     // Catch: java.lang.Exception -> L7c
            r9 = r0
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Exception -> L7c
            r1 = r9
            java.io.InputStream r0 = android.provider.ContactsContract.Contacts.openContactPhotoInputStream(r0, r1)     // Catch: java.lang.Exception -> L7c
            android.graphics.Bitmap r0 = android.graphics.BitmapFactory.decodeStream(r0)     // Catch: java.lang.Exception -> L7c
            r7 = r0
            goto L94
        L7c:
            r7 = move-exception
            goto L8a
        L80:
            r0 = 0
            r7 = r0
            r0 = r9
            r8 = r0
            goto L94
        L87:
            r7 = move-exception
            r0 = 0
            r8 = r0
        L8a:
            r0 = r7
            r0.printStackTrace()
            r0 = r8
            r9 = r0
        L90:
            r0 = 0
            r7 = r0
            r0 = r9
            r8 = r0
        L94:
            r0 = r8
            if (r0 == 0) goto L9e
            r0 = r8
            r0.close()
        L9e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callerid.block.util.C1216t0.m9602J(android.content.Context, java.lang.String):android.graphics.Bitmap");
    }

    /* renamed from: K */
    public static boolean m9601K() {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        try {
            if (C0265a.m13556a(EZCallApplication.m10163c(), "android.permission.READ_CONTACTS") == 0) {
                Cursor query = EZCallApplication.m10163c().getContentResolver().query(ContactsContract.Contacts.CONTENT_URI, null, "starred = 1 ", null, null);
                if (query.getCount() > 0) {
                    z2 = true;
                }
                z = z2;
                if (query != null) {
                    z3 = z2;
                    query.close();
                    z = z2;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = z3;
        }
        return z;
    }

    /* renamed from: L */
    public static boolean m9600L(Context context) {
        boolean z = true;
        try {
            if (C1230a.m9514b(context, "android.permission.READ_PHONE_STATE")) {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                int simState = telephonyManager != null ? telephonyManager.getSimState() : 0;
                z = (simState == 0 || simState == 1) ? false : true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            z = true;
        }
        return z;
    }

    /* renamed from: M */
    public static void m9599M(Context context, String str) {
        C0683w.writeDf(context, str);
    }

    /* renamed from: N */
    public static boolean m9598N(Context context) {
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

    /* renamed from: O */
    public static boolean m9597O(Context context, String str) {
        PackageInfo packageInfo;
        boolean z = false;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            packageInfo = null;
        }
        if (packageInfo != null) {
            z = true;
        }
        return z;
    }

    /* renamed from: P */
    public static Boolean m9596P(Context context) {
        String str = EZCallApplication.m10163c().f4578c;
        boolean z = false;
        if (str != null) {
            z = false;
            if (!"".equals(str)) {
                str.hashCode();
                boolean z2 = true;
                switch (str.hashCode()) {
                    case 3121:
                        if (str.equals("ar")) {
                            z2 = false;
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

    /* renamed from: Q */
    public static boolean m9595Q(Context context) {
        return (context.getResources().getConfiguration().uiMode & 32) != 0;
    }

    /* renamed from: R */
    public static boolean m9594R(Context context) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo("com.android.vending", 0);
        } catch (Exception e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    /* renamed from: S */
    public static boolean m9593S() {
        boolean z;
        try {
            z = "huawei".equals(Build.MANUFACTURER.toLowerCase(Locale.ENGLISH));
        } catch (Exception e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }

    /* renamed from: T */
    public static boolean m9592T(Context context, String str) {
        PackageInfo packageInfo;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(str, 0);
        } catch (Exception e) {
            e.printStackTrace();
            packageInfo = null;
        }
        return packageInfo != null;
    }

    /* renamed from: U */
    public static boolean m9591U() {
        return "Lenovo".equalsIgnoreCase(Build.BRAND) && Build.VERSION.SDK_INT == 23;
    }

    /* renamed from: V */
    public static boolean m9590V(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo[] networkInfoArr = new NetworkInfo[0];
            if (connectivityManager != null) {
                networkInfoArr = connectivityManager.getAllNetworkInfo();
            }
            if (networkInfoArr == null) {
                return false;
            }
            for (NetworkInfo networkInfo : networkInfoArr) {
                if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: W */
    public static boolean m9589W(String str) {
        String str2 = str;
        if (str.startsWith("+")) {
            str2 = str.substring(1, str.length());
        }
        return Pattern.compile("[0-9]*").matcher(str2).matches();
    }

    /* renamed from: X */
    public static boolean m9588X() {
        String str = Build.MODEL;
        return "Lenovo K5 Note".equalsIgnoreCase(str) || "Lenovo VIBE K6 Note".equalsIgnoreCase(str) || "Lenovo VIBE K6 Power".equalsIgnoreCase(str) || "Lenovo VIBE X3 Lite".equalsIgnoreCase(str) || "Vivo 1601".equalsIgnoreCase(str);
    }

    /* renamed from: Y */
    public static boolean m9587Y(String str) {
        return "".equals(str) || "-1".equals(str) || "-2".equals(str) || "-3".equals(str);
    }

    /* renamed from: Z */
    public static boolean m9586Z() {
        return Build.MANUFACTURER.equalsIgnoreCase("Xiaomi") && Build.VERSION.SDK_INT >= 28;
    }

    /* renamed from: a */
    public static boolean m9585a(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            NetworkInfo networkInfo = null;
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
            boolean z = false;
            if (networkInfo != null) {
                z = false;
                if (networkInfo.isAvailable()) {
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
    public static String m9584a0(Context context, String str) {
        String country_code = C1184j.m9826d(context).getCountry_code();
        String str2 = str;
        if (str != null) {
            str2 = str;
            if (!"".equals(str)) {
                str2 = str;
                if (str.startsWith("+" + country_code)) {
                    str2 = str.substring(country_code.length() + 1, str.length());
                }
            }
        }
        return str2;
    }

    /* renamed from: b */
    public static String m9583b(String str) {
        return Pattern.compile("[0-9]").matcher(Pattern.compile("[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？]").matcher(str).replaceAll("").trim()).replaceAll("");
    }

    /* renamed from: b0 */
    public static int m9582b0(Context context) {
        int i = 0;
        if (C1230a.m9514b(context, "android.permission.READ_CALL_LOG")) {
            Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"type"}, " type=? and new=?", new String[]{"3", "1"}, "date desc");
            i = 0;
            if (query != null) {
                i = query.getCount();
                query.close();
            }
        }
        return i;
    }

    /* renamed from: c */
    public static String m9581c(String str) {
        if (str == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: c0 */
    public static void m9580c0(Activity activity, int i) {
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

    /* renamed from: d */
    public static String m9579d(Context context, String str, String str2) {
        StringBuilder sb;
        StringBuilder sb2;
        int i;
        if (str == null || "".equals(str)) {
            str = "";
        } else {
            if (str.startsWith("+")) {
                i = 1;
            } else if (str.startsWith("00")) {
                i = 2;
            } else {
                String m9827c = C1184j.m9827c(context, str2);
                C1227w.m9527a("searchofflinedata", "TC:" + m9827c);
                if (m9827c == null || "".equals(m9827c)) {
                    if (!str.startsWith(str2)) {
                        sb = new StringBuilder();
                        sb.append(str2);
                        sb.append(str);
                        str = sb.toString();
                    }
                } else if (str.startsWith(str2)) {
                    str = str.substring(str2.length(), str.length());
                    if (str.startsWith(m9827c)) {
                        sb2 = new StringBuilder();
                        sb2.append(str2);
                        sb2.append(str.substring(m9827c.length(), str.length()));
                        str = sb2.toString();
                    } else {
                        sb = new StringBuilder();
                        sb.append(str2);
                        sb.append(str);
                        str = sb.toString();
                    }
                } else if (str.startsWith(m9827c)) {
                    sb2 = new StringBuilder();
                    sb2.append(str2);
                    sb2.append(str.substring(m9827c.length(), str.length()));
                    str = sb2.toString();
                } else {
                    sb = new StringBuilder();
                    sb.append(str2);
                    sb.append(str);
                    str = sb.toString();
                }
            }
            str = str.substring(i, str.length());
        }
        return str;
    }

    /* renamed from: d0 */
    public static void m9578d0(Activity activity, int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            activity.getWindow().addFlags(67108864);
            ((ViewGroup) activity.getWindow().getDecorView()).addView(m9577e(activity, i));
            ViewGroup viewGroup = (ViewGroup) ((ViewGroup) activity.findViewById(16908290)).getChildAt(0);
            viewGroup.setFitsSystemWindows(true);
            viewGroup.setClipToPadding(true);
        }
    }

    /* renamed from: e */
    private static View m9577e(Activity activity, int i) {
        int dimensionPixelSize = activity.getResources().getDimensionPixelSize(activity.getResources().getIdentifier("status_bar_height", "dimen", "android"));
        View view = new View(activity);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, dimensionPixelSize));
        view.setBackgroundColor(i);
        return view;
    }

    /* renamed from: e0 */
    public static void m9576e0(Dialog dialog, int i) {
        if (Build.VERSION.SDK_INT < 19 || dialog.getWindow() == null) {
            return;
        }
        dialog.getWindow().addFlags(67108864);
        ((ViewGroup) dialog.getWindow().getDecorView()).addView(m9575f(dialog, i));
        ViewGroup viewGroup = (ViewGroup) ((ViewGroup) dialog.findViewById(16908290)).getChildAt(0);
        viewGroup.setFitsSystemWindows(true);
        viewGroup.setClipToPadding(true);
    }

    /* renamed from: f */
    private static View m9575f(Dialog dialog, int i) {
        int dimensionPixelSize = EZCallApplication.m10163c().getResources().getDimensionPixelSize(EZCallApplication.m10163c().getResources().getIdentifier("status_bar_height", "dimen", "android"));
        View view = new View(dialog.getContext());
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, dimensionPixelSize));
        view.setBackgroundColor(i);
        return view;
    }

    /* renamed from: f0 */
    public static void m9574f0(Context context, String str) {
        try {
            Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage("com.android.vending");
            ComponentName componentName = new ComponentName("com.android.vending", "com.google.android.finsky.activities.LaunchUrlHandlerActivity");
            if (launchIntentForPackage == null) {
                return;
            }
            launchIntentForPackage.setComponent(componentName);
            launchIntentForPackage.setData(Uri.parse("market://details?id=" + str));
            launchIntentForPackage.setFlags(268435456);
            context.startActivity(launchIntentForPackage);
        } catch (Exception e) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + str));
            intent.setFlags(268435456);
            context.startActivity(intent);
        }
    }

    /* renamed from: g */
    public static int m9573g(Context context, int i) {
        return ((int) context.getResources().getDisplayMetrics().density) * i;
    }

    /* renamed from: g0 */
    public static void m9572g0(TextView textView) {
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

    /* renamed from: h */
    public static void m9571h(Context context) {
        synchronized (C1216t0.class) {
            try {
                try {
                    if (Build.VERSION.SDK_INT >= 28) {
                        TelecomManager telecomManager = (TelecomManager) context.getSystemService("telecom");
                        if (telecomManager != null && C0265a.m13556a(context, "android.permission.ANSWER_PHONE_CALLS") == 0) {
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
                            if (C1227w.f5084a) {
                                C1227w.m9527a("tony", "Exception:" + e.getLocalizedMessage());
                            }
                        }
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: h0 */
    public static void m9570h0(Context context) {
        new Handler().postDelayed(new RunnableC1217a(context), 1000L);
    }

    /* renamed from: i */
    public static String m9569i(String str) {
        String str2 = "";
        if (str != null) {
            str2 = str.replaceAll(" ", "").replaceAll("-", "").replaceAll("\\*", "").replaceAll("#", "").replaceAll("\\(", "").replaceAll("\\)", "");
        }
        return str2;
    }

    /* renamed from: i0 */
    public static void m9568i0(Context context, String str, String str2) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str + "&referrer=" + str2));
            if (!TextUtils.isEmpty("com.android.vending")) {
                intent.setPackage("com.android.vending");
            }
            intent.addFlags(268435456);
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: j */
    public static String m9567j(Context context, String str) {
        Cursor cursor;
        String str2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (C1230a.m9514b(context, "android.permission.READ_CONTACTS")) {
            ContentResolver contentResolver = context.getContentResolver();
            String[] strArr = {EZBlackList.f4115ID, "display_name"};
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

    /* renamed from: k */
    public static int m9566k(Context context, String str) {
        int i = 0;
        int i2 = 0;
        try {
            if (C1230a.m9514b(context, "android.permission.READ_CALL_LOG")) {
                Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"type"}, " type=? and new=? and number=?", new String[]{"3", "1", str}, "date desc");
                i2 = 0;
                if (query != null) {
                    i2 = query.getCount();
                    i = i2;
                    query.close();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            i2 = i;
        }
        return i2;
    }

    /* renamed from: l */
    public static String m9565l() {
        return new SimpleDateFormat("HH:mm:ss SSS").format(new Date(System.currentTimeMillis()));
    }

    /* renamed from: m */
    public static Locale m9564m() {
        Locale locale = null;
        try {
            Locale locale2 = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            locale = locale2;
            if (locale2 == null) {
                locale = locale2;
                locale = new Locale(EZCallApplication.m10163c().f4578c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return locale;
    }

    /* renamed from: n */
    private static String m9563n(Context context) {
        String str;
        try {
            str = C1504a.m8554b(context).m8543a();
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: o */
    public static String m9562o() {
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
        C1227w.m9527a("location", "ip:" + str);
        return str;
    }

    /* renamed from: p */
    public static boolean m9561p(Context context) {
        String m9665t = C1199n0.m9665t(context);
        return m9665t == null || m9665t.equals("") || !m9665t.equals(m9605G(context));
    }

    /* renamed from: q */
    public static boolean m9560q(Context context) {
        String m9665t = C1199n0.m9665t(context);
        return m9665t == null || m9665t.equals("");
    }

    /* renamed from: r */
    public static String m9559r(Context context, String str) {
        Resources resources;
        int i;
        String str2 = "";
        if (str != null) {
            str2 = "";
            if (!"".equals(str)) {
                str2 = context.getResources().getString(R$string.spam);
                str.hashCode();
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
                    case true:
                    case true:
                    case true:
                    case true:
                        str2 = context.getResources().getString(R$string.spam);
                        break;
                    case true:
                        resources = context.getResources();
                        i = 2131755412;
                        str2 = resources.getString(i);
                        break;
                    case true:
                        resources = context.getResources();
                        i = 2131755462;
                        str2 = resources.getString(i);
                        break;
                }
            }
        }
        return str2;
    }

    /* renamed from: s */
    public static String m9558s() {
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

    /* renamed from: t */
    public static String m9557t() {
        String str;
        try {
            Locale locale = Build.VERSION.SDK_INT >= 24 ? LocaleList.getDefault().get(0) : Locale.getDefault();
            str = "";
            if (locale != null) {
                str = locale.getLanguage();
            }
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        return str;
    }

    /* renamed from: u */
    public static String m9556u(Context context) {
        String str;
        TelephonyManager telephonyManager;
        try {
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (C1230a.m9514b(context, "android.permission.READ_PHONE_STATE") && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            str = telephonyManager.getLine1Number();
            return (str == null || "".equals(str)) ? "" : str;
        }
        str = "";
        if (str == null) {
            return "";
        }
    }

    /* renamed from: v */
    public static String m9555v(Context context) {
        StringBuilder sb;
        String str;
        String str2 = "";
        if (C1230a.m9514b(context, "android.permission.READ_CALL_LOG")) {
            ArrayList arrayList = new ArrayList();
            Cursor query = context.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"type", EZBlackList.NUMBER}, " type=? and new=?", new String[]{"3", "1"}, "date desc");
            String str3 = "";
            int i = 0;
            if (query != null) {
                query.moveToFirst();
                for (int i2 = 0; i2 < query.getCount(); i2++) {
                    query.moveToPosition(i2);
                    String string = query.getString(query.getColumnIndex(EZBlackList.NUMBER));
                    if (!arrayList.contains(string)) {
                        arrayList.add(string);
                    }
                }
                query.close();
                i = 0;
                str3 = "";
            }
            while (true) {
                str2 = str3;
                if (i >= arrayList.size()) {
                    break;
                }
                if (m9566k(context, (String) arrayList.get(i)) == 0 || m9566k(context, (String) arrayList.get(i)) <= 1) {
                    if (i == arrayList.size() - 1) {
                        sb = new StringBuilder();
                        sb.append(str3);
                        str = (String) arrayList.get(i);
                    } else {
                        sb = new StringBuilder();
                        sb.append(str3);
                        sb.append((String) arrayList.get(i));
                        str = ", ";
                    }
                } else if (i == arrayList.size() - 1) {
                    sb = new StringBuilder();
                    sb.append(str3);
                    sb.append((String) arrayList.get(i));
                    sb.append("(");
                    sb.append(m9566k(context, (String) arrayList.get(i)));
                    str = ")";
                } else {
                    sb = new StringBuilder();
                    sb.append(str3);
                    sb.append((String) arrayList.get(i));
                    sb.append("(");
                    sb.append(m9566k(context, (String) arrayList.get(i)));
                    str = "), ";
                }
                sb.append(str);
                str3 = sb.toString();
                i++;
            }
        }
        return str2;
    }

    /* renamed from: w */
    public static String m9554w(Context context, String str) {
        Resources resources;
        int i;
        String str2 = "";
        if (str != null) {
            str2 = "";
            if (!"".equals(str)) {
                str.hashCode();
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
                        resources = context.getResources();
                        i = 2131755287;
                        str2 = resources.getString(i);
                        break;
                    case true:
                        resources = context.getResources();
                        i = 2131755288;
                        str2 = resources.getString(i);
                        break;
                    case true:
                        resources = context.getResources();
                        i = 2131755210;
                        str2 = resources.getString(i);
                        break;
                    default:
                        str2 = "";
                        break;
                }
            }
        }
        return str2;
    }

    /* renamed from: x */
    public static String m9553x(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        return telephonyManager != null ? telephonyManager.getNetworkCountryIso().toUpperCase() : "";
    }

    /* renamed from: y */
    public static String m9552y(Context context) {
        return context.getPackageName();
    }

    /* renamed from: z */
    public static String m9551z() {
        return Build.MODEL;
    }
}
