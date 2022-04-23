package com.klinker.android.send_message;

import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.os.Build;
import android.preference.PreferenceManager;
import android.provider.Telephony;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.callerid.block.bean.EZBlackList;
import com.google.android.mms.e.f;
import e.d.a.a.a;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.klinker.android.send_message.j */
/* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/j.class */
public class C2717j {

    /* renamed from: a */
    private static final Pattern f11334a = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");

    /* renamed from: b */
    private static final Pattern f11335b = Pattern.compile("\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*");

    /* renamed from: com.klinker.android.send_message.j$a */
    /* loaded from: classes2-dex2jar.jar:com/klinker/android/send_message/j$a.class */
    public interface AbstractC2718a<T> {
        T run();
    }

    /* renamed from: a */
    public static void m2037a(Context context, String str, String str2) {
        String str3;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (str2 == null || str2.trim().length() == 0) {
            try {
                InetAddress byName = InetAddress.getByName(Uri.parse(str).getHost());
                try {
                    if (!((Boolean) ConnectivityManager.class.getMethod("requestRouteToHostAddress", Integer.TYPE, InetAddress.class).invoke(connectivityManager, 2, byName)).booleanValue()) {
                        throw new IOException("Cannot establish route to proxy " + byName);
                    }
                    return;
                } catch (Exception e) {
                    e = e;
                    str3 = "Cannot establishh route to proxy " + byName + " for " + str;
                }
            } catch (UnknownHostException e2) {
                throw new IOException("Cannot establish route for " + str + ": Unknown host");
            }
        } else {
            try {
                InetAddress byName2 = InetAddress.getByName(str2);
                try {
                    if (!((Boolean) ConnectivityManager.class.getMethod("requestRouteToHostAddress", Integer.TYPE, InetAddress.class).invoke(connectivityManager, 2, byName2)).booleanValue()) {
                        throw new IOException("Cannot establish route to proxy " + byName2);
                    }
                    return;
                } catch (Exception e3) {
                    e = e3;
                    str3 = "Cannot establishh route to proxy " + byName2;
                }
            } catch (UnknownHostException e4) {
                throw new IOException("Cannot establish route for " + str + ": Unknown proxy " + str2);
            }
        }
        a.c("Utils", str3, e);
    }

