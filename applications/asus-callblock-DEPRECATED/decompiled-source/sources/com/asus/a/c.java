package com.asus.a;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.TaskStackBuilder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.SystemProperties;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.support.v4.app.x;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.ContactsApplication;
import com.android.contacts.activities.BlockAndTagNumberActivity;
import com.android.contacts.asuscallerid.AsusCallGuardTutorialActivity;
import com.android.contacts.asuscallerid.a;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.android.contacts.w;
import com.android.vcard.VCardConfig;
import com.asus.a.a;
import com.asus.callguardhelper.e;
import com.asus.callguardhelper.g;
import com.asus.contacts.interactions.EndCallTagEncourageActivity;
import com.asus.contacts.yellowpage.s;
import com.asus.updatesdk.BuildConfig;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/asus/a/c.class */
public class c {
    public static c d;
    public static b g;
    private static e i;
    private static String k;
    private static final String j = c.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    static boolean f2377a = false;

    /* renamed from: b  reason: collision with root package name */
    static boolean f2378b = false;
    public static String c = "service_offline";
    public static boolean e = false;
    public static boolean f = false;
    private static boolean l = false;
    private static boolean m = false;
    private static boolean n = false;
    private static long o = 0;
    public static int h = -1;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/asus/a/c$a.class */
    public final class a extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        Context f2380a;

        /* renamed from: b  reason: collision with root package name */
        String f2381b;

        a(Context context, String str) {
            Log.d(c.j, "in ActivateCallGuardTask");
            this.f2380a = context;
            this.f2381b = str;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private Boolean a() {
            char c = 0;
            try {
                String str = this.f2381b;
                switch (str.hashCode()) {
                    case -2006915299:
                        if (str.equals("service_online")) {
                            c = 3;
                            break;
                        }
                        c = 65535;
                        break;
                    case -652612921:
                        if (str.equals("service_temp_disable")) {
                            break;
                        }
                        c = 65535;
                        break;
                    case 118645079:
                        if (str.equals("service_terminate")) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1975645785:
                        if (str.equals("service_offline")) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 1:
                    case 2:
                        c.j(this.f2380a, false);
                        c.a(this.f2380a, false, false);
                        c.b(this.f2380a, false, false);
                        c.b(false);
                        break;
                    case 3:
                        c.j(this.f2380a, true);
                        c.a(this.f2380a, false);
                        break;
                }
            } catch (Exception e) {
                Log.d(c.j, "exception in ActivateCallGuardTask:" + e.toString());
            }
            return true;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
            String str = this.f2381b;
            char c = 65535;
            switch (str.hashCode()) {
                case -2006915299:
                    if (str.equals("service_online")) {
                        c = 1;
                        break;
                    }
                    break;
                case 2009304403:
                    if (str.equals("status_overdue")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    c.c(this.f2380a);
                    return;
                case 1:
                    s.a().a(this.f2380a, 1);
                    return;
                default:
                    return;
            }
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/a/c$b.class */
    public interface b {
        void a(Context context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.asus.a.c$c  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/asus/a/c$c.class */
    public final class AsyncTaskC0063c extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a  reason: collision with root package name */
        Context f2382a;

        public AsyncTaskC0063c(Context context) {
            Log.d(c.j, "in UploadCallGuardGAResultTask");
            this.f2382a = context;
        }

        private Boolean a() {
            try {
                c.n(this.f2382a);
            } catch (Exception e) {
                Log.d(c.j, "exception in GAResults:" + e.toString());
            }
            return true;
        }

        @Override // android.os.AsyncTask
        protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
            return a();
        }

        @Override // android.os.AsyncTask
        protected final /* bridge */ /* synthetic */ void onPostExecute(Boolean bool) {
            super.onPostExecute(bool);
        }

        @Override // android.os.AsyncTask
        protected final void onPreExecute() {
            super.onPreExecute();
        }
    }

    public static int a(Context context, boolean z, int i2, boolean z2) {
        String str = z ? "TOUCH_PAL_ENABLE" : "CALLGUARD_ENABLE";
        Log.d(j, "get AsusCallerID ONOFFdb() Switch on_off");
        if (PhoneCapabilityTester.IsSystemApp()) {
            try {
                if (z2) {
                    if (!l(context) && !z) {
                        b(context, false, z);
                    }
                    i2 = Settings.Global.getInt(context.getContentResolver(), str);
                } else {
                    i2 = Settings.Global.getInt(context.getContentResolver(), str, i2);
                }
            } catch (Settings.SettingNotFoundException e2) {
            }
            try {
                Log.d(j, "getCallGuardONOFFdb from setting:" + i2);
            } catch (Settings.SettingNotFoundException e3) {
                Log.d(j, "CALLGUARD_ENABLE DB not found , set default : on");
                if (z || l(context) || z) {
                    b(context, true, z);
                } else {
                    b(context, false, z);
                }
                return i2;
            }
        } else {
            SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
            if (z2) {
                if (sharedPreferences.getInt(str, -1) < 0) {
                    b(context, z, z);
                }
                i2 = sharedPreferences.getInt(str, i2);
            } else {
                i2 = sharedPreferences.getInt(str, i2);
            }
            Log.d(j, "getCallGuardONOFFdb from preference:" + i2);
        }
        return i2;
    }

    private static int a(String[] strArr, int i2) {
        int i3 = 0;
        while (i3 < strArr.length) {
            String[] split = strArr[i3].split("-");
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1].equals(BuildConfig.FLAVOR) ? "-1" : split[1]);
            if ((parseInt <= i2 && i2 <= parseInt2) || (parseInt <= i2 && parseInt2 == -1)) {
                break;
            }
            i3++;
        }
        return i3;
    }

    public static void a(Activity activity) {
        if (com.asus.a.a.h(activity) && !v(activity)) {
            if ((!w.b() || !"callguard_disable_notifier".equals(w.c())) && !PreferenceManager.getDefaultSharedPreferences(activity).getBoolean("do_not_ask", false)) {
                w.a().show(activity.getFragmentManager(), "callguard_disable_notifier");
            }
        }
    }

    public static void a(Context context, int i2) {
        com.asus.a.a.g(context, i2 == 1 ? "wifi" : "allNet");
        if (PhoneCapabilityTester.IsSystemApp()) {
            Log.d(j, "callguard_connection_type DB set setting: " + i2);
            Settings.Global.putInt(context.getContentResolver(), "callguard_connection_type", i2);
            return;
        }
        Log.d(j, "callguard_connection_type DB set pref: " + i2);
        context.getSharedPreferences(context.getPackageName(), 0).edit().putInt("callguard_connection_type", i2).apply();
    }

    public static void a(Context context, int i2, boolean z) {
        String str = z ? "TOUCH_PAL_DISPLAY_ALL" : "CALLGUARD_DISPLAY_ALL";
        if (PhoneCapabilityTester.IsSystemApp()) {
            Settings.Global.putInt(context.getContentResolver(), str, i2);
        } else {
            context.getSharedPreferences(context.getPackageName(), 0).edit().putInt(str, i2).apply();
        }
    }

    public static void a(Context context, DialogInterface.OnClickListener onClickListener) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(2131755559);
        builder.setItems(new String[]{context.getResources().getString(2131755560), context.getResources().getString(2131755561)}, onClickListener);
        builder.show();
    }

