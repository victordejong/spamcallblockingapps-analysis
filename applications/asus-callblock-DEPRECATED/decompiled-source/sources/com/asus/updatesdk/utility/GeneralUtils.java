package com.asus.updatesdk.utility;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.asus.updatesdk.BuildConfig;
import com.asus.updatesdk.R;
import com.asus.updatesdk.ZenUiFamily;
import com.asus.updatesdk.activity.ZenFamilyActivity;
import com.asus.updatesdk.analytic.CheckAppUpdateReceiver;
import com.asus.updatesdk.analytic.TrackerManager;
import com.asus.updatesdk.cdn.CdnUtils;
import com.asus.updatesdk.tagmanager.ContainerHolderSingleton;
import com.google.android.gms.internal.c;
import com.google.android.gms.tagmanager.a;
import com.google.android.gms.tagmanager.b;
import com.google.android.gms.tagmanager.dc;
import com.google.android.gms.tagmanager.dd;
import com.google.android.gms.tagmanager.e;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/utility/GeneralUtils.class */
public class GeneralUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Uri f3179a = Uri.parse("https://play.google.com/store/apps/dev?id=6704106470901776285");

    /* renamed from: b  reason: collision with root package name */
    private static final Uri f3180b = Uri.parse("content://com.asus.launcher.applockprovider/locked_apps");
    private static long c = 0;
    private static long d = 0;

    /* renamed from: com.asus.updatesdk.utility.GeneralUtils$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/asus/updatesdk/utility/GeneralUtils$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3181a = new int[TrackerManager.TrackerName.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x0024 -> B:11:0x0014). Please submit an issue!!! */
        static {
            try {
                f3181a[TrackerManager.TrackerName.TRACKER_ASUS_DEVICE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3181a[TrackerManager.TrackerName.TRACKER_NON_ASUS_DEVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public static Bitmap getAppIcon(Context context, String str) {
        Bitmap bitmap;
        try {
            bitmap = ((BitmapDrawable) context.getPackageManager().getApplicationIcon(str)).getBitmap();
        } catch (PackageManager.NameNotFoundException e) {
            bitmap = null;
        }
        return bitmap;
    }

    public static String getAppName(Context context, String str) {
        String str2;
        PackageManager packageManager = context.getPackageManager();
        try {
            str2 = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(str, 0));
        } catch (PackageManager.NameNotFoundException e) {
            str2 = null;
        }
        return str2;
    }

    public static long getCDNIudVersion() {
        return c;
    }

    public static long getCDNStringsVersion() {
        return d;
    }

    public static int getDeviceApiLevel() {
        return Build.VERSION.SDK_INT;
    }

    public static void getGtmValues(Context context) {
        String a2;
        b containerHolder = ContainerHolderSingleton.getContainerHolder();
        b bVar = containerHolder;
        if (containerHolder == null) {
            e a3 = e.a(context);
            final dd a4 = a3.f4402a.a(a3.f4403b, a3, "GTM-NQFFFJ", R.raw.ud_sdk_container_binary, a3.f);
            a4.j.a(new dd.b(a4, (byte) 0));
            a4.l.a(new dd.c(a4, (byte) 0));
            c.C0126c a5 = a4.j.a(a4.f);
            if (a5 != null) {
                a4.k = new dc(a4.h, a4.e, new a(a4.g, a4.h.c, a4.i, a5), a4.d);
            }
            a4.m = new dd.a() { // from class: com.google.android.gms.tagmanager.dd.1

                /* renamed from: a  reason: collision with root package name */
                final /* synthetic */ boolean f4377a = false;

                @Override // com.google.android.gms.tagmanager.dd.a
                public final boolean a(com.google.android.gms.tagmanager.a aVar) {
                    boolean z = true;
                    if (!this.f4377a) {
                        if (aVar.f4264b == 0) {
                            z = false;
                        }
                    } else if (aVar.f4264b + 43200000 < dd.this.n.a()) {
                        z = false;
                    }
                    return z;
                }
            };
            if (a4.a()) {
                a4.l.a(0L, BuildConfig.FLAVOR);
            } else {
                a4.j.b();
            }
            bVar = (b) a4.a(TimeUnit.MILLISECONDS);
            if (!bVar.b().a()) {
                Log.e("GeneralUtils", "failure loading container");
                return;
            } else {
                ContainerHolderSingleton.setContainerHolder(bVar);
                ContainerHolderSingleton.getContainerHolder().d();
            }
        }
        a c2 = bVar.c();
        try {
            if (c2 == null) {
                Log.e("GeneralUtils", "failure getting container");
                return;
            }
            Log.v("GeneralUtils", "get Data version : " + c2.a(CdnUtils.KEY_IUD_VERSION));
            if (context instanceof ZenFamilyActivity) {
                ((ZenFamilyActivity) context).setThemeColor(c2.a("theme_color"), c2.a("update_button_color"), c2.a("open_button_color"));
                ((ZenFamilyActivity) context).setPanelAutoPlayMillis(Long.parseLong(c2.a("auto_play_millis")));
            }
            c = Long.parseLong(c2.a(CdnUtils.KEY_IUD_VERSION));
            d = Long.parseLong(c2.a(CdnUtils.KEY_STRINGS_VERSION));
            TrackerManager.GA_TRACKER.setSampleRate(Double.parseDouble(c2.a("ga_sample_rate")));
            switch (AnonymousClass1.f3181a[TrackerManager.GA_TRACKER.ordinal()]) {
                case 1:
                    a2 = c2.a("asus_tracker_id");
                    break;
                case 2:
                    a2 = c2.a("non_asus_tracker_id");
                    break;
                default:
                    a2 = null;
                    break;
            }
            if (a2 != null && !a2.isEmpty()) {
                TrackerManager.GA_TRACKER.setTrackerId(a2);
            }
        } catch (NumberFormatException e) {
            Log.e("GeneralUtils", "NumberFormatException, use default polling time");
        }
    }

    public static boolean hasInternetPermisson(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        return packageManager.checkPermission("android.permission.INTERNET", packageName) == 0 && packageManager.checkPermission("android.permission.ACCESS_NETWORK_STATE", packageName) == 0;
    }

    public static boolean isActivityDestroyed(Activity activity) {
        return Build.VERSION.SDK_INT >= 17 && activity.isDestroyed();
    }

    /* JADX WARN: Finally extract failed */
    public static boolean isAppLocked(Context context, String str) {
        boolean z;
        Cursor query = context.getContentResolver().query(f3180b, new String[]{ContactDetailCallogActivity.EXTRA_NAME, "value"}, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    if (str.equals(query.getString(0)) && query.getInt(1) == 1) {
                        query.close();
                        z = true;
                        break;
                    }
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
            query.close();
        }
        z = false;
        return z;
    }

    public static boolean openAsusApp(Context context, String str) {
        Intent intent;
        boolean z;
        Intent intent2 = new Intent();
        PackageManager packageManager = context.getPackageManager();
        if (str.equals("com.asus.ime")) {
            intent2.setAction("com.asus.ime.action.THEME_STORE");
            intent2.setPackage("com.asus.ime");
            intent = intent2;
            if (packageManager.queryIntentActivities(intent2, 0).size() <= 0) {
                z = false;
            }
            context.startActivity(intent);
            z = true;
        } else {
            intent = packageManager.getLaunchIntentForPackage(str);
            if (intent == null || str.equals("com.asus.launcher")) {
                z = false;
            }
            context.startActivity(intent);
            z = true;
        }
        return z;
    }

    public static void openGooglePlayPage(Context context, String str, String str2, String str3) {
        String str4 = str3;
        if (str3 == null) {
            str4 = context.getPackageName();
        }
        String str5 = DeviceUtils.checkAsusDevice() ? "ASUS_" : "UTA_";
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str2 + "%26utm_campaign%3D" + str5 + str4));
        if (context.getPackageManager().queryIntentActivities(intent, 0).size() <= 0) {
            intent.setData(Uri.parse("https://play.google.com/store/apps/details?id=" + str));
        }
        context.startActivity(intent);
    }

    public static void openZenFamilyPage(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            if (packageManager.getPackageInfo("com.android.vending", 0).versionCode >= 80371000) {
                intent.setPackage("com.android.vending");
                intent.setData(f3179a);
            } else {
                intent.setData(Uri.parse("market://search?q=pub:\"ZenUI,+ASUS+Computer+Inc.\""));
            }
            if (packageManager.queryIntentActivities(intent, 0).size() <= 0) {
                intent.setPackage(null);
                intent.setData(f3179a);
            }
            context.startActivity(intent);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            intent.setData(f3179a);
            context.startActivity(intent);
        }
    }

    public static void setCDNIudVersion(long j) {
        c = j;
    }

    public static void setCDNStringsVersion(long j) {
        d = j;
    }

    public static void startCheckAppUpdateAlarm(Context context, String str) {
        Calendar instance = Calendar.getInstance();
        instance.add(12, 10);
        long appVersion = ZenUiFamily.getAppVersion(context, str);
        boolean z = -1 == appVersion;
        Intent intent = new Intent(context, CheckAppUpdateReceiver.class);
        intent.putExtra(CheckAppUpdateReceiver.KEY_PACKAGE_NAME, str);
        intent.putExtra(CheckAppUpdateReceiver.KEY_OLD_VERSION, appVersion);
        intent.putExtra(CheckAppUpdateReceiver.KEY_IS_CHECK_INSTALL, z);
        ((AlarmManager) context.getSystemService("alarm")).set(0, instance.getTimeInMillis(), PendingIntent.getBroadcast(context, (int) System.currentTimeMillis(), intent, 1073741824));
    }
}