    /* renamed from: b */
    public static <T> T m2036b(Context context, String str, String str2, AbstractC2718a<T> aVar) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return (T) m2034d(context, aVar);
        }
        if (i >= 21) {
            return (T) m2035c(context, aVar);
        }
        m2037a(context, str, str2);
        return aVar.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0060  */
    @android.annotation.TargetApi(21)
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T> T m2035c(android.content.Context r5, com.klinker.android.send_message.C2717j.AbstractC2718a<T> r6) {
        /*
            e.a.b.e.g r0 = new e.a.b.e.g
            r1 = r0
            r2 = r5
            android.content.Context r2 = r2.getApplicationContext()
            int r3 = m2031g()
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r7
            android.net.Network r0 = r0.d()     // Catch: all -> 0x003f, MmsNetworkException -> 0x0045
            r8 = r0
            r0 = r8
            r5 = r0
            r0 = r8
            boolean r0 = android.net.ConnectivityManager.setProcessDefaultNetwork(r0)     // Catch: all -> 0x0033, MmsNetworkException -> 0x0037
            r0 = r8
            r5 = r0
            r0 = r6
            java.lang.Object r0 = r0.run()     // Catch: all -> 0x0033, MmsNetworkException -> 0x0037
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L_0x002d
            r0 = 0
            boolean r0 = android.net.ConnectivityManager.setProcessDefaultNetwork(r0)
        L_0x002d:
            r0 = r7
            r0.j()
            r0 = r6
            return r0
        L_0x0033:
            r6 = move-exception
            goto L_0x005c
        L_0x0037:
            r5 = move-exception
            r0 = r8
            r6 = r0
            r0 = r5
            r8 = r0
            goto L_0x0048
        L_0x003f:
            r6 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x005c
        L_0x0045:
            r8 = move-exception
            r0 = 0
            r6 = r0
        L_0x0048:
            r0 = r6
            r5 = r0
            java.io.IOException r0 = new java.io.IOException     // Catch: all -> 0x0033
            r9 = r0
            r0 = r6
            r5 = r0
            r0 = r9
            r1 = r8
            r0.<init>(r1)     // Catch: all -> 0x0033
            r0 = r6
            r5 = r0
            r0 = r9
            throw r0     // Catch: all -> 0x0033
        L_0x005c:
            r0 = r5
            if (r0 == 0) goto L_0x0065
            r0 = 0
            boolean r0 = android.net.ConnectivityManager.setProcessDefaultNetwork(r0)
        L_0x0065:
            r0 = r7
            r0.j()
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.C2717j.m2035c(android.content.Context, com.klinker.android.send_message.j$a):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0075  */
    @android.annotation.TargetApi(23)
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static <T> T m2034d(android.content.Context r5, com.klinker.android.send_message.C2717j.AbstractC2718a<T> r6) {
        /*
            e.a.b.e.g r0 = new e.a.b.e.g
            r1 = r0
            r2 = r5
            android.content.Context r2 = r2.getApplicationContext()
            int r3 = m2031g()
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r5
            java.lang.String r1 = "connectivity"
            java.lang.Object r0 = r0.getSystemService(r1)
            android.net.ConnectivityManager r0 = (android.net.ConnectivityManager) r0
            r8 = r0
            r0 = r7
            android.net.Network r0 = r0.d()     // Catch: all -> 0x0052, MmsNetworkException -> 0x0058
            r9 = r0
            r0 = r9
            r5 = r0
            r0 = r8
            r1 = r9
            boolean r0 = r0.bindProcessToNetwork(r1)     // Catch: all -> 0x0044, MmsNetworkException -> 0x0048
            r0 = r9
            r5 = r0
            r0 = r6
            java.lang.Object r0 = r0.run()     // Catch: all -> 0x0044, MmsNetworkException -> 0x0048
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L_0x003e
            r0 = r8
            r1 = 0
            boolean r0 = r0.bindProcessToNetwork(r1)
        L_0x003e:
            r0 = r7
            r0.j()
            r0 = r6
            return r0
        L_0x0044:
            r6 = move-exception
            goto L_0x0071
        L_0x0048:
            r5 = move-exception
            r0 = r9
            r6 = r0
            r0 = r5
            r9 = r0
            goto L_0x005c
        L_0x0052:
            r6 = move-exception
            r0 = 0
            r5 = r0
            goto L_0x0071
        L_0x0058:
            r9 = move-exception
            r0 = 0
            r6 = r0
        L_0x005c:
            r0 = r6
            r5 = r0
            java.io.IOException r0 = new java.io.IOException     // Catch: all -> 0x0044
            r10 = r0
            r0 = r6
            r5 = r0
            r0 = r10
            r1 = r9
            r0.<init>(r1)     // Catch: all -> 0x0044
            r0 = r6
            r5 = r0
            r0 = r10
            throw r0     // Catch: all -> 0x0044
        L_0x0071:
            r0 = r5
            if (r0 == 0) goto L_0x007b
            r0 = r8
            r1 = 0
            boolean r0 = r0.bindProcessToNetwork(r1)
        L_0x007b:
            r0 = r7
            r0.j()
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.klinker.android.send_message.C2717j.m2034d(android.content.Context, com.klinker.android.send_message.j$a):java.lang.Object");
    }

    /* renamed from: e */
    private static String m2033e(String str) {
        Matcher matcher = f11335b.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(2);
        }
        return str;
    }

    /* renamed from: f */
    public static C2709f m2032f(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        C2709f fVar = new C2709f();
        fVar.m2064u(defaultSharedPreferences.getString("mmsc_url", ""));
        fVar.m2062w(defaultSharedPreferences.getString("mms_proxy", ""));
        fVar.m2063v(defaultSharedPreferences.getString("mms_port", ""));
        fVar.m2067r(defaultSharedPreferences.getString("mms_agent", ""));
        fVar.m2085F(defaultSharedPreferences.getString("mms_user_agent_profile_url", ""));
        fVar.m2087D(defaultSharedPreferences.getString("mms_user_agent_tag_name", ""));
        fVar.m2065t(defaultSharedPreferences.getBoolean("group_message", true));
        fVar.m2066s(defaultSharedPreferences.getBoolean("delivery_reports", false));
        fVar.m2090A(defaultSharedPreferences.getBoolean("split_sms", false));
        fVar.m2089B(defaultSharedPreferences.getBoolean("split_counter", false));
        fVar.m2088C(defaultSharedPreferences.getBoolean("strip_unicode", false));
        fVar.m2059z(defaultSharedPreferences.getString("signature", ""));
        fVar.m2061x(true);
        fVar.m2060y(3);
        return fVar;
    }

    /* renamed from: g */
    public static int m2031g() {
        if (Build.VERSION.SDK_INT >= 22) {
            return SmsManager.getDefaultSmsSubscriptionId();
        }
        return 1;
    }

    /* renamed from: h */
    public static String m2030h(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getLine1Number();
    }

    /* renamed from: i */
    public static int m2029i(C2709f fVar, String str) {
        String str2 = str;
        if (fVar.m2072m()) {
            str2 = C2711h.m2056a(str);
        }
        return SmsMessage.calculateLength(str2, false)[0];
    }

    /* renamed from: j */
    public static long m2028j(Context context, String str) {
        HashSet hashSet = new HashSet();
        hashSet.add(str);
        return m2027k(context, hashSet);
    }

    /* renamed from: k */
    public static long m2027k(Context context, Set<String> set) {
        Uri.Builder buildUpon = Uri.parse("content://mms-sms/threadID").buildUpon();
        for (String str : set) {
            String str2 = str;
            if (m2022p(str)) {
                str2 = m2033e(str);
            }
            buildUpon.appendQueryParameter("recipient", str2);
        }
        Cursor e = f.e(context, context.getContentResolver(), buildUpon.build(), new String[]{EZBlackList.f4115ID}, (String) null, (String[]) null, (String) null);
        if (e != null) {
            try {
                if (e.moveToFirst()) {
                    long j = e.getLong(0);
                    e.close();
                    return j;
                }
            } finally {
                e.close();
            }
        }
        return new Random().nextLong();
    }

    /* renamed from: l */
    public static boolean m2026l() {
        return Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: m */
    public static boolean m2025m(TelephonyManager telephonyManager) {
        try {
            return ((Boolean) telephonyManager.getClass().getMethod("getDataEnabled", new Class[0]).invoke(telephonyManager, new Object[0])).booleanValue();
        } catch (Exception e) {
            a.c("Utils", "exception thrown", e);
            return true;
        }
    }

    /* renamed from: n */
    public static boolean m2024n(TelephonyManager telephonyManager, int i) {
        try {
            return ((Boolean) telephonyManager.getClass().getMethod("getDataEnabled", Integer.TYPE).invoke(telephonyManager, Integer.valueOf(i))).booleanValue();
        } catch (Exception e) {
            a.c("Utils", "exception thrown", e);
            return m2025m(telephonyManager);
        }
    }

    /* renamed from: o */
    public static boolean m2023o(Context context) {
        if (m2026l()) {
            return context.getPackageName().equals(Telephony.Sms.getDefaultSmsPackage(context));
        }
        return true;
    }

    /* renamed from: p */
    private static boolean m2022p(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return f11334a.matcher(m2033e(str)).matches();
    }

    /* renamed from: q */
    public static boolean m2021q(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("mms_over_wifi", false);
    }

    /* renamed from: r */
    public static Boolean m2020r(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        try {
            Method declaredMethod = Class.forName(connectivityManager.getClass().getName()).getDeclaredMethod("getMobileDataEnabled", new Class[0]);
            declaredMethod.setAccessible(true);
            return (Boolean) declaredMethod.invoke(connectivityManager, new Object[0]);
        } catch (Exception e) {
            a.c("Utils", "exception thrown", e);
            return null;
        }
    }

    /* renamed from: s */
    public static void m2019s(Context context, boolean z) {
        String str;
        if (Build.VERSION.SDK_INT < 21) {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                Field declaredField = Class.forName(connectivityManager.getClass().getName()).getDeclaredField("mService");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(connectivityManager);
                Method declaredMethod = Class.forName(obj.getClass().getName()).getDeclaredMethod("setMobileDataEnabled", Boolean.TYPE);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(obj, Boolean.valueOf(z));
                return;
            } catch (Exception e) {
                e = e;
                str = "exception thrown";
            }
        } else {
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                Method declaredMethod2 = Class.forName(telephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
                declaredMethod2.setAccessible(true);
                Object invoke = declaredMethod2.invoke(telephonyManager, new Object[0]);
                Method declaredMethod3 = Class.forName(invoke.getClass().getName()).getDeclaredMethod("setDataEnabled", Boolean.TYPE);
                declaredMethod3.setAccessible(true);
                declaredMethod3.invoke(invoke, Boolean.valueOf(z));
                return;
            } catch (Exception e2) {
                e = e2;
                str = "error enabling data on lollipop";
            }
        }
        a.c("Utils", str, e);
    }
}