    public static void a(Context context, boolean z) {
        boolean z2;
        boolean z3;
        long currentTimeMillis = System.currentTimeMillis();
        com.asus.a.b.c(context);
        new a.d();
        boolean IsSystemApp = PhoneCapabilityTester.IsSystemApp();
        if (z) {
            try {
                a(context, false, true);
                if (IsSystemApp) {
                    Settings.Global.putInt(context.getContentResolver(), "isSupportSdk", 0);
                }
                z2 = true;
                z3 = true;
            } catch (Exception e2) {
                Log.d(j, e2.toString());
                z2 = true;
                z3 = true;
            }
        } else if (p(context)) {
            try {
                a(context, true, false);
                if (IsSystemApp) {
                    Settings.Global.putInt(context.getContentResolver(), "isSupportSdk", 0);
                }
                z2 = false;
                z3 = true;
            } catch (Exception e3) {
                Log.d(j, e3.toString());
                z2 = false;
                z3 = true;
            }
        } else {
            try {
                a(context, false, false);
                if (IsSystemApp) {
                    Settings.Global.putInt(context.getContentResolver(), "isSupportSdk", 0);
                }
                z2 = false;
                z3 = false;
            } catch (Exception e4) {
                Log.d(j, e4.toString());
                z2 = false;
                z3 = false;
            }
        }
        if (z3) {
            if (a(context, z2, 1, true) == 1 && !z2 && com.asus.a.a.d(context)) {
                d(context);
            }
            if (z2) {
                a(context, 0, z2);
                c(context, false, z2);
            }
            c(context, true);
        }
        Log.d(j, "initCallGuard complete, time:" + (System.currentTimeMillis() - currentTimeMillis));
    }

