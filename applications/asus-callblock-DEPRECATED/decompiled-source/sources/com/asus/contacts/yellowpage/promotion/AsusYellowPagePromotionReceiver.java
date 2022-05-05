package com.asus.contacts.yellowpage.promotion;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/promotion/AsusYellowPagePromotionReceiver.class */
public class AsusYellowPagePromotionReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2851a = a.f2852a;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null) {
            Log.e(f2851a, "<onReceive> Context is null");
        } else if (intent == null) {
            Log.e(f2851a, "<onReceive> Intent is null");
        } else {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action)) {
                Log.e(f2851a, "<onReceive> Action is null or empty");
                return;
            }
            Log.d(f2851a, "<onReceive> Action = " + action);
            if ("android.intent.action.YP_DAILY_PROMOTE_LUNCH".equals(action)) {
                long currentTimeMillis = System.currentTimeMillis();
                Calendar instance = Calendar.getInstance();
                int i = instance.get(11);
                Date date = null;
                try {
                    date = new SimpleDateFormat("HH:mm").parse(i + ":" + instance.get(12));
                } catch (ParseException e) {
                    Log.e(f2851a, "<onReceive> Fail to parse date " + e.toString());
                }
                new d();
                if (d.a(context)) {
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                    long j = defaultSharedPreferences.getLong("key_yellow_page_promote_lunch_last_time", Long.MIN_VALUE);
                    int i2 = defaultSharedPreferences.getInt("key_yellow_page_promote_lunch_next_interval", d.b()[0]);
                    if (j != Long.MIN_VALUE && (j == Long.MIN_VALUE || currentTimeMillis - j <= i2 * 60 * 1000)) {
                        Log.d(f2851a, "<onReceive> Do nothing.");
                    } else if (a.a(d.a(), date)) {
                        int a2 = a.a(d.b(), i2);
                        defaultSharedPreferences.edit().putLong("key_yellow_page_promote_lunch_last_time", currentTimeMillis).apply();
                        defaultSharedPreferences.edit().putInt("key_yellow_page_promote_lunch_next_interval", a2).apply();
                        Log.d(f2851a, "<onReceive> Set next notification after " + a2 + " mins");
                        String b2 = d.b(context);
                        Log.d(f2851a, "<onReceive> Current temperature is " + b2);
                        if (TextUtils.isEmpty(b2)) {
                            a.a(context, 0);
                        } else if (Float.valueOf(b2).floatValue() < 15.0f) {
                            a.a(context, 1);
                        } else if (Float.valueOf(b2).floatValue() > 25.0f) {
                            a.a(context, 2);
                        } else {
                            a.a(context, 0);
                        }
                    } else {
                        Log.d(f2851a, "<onReceive> Do nothing.");
                    }
                }
            } else if ("android.intent.action.YP_DAILY_PROMOTE_COFFEEBREAK".equals(action)) {
                long currentTimeMillis2 = System.currentTimeMillis();
                Calendar instance2 = Calendar.getInstance();
                int i3 = instance2.get(11);
                Date date2 = null;
                try {
                    date2 = new SimpleDateFormat("HH:mm").parse(i3 + ":" + instance2.get(12));
                } catch (ParseException e2) {
                    Log.e(f2851a, "<onReceive> Fail to parse date " + e2.toString());
                }
                new b();
                if (b.a(context)) {
                    SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(context);
                    long j2 = defaultSharedPreferences2.getLong("key_yellow_page_promote_coffeebreak_last_time", Long.MIN_VALUE);
                    int i4 = defaultSharedPreferences2.getInt("key_yellow_page_promote_coffeebreak_next_interval", b.b()[0]);
                    if (j2 != Long.MIN_VALUE && (j2 == Long.MIN_VALUE || currentTimeMillis2 - j2 <= i4 * 60 * 1000)) {
                        Log.d(f2851a, "<onReceive> Do nothing.");
                    } else if (a.a(b.a(), date2)) {
                        int a3 = a.a(b.b(), i4);
                        defaultSharedPreferences2.edit().putLong("key_yellow_page_promote_coffeebreak_last_time", currentTimeMillis2).apply();
                        defaultSharedPreferences2.edit().putInt("key_yellow_page_promote_coffeebreak_next_interval", a3).apply();
                        Log.d(f2851a, "<onReceive> Set next notification after " + a3 + " mins");
                        SharedPreferences defaultSharedPreferences3 = PreferenceManager.getDefaultSharedPreferences(context);
                        int i5 = defaultSharedPreferences3.getInt("key_yellow_page_promote_coffeebreak_content_index", 0) == 0 ? 1 : 0;
                        defaultSharedPreferences3.edit().putInt("key_yellow_page_promote_coffeebreak_content_index", i5).apply();
                        switch (i5) {
                            case 0:
                                a.a(context, 3);
                                return;
                            case 1:
                                a.a(context, 4);
                                return;
                            default:
                                Log.e(f2851a, "<onReceive> Content index not supported");
                                return;
                        }
                    } else {
                        Log.d(f2851a, "<onReceive> Do nothing.");
                    }
                }
            } else if ("android.intent.action.YP_FESTIVAL_PROMOTE_VALENTINES".equals(action)) {
                int intExtra = intent.getIntExtra("EXTA_INDEX", -1);
                Log.d(f2851a, "<onReceive> EXTA_INDEX = " + intExtra);
                new e();
                SharedPreferences defaultSharedPreferences4 = PreferenceManager.getDefaultSharedPreferences(context);
                int i6 = defaultSharedPreferences4.getInt("key_yellow_page_location_index", -1);
                if (!e.a(context) || !e.a(i6)) {
                    Log.d(f2851a, "<onReceive> Do nothing.");
                    return;
                }
                switch (intExtra) {
                    case 0:
                        if (defaultSharedPreferences4.getInt("key_yellow_page_promote_valentines_0", 0) == 0) {
                            a.a(context, 5, String.valueOf(intExtra));
                            defaultSharedPreferences4.edit().putInt("key_yellow_page_promote_valentines_0", 1).apply();
                            return;
                        }
                        Log.d(f2851a, "<onReceive> Already shown.");
                        return;
                    case 1:
                        if (defaultSharedPreferences4.getInt("key_yellow_page_promote_valentines_1", 0) == 0) {
                            a.a(context, 5, String.valueOf(intExtra));
                            defaultSharedPreferences4.edit().putInt("key_yellow_page_promote_valentines_1", 1).apply();
                            return;
                        }
                        Log.d(f2851a, "<onReceive> Already shown.");
                        return;
                    case 2:
                        if (defaultSharedPreferences4.getInt("key_yellow_page_promote_valentines_2", 0) == 0) {
                            a.a(context, 5, String.valueOf(intExtra));
                            defaultSharedPreferences4.edit().putInt("key_yellow_page_promote_valentines_2", 1).apply();
                            return;
                        }
                        Log.d(f2851a, "<onReceive> Already shown.");
                        return;
                    case 3:
                        if (defaultSharedPreferences4.getInt("key_yellow_page_promote_valentines_3", 0) == 0) {
                            a.a(context, 5, String.valueOf(intExtra));
                            defaultSharedPreferences4.edit().putInt("key_yellow_page_promote_valentines_3", 1).apply();
                            return;
                        }
                        Log.d(f2851a, "<onReceive> Already shown.");
                        return;
                    default:
                        Log.d(f2851a, "<onReceive> Index not supported");
                        return;
                }
            }
        }
    }
}
