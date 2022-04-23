package com.asus.contacts.yellowpage.promotion;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Random;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/promotion/e.class */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2855a = e.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f2856b = {3, 4, 5, 6, 9, 15, 16};
    private static ArrayList<Calendar> c;

    public static ArrayList<Calendar> a() {
        if (c == null) {
            c = new ArrayList<>();
            Calendar instance = Calendar.getInstance();
            instance.setTimeInMillis(System.currentTimeMillis());
            instance.set(2, 1);
            instance.set(5, 4);
            instance.set(11, 14);
            c.add(instance);
            Calendar instance2 = Calendar.getInstance();
            instance2.setTimeInMillis(System.currentTimeMillis());
            instance2.set(2, 1);
            instance2.set(5, 7);
            instance2.set(11, 14);
            c.add(instance2);
            Calendar instance3 = Calendar.getInstance();
            instance3.setTimeInMillis(System.currentTimeMillis());
            instance3.set(2, 1);
            instance3.set(5, 11);
            instance3.set(11, 14);
            c.add(instance3);
            Calendar instance4 = Calendar.getInstance();
            instance4.setTimeInMillis(System.currentTimeMillis());
            instance4.set(2, 1);
            instance4.set(5, 13);
            instance4.set(11, 14);
            c.add(instance4);
        }
        return c;
    }

    public static boolean a(int i) {
        boolean z = false;
        for (int i2 = 0; i2 < f2856b.length; i2++) {
            if (f2856b[i2] == i) {
                z = true;
            }
        }
        Log.d(f2855a, "ValentinesPromotion isCityValid() = " + z);
        return z;
    }

    public static boolean a(Context context) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        return defaultSharedPreferences.getString("key_yellow_page_cdn_promotion_status", "0").equalsIgnoreCase("1") && defaultSharedPreferences.getString("key_yellow_page_cdn_promotion_valentines", "0").equalsIgnoreCase("1");
    }

    public static int b() {
        int i = 0;
        if (a.a()) {
            String c2 = a.c();
            if (!TextUtils.isEmpty(c2)) {
                try {
                    i = Integer.parseInt(c2);
                } catch (Exception e) {
                    Log.e(f2855a, "getRandomNumber Error: " + e.toString());
                }
            }
        } else {
            i = new Random().nextInt(6);
        }
        Log.d(f2855a, "ValentinesPromotion getRandomNumber() = " + i);
        return i;
    }
}