    public static void a(Context context, boolean z, boolean z2) {
        boolean z3 = false;
        a.d dVar = new a.d();
        if (z2) {
            dVar.f2357a = "touchpal";
            dVar.f2358b = "touchpal";
            dVar.c = BuildConfig.FLAVOR;
        } else {
            dVar.f2357a = "asus_callguard";
            dVar.f2358b = "com.asus.asuscallguard";
            dVar.c = "asus_callguard";
        }
        if (z) {
            if (!(dVar.f2358b == null || dVar.f2357a == null || dVar.c == null)) {
                try {
                    Bundle bundle = new Bundle();
                    bundle.putString("asus_engine_authority", dVar.f2358b);
                    bundle.putString("asus_engine_name", dVar.f2357a);
                    bundle.putString("asus_engine_path", dVar.c);
                    context.getContentResolver().call(a.AbstractC0061a.f2352a, "set_engine_info", (String) null, bundle);
                    Log.d(j, "set engineInfo: " + dVar.f2358b + ", " + dVar.f2357a + ", " + dVar.c);
                } catch (Exception e2) {
                    Log.d(j, "exception in setEngineInfo: " + e2.toString());
                }
            }
            if (!z2) {
                z3 = true;
            }
            m = z3;
            return;
        }
        m = false;
        try {
            context.getContentResolver().call(a.AbstractC0061a.f2352a, "delete_engine_info", (String) null, (Bundle) null);
        } catch (Exception e3) {
            Log.d(j, "failt to delete engineInfo due to: " + e3.toString());
        }
    }

    public static void a(b bVar) {
        g = bVar;
    }

    public static void a(boolean z) {
        n = z;
    }

    public static boolean a() {
        return n;
    }

