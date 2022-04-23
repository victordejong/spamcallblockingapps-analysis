package com.asus.contacts.yellowpage.promotion;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.contacts.util.PhoneCapabilityTester;
import com.asus.contacts.weather.a;
import com.asus.updatesdk.BuildConfig;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/promotion/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2854a = a.f2852a;

    public static boolean a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        return defaultSharedPreferences.getString("key_yellow_page_cdn_promotion_status", "0").equalsIgnoreCase("1") && defaultSharedPreferences.getString("key_yellow_page_cdn_promotion_daily_lunch", "0").equalsIgnoreCase("1");
    }

    public static Date[] a() {
        Date date;
        ParseException e;
        Date date2 = null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm");
        try {
            try {
                if (a.a()) {
                    date = simpleDateFormat.parse("8:00");
                    date2 = simpleDateFormat.parse("14:00");
                } else {
                    date = simpleDateFormat.parse("10:00");
                    date2 = simpleDateFormat.parse("12:00");
                }
            } catch (ParseException e2) {
                e = e2;
                e.printStackTrace();
                return new Date[]{date, date2};
            }
        } catch (ParseException e3) {
            e = e3;
            date = null;
        }
        return new Date[]{date, date2};
    }

    public static String b(Context context) {
        String str;
        a.b bVar;
        if (PhoneCapabilityTester.IsAsusDevice()) {
            Log.d(f2854a, "getCurrentRealFeelTemp: Asus device");
            ArrayList<a.b> a2 = a.a(context);
            if (!(a2 == null || a2.size() <= 0 || a2.get(0) == null || (bVar = a2.get(0)) == null)) {
                Log.d(f2854a, "getCurrentRealFeelTemp: Real feel temp=" + bVar.i + ", observation time = " + bVar.k + ", lastupdate time = " + bVar.l);
                if (System.currentTimeMillis() - Long.valueOf(bVar.l).longValue() < 10800000) {
                    str = bVar.i;
                } else {
                    Log.d(f2854a, "getCurrentRealFeelTemp: Weather info expired.");
                }
            }
            str = BuildConfig.FLAVOR;
        } else {
            Log.d(f2854a, "getCurrentRealFeelTemp: non Asus device");
            str = BuildConfig.FLAVOR;
        }
        String str2 = str;
        if (a.a()) {
            String b2 = a.b();
            str2 = str;
            if (!TextUtils.isEmpty(b2)) {
                Log.d(f2854a, "getCurrentRealFeelTemp: Set real feel temp=" + b2);
                str2 = b2;
            }
        }
        return str2;
    }

    public static int[] b() {
        return a.a() ? new int[]{1, 2, 3, 4} : new int[]{2880, 4320, 5760, 7200, 8640, 43200};
    }

    public static int[] c() {
        return a.a() ? new int[]{8, 0} : new int[]{10, 0};
    }

    public static long d() {
        return a.a() ? 60000L : 86400000L;
    }
}