    public static boolean a(Context context) {
        boolean z = true;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        if ((!defaultSharedPreferences.getBoolean("showAgain", true) && !defaultSharedPreferences.getBoolean("fistTimeActCallguard", true)) || !p(context) || !com.asus.a.a.e(context) || l(context)) {
            z = false;
        }
        if (z) {
            Intent intent = new Intent(context, AsusCallGuardTutorialActivity.class);
            intent.addFlags(VCardConfig.FLAG_APPEND_TYPE_PARAM);
            if (!(context instanceof Activity)) {
                intent.addFlags(VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
            }
            context.startActivity(intent);
        }
        g = null;
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0088  */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r7, java.lang.String r8) {
        /*
            r0 = r7
            android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: Exception -> 0x003c, all -> 0x007d
            android.net.Uri r1 = android.provider.ContactsContract.PhoneLookup.CONTENT_FILTER_URI     // Catch: Exception -> 0x003c, all -> 0x007d
            r2 = r8
            java.lang.String r2 = android.net.Uri.encode(r2)     // Catch: Exception -> 0x003c, all -> 0x007d
            android.net.Uri r1 = android.net.Uri.withAppendedPath(r1, r2)     // Catch: Exception -> 0x003c, all -> 0x007d
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)     // Catch: Exception -> 0x003c, all -> 0x007d
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00a3
            r0 = r8
            r7 = r0
            r0 = r8
            int r0 = r0.getCount()     // Catch: all -> 0x0091, Exception -> 0x0098
            r9 = r0
            r0 = r9
            if (r0 <= 0) goto L_0x00a3
            r0 = 1
            r10 = r0
        L_0x0029:
            r0 = r10
            r11 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0039
            r0 = r8
            r0.close()
            r0 = r10
            r11 = r0
        L_0x0039:
            r0 = r11
            return r0
        L_0x003c:
            r12 = move-exception
            r0 = 0
            r8 = r0
        L_0x0040:
            r0 = r8
            r7 = r0
            java.lang.String r0 = com.asus.a.c.j     // Catch: all -> 0x0091
            r13 = r0
            r0 = r8
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0091
            r14 = r0
            r0 = r8
            r7 = r0
            r0 = r14
            java.lang.String r1 = "Fail to query contacts db: "
            r0.<init>(r1)     // Catch: all -> 0x0091
            r0 = r8
            r7 = r0
            r0 = r13
            r1 = r14
            r2 = r12
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x0091
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch: all -> 0x0091
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x0091
            int r0 = android.util.Log.e(r0, r1)     // Catch: all -> 0x0091
            r0 = r8
            if (r0 == 0) goto L_0x009d
            r0 = r8
            r0.close()
            r0 = 0
            r11 = r0
            goto L_0x0039
        L_0x007d:
            r7 = move-exception
            r0 = 0
            r12 = r0
            r0 = r7
            r8 = r0
        L_0x0083:
            r0 = r12
            if (r0 == 0) goto L_0x008f
            r0 = r12
            r0.close()
        L_0x008f:
            r0 = r8
            throw r0
        L_0x0091:
            r8 = move-exception
            r0 = r7
            r12 = r0
            goto L_0x0083
        L_0x0098:
            r12 = move-exception
            goto L_0x0040
        L_0x009d:
            r0 = 0
            r11 = r0
            goto L_0x0039
        L_0x00a3:
            r0 = 0
            r10 = r0
            goto L_0x0029
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.c.a(android.content.Context, java.lang.String):boolean");
    }

    public static boolean a(Context context, String str, String str2) {
        return (context == null || context.getResources().getIdentifier(str, str2, context.getPackageName()) == 0) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0027, code lost:
        if (r3.contains("\"") != false) goto L_0x002a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(java.lang.String r3) {
        /*
            r0 = r3
            boolean r0 = android.telephony.PhoneNumberUtils.isUriNumber(r0)
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002c
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x002c
            r0 = r3
            java.lang.String r1 = "'"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L_0x002a
            r0 = r4
            r5 = r0
            r0 = r3
            java.lang.String r1 = "\""
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L_0x002c
        L_0x002a:
            r0 = 0
            r5 = r0
        L_0x002c:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.c.a(java.lang.String):boolean");
    }

    public static int b(Context context, boolean z) {
        int i2;
        String str = z ? "TOUCH_PAL_DISPLAY_ALL" : "CALLGUARD_DISPLAY_ALL";
        if (PhoneCapabilityTester.IsSystemApp()) {
            try {
                i2 = Settings.Global.getInt(context.getContentResolver(), str, 0);
            } catch (Settings.SettingNotFoundException e2) {
                Log.d(j, "CALLGUARD_DISPLAY_ALL DB not found , set default : 1");
                a(context, 1, z);
                i2 = 0;
            }
        } else {
            SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
            sharedPreferences.getInt(str, -1);
            i2 = sharedPreferences.getInt(str, 0);
        }
        return i2;
    }

    public static String b(String str) {
        String str2;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            str2 = (String) cls.getMethod("get", String.class).invoke(cls.newInstance(), str);
        } catch (Exception e2) {
            Log.d(j, "getSystemProperty " + e2.getMessage());
            str2 = null;
        }
        return str2;
    }

    public static void b(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("fistTimeActCallguard", false).putBoolean("showAgain", false).apply();
    }

    public static void b(Context context, int i2) {
        Log.d(j, "set AsusCallerID block mode: " + i2);
        if (PhoneCapabilityTester.IsSystemApp()) {
            Settings.Global.putInt(context.getContentResolver(), "ASUS_BLOCK_MODE", i2);
        } else {
            context.getSharedPreferences(context.getPackageName(), 0).edit().putInt("ASUS_BLOCK_MODE", i2).apply();
        }
    }

    public static void b(Context context, String str) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        boolean z = defaultSharedPreferences.getBoolean("isEncouraged", false);
        Log.d(j, "showEncourageActivity:" + z);
        if (!z) {
            Intent intent = new Intent(context, EndCallTagEncourageActivity.class);
            intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_TAGGED_RESULT, false);
            intent.putExtra(BlockAndTagNumberActivity.ASUS_CALLER_BLOCK_NUMBER, str);
            context.startActivity(intent);
            defaultSharedPreferences.edit().putBoolean("isEncouraged", true).commit();
        }
    }

    public static void b(Context context, boolean z, boolean z2) {
        int i2 = 1;
        String str = z2 ? "TOUCH_PAL_ENABLE" : "CALLGUARD_ENABLE";
        if (!PhoneCapabilityTester.IsSystemApp()) {
            SharedPreferences.Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
            if (!z) {
                i2 = 0;
            }
            edit.putInt(str, i2).apply();
        } else if (z) {
            Log.d(j, "set AsusCallerID ONOFFdb() Switch on");
            Settings.Global.putInt(context.getContentResolver(), str, 1);
        } else {
            Log.d(j, "set AsusCallerID ONOFFdb() Switch off");
            Settings.Global.putInt(context.getContentResolver(), str, 0);
        }
    }

    public static void b(boolean z) {
        m = z;
    }

    public static boolean b() {
        return m && !com.asus.contacts.a.a() && !v(ContactsApplication.b());
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x004d -> B:7:0x0016). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0050 -> B:7:0x0016). Please submit an issue!!! */
    public static int c(Context context, boolean z) {
        int i2;
        if (PhoneCapabilityTester.IsSystemApp()) {
            try {
                i2 = z ? Settings.Global.getInt(context.getContentResolver(), "callguard_connection_type") : Settings.Global.getInt(context.getContentResolver(), "callguard_connection_type", 0);
            } catch (Settings.SettingNotFoundException e2) {
                Log.d(j, "callguard_connection_type DB not found");
                i2 = -1;
                if (z) {
                    a(context, 0);
                    i2 = -1;
                }
            }
            Log.d(j, "getCallGuardOnlineTypedb: " + i2);
        } else {
            SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
            int i3 = sharedPreferences.getInt("callguard_connection_type", -1);
            if (z) {
                if (i3 < 0) {
                    a(context, 0);
                }
                i2 = sharedPreferences.getInt("callguard_connection_type", 0);
            } else {
                i2 = sharedPreferences.getInt("callguard_connection_type", 0);
            }
            Log.d(j, "getCallGuardOnlineTypedb from pref: " + i2);
        }
        return i2;
    }

    public static c c() {
        if (d == null) {
            d = new c();
        }
        return d;
    }

    public static String c(String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char charAt = str.charAt(i2);
            if ((i2 == 0 && charAt == '+') || PhoneNumberUtils.isISODigit(charAt) || charAt == '#' || charAt == '*' || charAt == ',') {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    public static void c(Context context) {
        if (!a(context, "notification_touchpal", "drawable")) {
            Log.d(j, "showUpdateNotification, resorce not found, return");
            return;
        }
        x.d b2 = new x.d(context).a(2131165905).a(context.getResources().getString(2131755343)).b(context.getResources().getString(2131755342));
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("market://details?id=com.asus.contacts"));
        TaskStackBuilder create = TaskStackBuilder.create(context);
        create.addNextIntent(intent);
        b2.d = create.getPendingIntent(0, VCardConfig.FLAG_REFRAIN_QP_TO_NAME_PROPERTIES);
        b2.a();
        ((NotificationManager) context.getSystemService("notification")).notify(2, b2.b());
    }

    private static void c(Context context, int i2) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putInt("callguard_expire_state", i2).apply();
        h = i2;
    }

    public static void c(Context context, String str) {
        Log.d(j, "confirmNumber:" + str);
        a.d i2 = com.asus.a.a.i(context);
        if (i2 != null && str != null && !"touchpal".equals(i2.f2357a) && !com.asus.a.a.b()) {
            try {
                String a2 = com.asus.a.a.a(str);
                if (!a2.isEmpty()) {
                    Log.d(j, "confirmNumber:insert" + a2);
                    context.getContentResolver().insert(Uri.withAppendedPath(a.b.f592a, a2), null);
                }
            } catch (Exception e2) {
                Log.e(j, "error in confirmNumber:" + e2.toString());
            }
        }
    }

    public static void c(Context context, boolean z, boolean z2) {
        int i2 = 1;
        String str = z2 ? "TOUCH_PAL_IS_ONLINE" : "CALLGUARD_IS_ONLINE";
        if (!PhoneCapabilityTester.IsSystemApp()) {
            SharedPreferences.Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
            if (!z) {
                i2 = 0;
            }
            edit.putInt(str, i2).apply();
        } else if (z) {
            Settings.Global.putInt(context.getContentResolver(), str, 1);
        } else {
            Settings.Global.putInt(context.getContentResolver(), str, 0);
        }
    }

    public static int d(Context context, boolean z) {
        int i2 = 0;
        if (!z) {
            i2 = 1;
        } else if (PhoneCapabilityTester.IsSystemApp()) {
            try {
                i2 = Settings.Global.getInt(context.getContentResolver(), "TOUCH_PAL_IS_ONLINE", 0);
            } catch (Settings.SettingNotFoundException e2) {
                Log.d(j, "CALLGUARD_IS_ONLINE DB not found , set default : true");
                c(context, true, z);
            }
        } else {
            SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
            sharedPreferences.getInt("TOUCH_PAL_IS_ONLINE", -1);
            i2 = sharedPreferences.getInt("TOUCH_PAL_IS_ONLINE", 0);
        }
        return i2;
    }

    public static e d(final Context context) {
        e eVar;
        synchronized (c.class) {
            try {
                if (com.asus.contacts.a.a()) {
                    if (PhoneCapabilityTester.isDebug()) {
                        Log.d(j, "<getCallGuardHelper> Is pre-load state: return");
                    }
                    eVar = null;
                } else {
                    if (i == null) {
                        boolean h2 = com.asus.a.a.h(context);
                        Log.d(j, "callGuardHelper == null, isSupport:" + h2);
                        m = h2;
                        i = new e(context, new e.a() { // from class: com.asus.a.c.1
                            @Override // com.asus.callguardhelper.e.a
                            public final void a(String str) {
                                Log.d(c.j, "onSyncVersionTaskCompleted:" + str);
                                c.c().d(context, str);
                                c.c = str;
                                if (c.g != null) {
                                    c.g.a(context);
                                }
                            }
                        });
                        f(context);
                    }
                    if (PhoneCapabilityTester.isDebug()) {
                        Log.d(j, "<getCallGuardHelper> version:1.1.8");
                    }
                    eVar = i;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context, String str) {
        new a(context, str).execute(new Void[0]);
    }

    public static boolean d() {
        return f2377a;
    }

    public static void e(Context context) {
        d(context).a();
        PreferenceManager.getDefaultSharedPreferences(context).edit().putLong("last_sync_version_date", 0L).commit();
    }

    public static void e(Context context, boolean z) {
        int i2 = 1;
        int i3 = 1;
        Log.d(j, "set AsusCallerID spam SMS: " + z);
        if (PhoneCapabilityTester.IsSystemApp()) {
            ContentResolver contentResolver = context.getContentResolver();
            if (!z) {
                i3 = 0;
            }
            Settings.Global.putInt(contentResolver, "SMS_BLOCK_SPAM_ON", i3);
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
        if (!z) {
            i2 = 0;
        }
        edit.putInt("SMS_BLOCK_SPAM_ON", i2).apply();
    }

    public static boolean e() {
        l = !TextUtils.isEmpty(k) && !k.equals(Locale.TAIWAN.getCountry()) && !k.equals("none");
        Log.d(j, "isTagEnable:" + l);
        return l;
    }

    public static void f(Context context) {
        boolean z = false;
        if (v(context)) {
            Log.d(j, "[setCountryCode] no need to sync because service is expired");
            return;
        }
        if (k == null) {
            g(context);
        }
        Log.d(j, "callGuardHelper setCountryCode:" + k);
        if ("none".equals(k)) {
            String string = PreferenceManager.getDefaultSharedPreferences(context).getString("callguard_iso", "none");
            if (!string.equals("none")) {
                k = string;
            }
        }
        try {
            if (i == null) {
                i = d(context);
            } else {
                e eVar = i;
                String str = k;
                if (TextUtils.isEmpty(str)) {
                    Log.d("CallGuardHelper", "Error Input");
                } else {
                    PreferenceManager.getDefaultSharedPreferences(eVar.f2562a).edit().putString("callguard_country_code", str).apply();
                    new g.a(eVar.f2562a, str, eVar).execute(new Void[0]);
                }
            }
            String str2 = j;
            StringBuilder append = new StringBuilder("set countryCode:").append(k).append("callGuardHelper==null?");
            if (i == null) {
                z = true;
            }
            Log.d(str2, append.append(z).toString());
        } catch (Exception e2) {
            Log.e(j, "fail to setCountryCode due to: " + e2.toString());
        }
    }

    public static void f(Context context, boolean z) {
        int i2 = 1;
        int i3 = 1;
        if (PhoneCapabilityTester.IsSystemApp()) {
            ContentResolver contentResolver = context.getContentResolver();
            if (!z) {
                i3 = 0;
            }
            Settings.Global.putInt(contentResolver, "BLOCK_CALL_NOTIFICATION_ENABLE", i3);
        } else {
            SharedPreferences.Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
            if (!z) {
                i2 = 0;
            }
            edit.putInt("BLOCK_CALL_NOTIFICATION_ENABLE", i2).apply();
        }
        Log.d(j, "setCallNotificationdb(): " + z);
    }

    public static String g(Context context) {
        String str;
        if ("2".equals(SystemProperties.get("debug.cdn_path", "0")) || "1".equals(SystemProperties.get("debug.cdn_path", "0"))) {
            k = Locale.TAIWAN.getCountry();
            Log.d(j, "getCountryISO for testing:" + Locale.TAIWAN.getCountry());
            str = k;
        } else {
            long currentTimeMillis = System.currentTimeMillis();
            String f2 = com.android.contacts.simcardmanage.b.f(context);
            if (f2.startsWith("466")) {
                k = Locale.TAIWAN.getCountry();
                Log.d(j, "getCountryISO:466");
            } else if (f2.startsWith("460")) {
                k = Locale.CHINA.getCountry();
                Log.d(j, "getCountryISO:460");
            } else {
                k = "none";
                Log.d(j, "getCountryISO:else");
            }
            long currentTimeMillis2 = System.currentTimeMillis();
            if (!k.equals("none")) {
                PreferenceManager.getDefaultSharedPreferences(context).edit().putString("callguard_iso", k).apply();
            }
            Log.d(j, "getCountryISO:" + k + ", time:" + (currentTimeMillis2 - currentTimeMillis));
            str = k;
        }
        return str;
    }

    public static void g(Context context, boolean z) {
        int i2 = 1;
        int i3 = 1;
        if (PhoneCapabilityTester.IsSystemApp()) {
            ContentResolver contentResolver = context.getContentResolver();
            if (!z) {
                i3 = 0;
            }
            Settings.Global.putInt(contentResolver, "BLOCK_SMS_NOTIFICATION_ENABLE", i3);
        } else {
            SharedPreferences.Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
            if (!z) {
                i2 = 0;
            }
            edit.putInt("BLOCK_SMS_NOTIFICATION_ENABLE", i2).apply();
        }
        Log.d(j, "setSmsNotificationdb(): " + z);
    }

    public static int h(Context context) {
        Log.d(j, "get AsusCallerID block mode");
        return PhoneCapabilityTester.IsSystemApp() ? Settings.Global.getInt(context.getContentResolver(), "ASUS_BLOCK_MODE", 0) : context.getSharedPreferences(context.getPackageName(), 0).getInt("ASUS_BLOCK_MODE", 0);
    }

    public static void h(Context context, boolean z) {
        int i2 = 1;
        int i3 = 1;
        if (PhoneCapabilityTester.IsSystemApp()) {
            ContentResolver contentResolver = context.getContentResolver();
            if (!z) {
                i3 = 0;
            }
            Settings.Global.putInt(contentResolver, "ASUS_PRIVATE_BLOCK_MODE", i3);
        } else {
            SharedPreferences.Editor edit = context.getSharedPreferences(context.getPackageName(), 0).edit();
            if (!z) {
                i2 = 0;
            }
            edit.putInt("ASUS_PRIVATE_BLOCK_MODE", i2).apply();
        }
        Log.d(j, "setPrivateBlockModedb() : " + z);
    }

    public static int i(Context context) {
        int i2 = PhoneCapabilityTester.IsSystemApp() ? Settings.Global.getInt(context.getContentResolver(), "BLOCK_CALL_NOTIFICATION_ENABLE", 0) : context.getSharedPreferences(context.getPackageName(), 0).getInt("BLOCK_CALL_NOTIFICATION_ENABLE", 0);
        Log.d(j, "getCallNotificationdb(): " + i2);
        return i2;
    }

    public static void i(Context context, boolean z) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("isCallguardActivated", z).apply();
        b(context, z, false);
        if (z) {
            Log.d(j, "callguard activated");
        }
    }

    public static int j(Context context) {
        int i2 = PhoneCapabilityTester.IsSystemApp() ? Settings.Global.getInt(context.getContentResolver(), "BLOCK_SMS_NOTIFICATION_ENABLE", 0) : context.getSharedPreferences(context.getPackageName(), 0).getInt("BLOCK_SMS_NOTIFICATION_ENABLE", 0);
        Log.d(j, "getSmsNotificationdb(): " + i2);
        return i2;
    }

    public static void j(Context context, boolean z) {
        context.getSharedPreferences(context.getPackageName(), 0).edit().putBoolean("isAsusEngineJarSupport", z).apply();
    }

    public static int k(Context context) {
        int i2 = PhoneCapabilityTester.IsSystemApp() ? Settings.Global.getInt(context.getContentResolver(), "ASUS_PRIVATE_BLOCK_MODE", 0) : context.getSharedPreferences(context.getPackageName(), 0).getInt("ASUS_PRIVATE_BLOCK_MODE", 0);
        Log.d(j, "getPrivateBlockModedb() : " + i2);
        return i2;
    }

    public static void k(Context context, boolean z) {
        Log.d(j, "setCallGuardFetureOn");
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        if (z) {
            sharedPreferences.edit().putBoolean("AsusCallGuard", true).commit();
        } else {
            sharedPreferences.edit().putBoolean("AsusCallGuard", false).commit();
        }
    }

    public static boolean l(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("isCallguardActivated", false);
    }

    public static SharedPreferences m(Context context) {
        return context != null ? context.getSharedPreferences("callguard_analytic", 0) : null;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0366  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x03a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void n(android.content.Context r9) {
        /*
            Method dump skipped, instructions count: 1103
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.c.n(android.content.Context):void");
    }

    public static boolean o(Context context) {
        r8 = true;
        boolean z = true;
        boolean z2 = true;
        if (context == null) {
            Log.d(j, "isInCallUISupport == false due to context is null");
            z2 = false;
        } else if (!CompatUtils.isMarshmallowCompatible()) {
            try {
                int i2 = context.getPackageManager().getPackageInfo("com.asus.asusincallui", 0).versionCode;
                if (PhoneCapabilityTester.isDebug()) {
                    Log.d(j, "InCallUI versionCode = " + i2);
                }
                if (i2 < 1510700011) {
                    z2 = false;
                }
            } catch (Exception e2) {
                Log.d(j, "Fail to get app version, Exception: " + e2.toString());
                z2 = false;
            }
        } else {
            try {
                List<ResolveInfo> queryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(new Intent("com.asus.asusincallui.callguard_supported"), 0);
                if (queryBroadcastReceivers == null) {
                    String str = j;
                    StringBuilder sb = new StringBuilder("appsInfo is null");
                    if (queryBroadcastReceivers != null) {
                        z = false;
                    }
                    Log.d(str, sb.append(z).toString());
                    z2 = false;
                } else if (queryBroadcastReceivers.size() <= 0 || !TelecomUtil.isDefaultDialer(context)) {
                    z2 = false;
                }
            } catch (Exception e3) {
                Log.d(j, "Fail to get appsInfo, Exception: " + e3.toString());
                z2 = false;
            }
        }
        return z2;
    }

    public static boolean p(Context context) {
        return context.getSharedPreferences(context.getPackageName(), 0).getBoolean("isAsusEngineJarSupport", false);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int q(android.content.Context r7) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.asus.a.c.q(android.content.Context):int");
    }

    public static boolean r(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(context.getPackageName(), 0);
        Log.d(j, "getCallGuardFetureOn:" + sharedPreferences.getBoolean("AsusCallGuard", false));
        return sharedPreferences.getBoolean("AsusCallGuard", false);
    }

    public static void s(Context context) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://dlcdnamaxcontacts.asus.com/Rel/App/AsusContacts/" + g(context) + "/tos.htm"));
        try {
            context.startActivity(intent);
        } catch (Exception e2) {
            Log.e(j, "fail to showPrivacyPolicy due to:" + e2.toString());
        }
    }

    public static boolean t(Context context) {
        return PreferenceManager.getDefaultSharedPreferences(context).getBoolean("need_to_ask_end_call_block", true);
    }

    public static void u(Context context) {
        PreferenceManager.getDefaultSharedPreferences(context).edit().putBoolean("need_to_ask_end_call_block", false).apply();
    }

    private static boolean v(Context context) {
        boolean z = false;
        long currentTimeMillis = System.currentTimeMillis();
        if (o == 0) {
            Calendar instance = Calendar.getInstance();
            instance.set(2017, 11, 1, 0, 0);
            o = instance.getTimeInMillis();
        }
        if (currentTimeMillis > o || w(context) == 1) {
            Log.d(j, "[ExpiredChecker] Service is expired");
            if (w(context) == 0 || m) {
                Log.d(j, "[ExpiredChecker] update db due to expired service");
                c().d(context, "service_terminate");
            }
            c(context, 1);
            z = true;
        } else {
            Log.d(j, "[ExpiredChecker] Service is not expired");
            c(context, 0);
        }
        return z;
    }

    private static int w(Context context) {
        if (h == -1) {
            h = PreferenceManager.getDefaultSharedPreferences(context).getInt("callguard_expire_state", -1);
        }
        return h;
    }
}
